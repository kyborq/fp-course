module Main where

listSumm :: [Int] -> [Int] -> [Int]
listSumm l1 l2 = [x + y | (x, y) <- zip l1 l2]

main = do
  let x = listSumm [1, 2, 3] [1, 2, 3]
  print x