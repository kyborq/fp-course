module Main where

doMyList :: Int -> [Int]
doMyList n = [n .. n + n - 1]

main = do
  let x = doMyList 4
  print x