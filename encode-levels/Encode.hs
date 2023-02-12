module Encode where

import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import Data.List (elemIndex, nub, permutations, sortOn, sort, tails)
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
createDiffTrie maxLength diffs@(_:rest) = T.insert diffByteString () (createDiffTrie maxLength rest)
  where
    diffByteString = diffsToByteString $ take maxLength diffs

tryEncode :: Int -> [Char] -> Set Int -> [Char] -> ((Int, [Char], [Char]), [Int])
tryEncode n encodingChars validSet charsToEncode = ((n, encodingChars, map toEnum encoding), missingNums)
  where
    encoding = encodeInChunksOf n encodingChars charsToEncode
    -- uniqueCodes = nub . sort $ encoding
    -- diffByteString = diffsToByteString (diffs uniqueCodes)
    missingNums = filter (not . isPrint . toEnum) encoding

findEncoding :: Int -> Set Int -> [Char] -> [((Int, [Char], [Char]), [Int])]
findEncoding n validChars chars
  = take 10 . sortOn (length . snd) $ map (\ecs -> tryEncode n ecs validChars chars) (permutations encodingChars)
  -- where
    -- sortedCharList = sort charList
    -- diffTrie = createDiffTrie (length chars - 1) (diffs sortedCharList)

printEncoding :: ((Int, [Char], [Char]), [Int]) -> IO ()
printEncoding ((_n, encodingChars, encoded), missingNums) = do
  putStr "Encoding set: "
  print encodingChars
  putStr "Encoded message length: "
  print (length encoded)
  putStr "Encoded message: "
  putStrLn encoded
  putStr "Missing nums: "
  print missingNums

main :: IO ()
main = do
  nStr:file:_ <- getArgs
  let n = read nStr
  chars <- readFile file
  validChars <- readCharacterList "ghc-unicode-chars.txt"
  mapM_ printEncoding $ findEncoding n validChars chars
