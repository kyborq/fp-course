module Main where

triangle x = x * (x + 1) `div` 2

triangles x = if x <= 0 then [] else triangle x : triangles (x - 1)

main = do
  let x = triangles 50
  print x