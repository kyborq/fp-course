module Main where

insert :: [a] -> a -> Int -> [a]
insert [] _ _ = []
insert l a n = take n l ++ [a] ++ drop n l

main = do
  let x = insert [1, 3, 4, 5] 2 1
  print x