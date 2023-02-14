module Encode where

import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import Data.List (elemIndex, nub, permutations, sortOn, sort, tails, maximumBy)
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as S
import Data.Trie (Trie)
import qualified Data.Trie as T

import System.Environment (getArgs)

import GHC.Unicode (isPrint)

import Debug.Trace (trace)

encodingChars :: [Char]
encodingChars = "λ_.o+# \n"

encodeChar :: [Char] -> Char -> Maybe Int
encodeChar encodingChars c = elemIndex c encodingChars

decodeChar :: [Char] -> Int -> Maybe Char
decodeChar encodingChars c
  | c >= 0, c < 8 = Just $ encodingChars !! c
  | otherwise = Nothing

fromBase8 :: [Int] -> Int
fromBase8 = sum . zipWith convert [0..]
  where
    convert exp digit = digit * 8^exp

chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = chunk : chunksOf n rest
  where
    (chunk, rest) = splitAt n xs

encodeInChunksOf :: Int -> [Char] -> [Char] -> [Int]
encodeInChunksOf n encodingChars = map fromBase8 . chunksOf n . map encode
  where
    encode = fromJust . encodeChar encodingChars

readCharacterList :: String -> IO (Set Int)
readCharacterList filename = S.fromList . map read . lines <$> readFile filename

printableUnicodes :: [Char]
printableUnicodes = [c | c <- toEnum <$> [1..2^20], isPrint c]

firstJust :: [Maybe a] -> Maybe a
firstJust [] = Nothing
firstJust (Just a:_) = Just a
firstJust (Nothing:rest) = firstJust rest

-- pairwiseDiffs :: [Int] -> [Int]
-- pairwiseDiffs (x:y:rest) = y - x : pairwiseDiffs (y:rest)
-- pairwiseDiffs _ = []
--
-- subsequencesOf :: Int -> [a] -> [[a]]
-- subsequencesOf n xs = map (take n) $ tails xs
--
-- lengthAtLeast :: Int -> [Int] -> Bool
-- lengthAtLeast n []
--   | n <= 0    = True
--   | otherwise = False
-- lengthAtLeast n (_:xs) = lengthAtLeast (n-1) xs
--
-- tryFindDiff :: Int -> [Int] -> [Int] -> Maybe Int
-- tryFindDiff _ [] _ = Nothing
-- tryFindDiff _ _ [] = Nothing
-- tryFindDiff encodedCharsLength encodedChars sortedCharList
--   | not $ lengthAtLeast encodedCharsLength sortedCharList = Nothing
--   | all (==firstDiff) diffs = Just firstDiff
--   | otherwise = tryFindDiff encodedCharsLength encodedChars (tail sortedCharList)
--   where
--     firstDiff = head diffs
--     diffs = zipWith (-) sortedCharList encodedChars

compressToRange :: [Int] -> [(Int, Int)]
compressToRange []  = []
compressToRange (x:rest) = go x x rest
  where
    go start prev [] = [(start, prev)]
    go start prev (curr:rest)
      | curr - prev == 1 = go start curr rest
      | otherwise        = (start, prev) : compressToRange (curr:rest)

diffs :: [Int] -> [Int]
diffs [] = []
diffs [_] = []
diffs xs@(_:xs') = zipWith (-) xs' xs

intToByteString :: Int -> ByteString
intToByteString i
  | i >= 2^24 = error $ "intToByteString: unsupported size " <> show i
  | otherwise = B.pack [fromIntegral lo, fromIntegral mid, fromIntegral hi]
  where
    (intermediate, lo) = i `divMod` (2^8)
    (hi, mid) = intermediate `divMod` (2^8)

diffsToByteString :: [Int] -> ByteString
diffsToByteString = foldMap intToByteString

createDiffTrie :: Int -> [Int] -> Trie ()
createDiffTrie maxLength [] = T.empty
createDiffTrie maxLength diffs@(_:rest) = go diffs T.empty
  where
    go [] dt = dt
    go diffs@(_:rest) dt = go rest (T.insert (diffsToByteString $ take maxLength diffs) () dt)

tryEncodeDiffTree :: Int -> [Char] -> Trie () -> [Char] -> Maybe (Int, [Char], [Char], Int)
tryEncodeDiffTree n encodingChars diffTrie charsToEncode =
  if isValid
     then do
       (k, newEncoding) <- findNaiveOffset encoding
       Just (n, encodingChars, newEncoding, k)
     else
       Nothing
  where
    encoding = encodeInChunksOf n encodingChars charsToEncode
    uniqueCodes = S.toList . S.fromList $ encoding
    diffByteString = diffsToByteString (diffs uniqueCodes)
    isValid = not . T.null $ T.submap diffByteString diffTrie

findNaiveOffset :: [Int] -> Maybe (Int, [Char])
findNaiveOffset codes@(_:_)
  = firstJust [Just (k, newEncoding)| k<-[-minC..2^20]
                , let newEncoding = [toEnum $ code + k | code<-codes]
                , all isPrint newEncoding]
    where
      minC = minimum codes
findNaiveOffset [] = Nothing

-- findNaiveOffset :: [Int] -> (Int, Int, [Char])
-- findNaiveOffset codes@(_:_)
--   = maximumBy (\(x, _, _) (y, _, _) -> compare x y) [(numMissing, k, newEncoding)| k<-[-minC..(2^20) - maxC]
--                 , let newEncoding = [toEnum $ code + k | code<-codes]
--                 , let numMissing = length . filter isPrint $ newEncoding]
--     where
--       minC = minimum codes
--       maxC = maximum codes

findEncodingDiffTree :: Int -> [Char] -> Maybe (Int, [Char], [Char], Int)
findEncodingDiffTree n chars
  = firstJust $ map (\ecs -> tryEncodeDiffTree n ecs diffTrie chars) (permutations encodingChars)
  where
    diffTrie = createDiffTrie (1 + (length chars `div` n)) (diffs $ map fromEnum printableUnicodes)

tryEncodeNaive :: Int -> [Char] -> [Char] -> ((Int, [Char], [Char]), [Int])
tryEncodeNaive n encodingChars charsToEncode = ((n, encodingChars, map toEnum encoding), missingNums)
  where
    encoding = encodeInChunksOf n encodingChars charsToEncode
    missingNums = filter (not . isPrint . toEnum) encoding

data OutputType
  = NoMissing
  | First Int
  deriving (Eq, Show)

findEncodingNaive :: Int -> [Char] -> OutputType -> [((Int, [Char], [Char]), [Int])]
findEncodingNaive n chars outputType
  = selector outputType . sortOn (length . snd) $ map (\ecs -> tryEncodeNaive n ecs chars) (permutations encodingChars)
  where
    selector NoMissing = takeWhile (\(_, missing) -> null missing)
    selector (First n) = take n

printEncodingNaive :: ((Int, [Char], [Char]), [Int]) -> IO ()
printEncodingNaive ((_n, encodingChars, encoded), missingNums) = do
  putStr "Encoding set: "
  print encodingChars
  putStr "Encoded message length: "
  print (length encoded)
  putStr "Encoded message: "
  putStrLn encoded
  putStr "Missing nums: "
  print missingNums

printEncodingDiffTree :: Maybe (Int, [Char], [Char], Int) -> IO ()
printEncodingDiffTree Nothing = putStrLn "No encoding found"
printEncodingDiffTree (Just (_n, encodingChars, encoded, k)) = do
  putStr "Encoding set: "
  print encodingChars
  putStr "Offset: "
  print k
  putStr "Encoded message length: "
  print (length encoded)
  putStr "Encoded message: "
  putStrLn encoded

main :: IO ()
main = do
  nStr:file:_ <- getArgs
  let n = read nStr
  chars <- readFile file
  -- validChars <- readCharacterList "ghc-unicode-chars.txt"
  printEncodingDiffTree $ findEncodingDiffTree n chars
