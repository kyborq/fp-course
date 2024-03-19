
listnums :: Int -> [Int]
listnums n = if n == 1 then [1] else n : listnums (n - 1)

secondlastlist :: [[Int]] -> [Int]
secondlastlist [] = []
secondlastlist (x : xs)
  | null x = secondlastlist xs
  | otherwise = last x : secondlastlist xs

myunion :: Eq a => [a] -> [a] -> [a]
myunion [] _ = []
myunion (x:xs) ys
    | x `elem` ys = x : myunion xs ys
    | otherwise = myunion xs ys

mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] _ = []
mysubst xs [] = xs
mysubst (x : xs) ys
  | x `elem` ys = mysubst xs ys
  | otherwise = x : mysubst xs ys

nelements :: [[a]] -> Int -> [a]
nelements xs n = map (!!n) xs