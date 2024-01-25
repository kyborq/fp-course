module Main where

position :: Eq a => [a] -> a -> Int
position [] _ = -1
position (x : xs) a = if x == a then 0 else 1 + position xs a

main = do
  let x = position [1, 2, 3] 3
  print x