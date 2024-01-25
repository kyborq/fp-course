module Main where

summ1 :: Int -> Int
summ1 n = sum [1 .. n]

main = do
  let x = summ1 3
  print x