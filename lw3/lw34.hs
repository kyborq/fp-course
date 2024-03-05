module Main where

mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] _ = []
mysubst xs [] = xs
mysubst (x : xs) ys
  | x `elem` ys = mysubst xs ys
  | otherwise = x : mysubst xs ys

main = do
  let n = mysubst [1, 2, 3] [1, 4, 3]
  print n