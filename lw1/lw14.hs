module Main where

triangle x = if x <= 0 then 0 else x + triangle (x - 1)

triangles x = if x <= 0 then [] else triangle x : triangles (x - 1)

main = do
  let x = triangles 50
  print x