module Main where

summ2 :: Int -> Int
summ2 n = sum [ n - x | x <- [1 .. n] ]

main = do
  let x = summ2 3
  print x