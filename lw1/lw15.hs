module Main where

pyramid n = n * (n + 1) `div` 2

pyramids x = [pyramid n | n <- [1..x]]

main = do
  print (pyramids 50)