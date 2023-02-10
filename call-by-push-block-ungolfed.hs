module Sokoban where

-- This is the basic ungolfed version, although I ended up making significant
-- changes to the golfed version so the two have diverged quite a bit.

import Data.List (transpose)

sokobanGame :: [[Char]]
sokobanGame = lines "@..._\n..o..\n..o..\n_...."

main :: IO ()
main = gameLoop sokobanGame

gameLoop :: [[Char]] -> IO ()
gameLoop sokoban = do
  mapM_ putStrLn sokoban
  if all ('o' `notElem`) sokoban
    then putStrLn "Winner!"
    else do
        playerInput <- getChar
        let index = playerInputToIndex playerInput
        let modifySokoban = [map reverse, id, transpose.reverse, transpose, undefined] !! index
        let undoSokoban = if index == 2 then reverse.transpose else modifySokoban
        let newSokoban = if index == 4 then sokoban else undoSokoban $ map doMove (modifySokoban sokoban)
        gameLoop newSokoban

playerInputToIndex :: Char -> Int
playerInputToIndex c = case c of
  'a' -> 0
  'd' -> 1
  'w' -> 2
  's' -> 3
  _ -> 4

doMove :: [Char] -> [Char]
doMove ('@':'o':c:rest) = '.':'@':(if c /= '_' then 'o' else c):doMove rest
doMove ('@':'.':rest) = '.':'@':doMove rest
doMove (c:rest) = c:doMove rest
doMove x = x
