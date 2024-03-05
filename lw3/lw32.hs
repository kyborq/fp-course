module Main where

secondlastlist :: [[Int]] -> [Int]
secondlastlist [] = []
secondlastlist (x : xs)
  | null x = secondlastlist xs
  | otherwise = last x : secondlastlist xs

main = do
  let n = secondlastlist [[1, 2, 3], [1], [7, 8, 9]]
  print n