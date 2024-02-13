module Main where

import System.IO

generateList :: Int -> Int -> Int -> [Int]
generateList start count mult = take count [start, start + mult ..]

main :: IO ()
main = do
  putStrLn "Введите начальное значение:"
  startStr <- getLine
  putStrLn "Введите количество элементов:"
  countStr <- getLine
  putStrLn "Введите кратность:"
  multStr <- getLine

  let start = read startStr :: Int
  let count = read countStr :: Int
  let mult = read multStr :: Int
  
  print (generateList start count mult)