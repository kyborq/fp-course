module Main where

listnums :: Int -> [Int]
listnums n = if n == 1 then [1] else n : listnums (n - 1)

main = do
  let n = listnums 2
  print n