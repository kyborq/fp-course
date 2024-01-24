module Main where

oddEven :: [l] -> [l]
oddEven [] = []
oddEven [x] = [x]
oddEven (a : b : xs) = b : a : oddEven xs

main = do
  let x = oddEven [2, 5, 7, 9, 1, 8]
  print x