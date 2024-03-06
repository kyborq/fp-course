module Main where

-- 1. Натуральные числа меньше 10, которые делятся на 3 или на 5 -это 3, 5, 6 и 9.
-- Их сумма равна 23. Найдите сумму всех чисел, делящихся на 3 или на 5, которые меньше 1000. #5

isDivisibleBy3or5 :: Int -> Bool
isDivisibleBy3or5 x = x `mod` 3 == 0 || x `mod` 5 == 0

sumDivisibleBy3or5 :: Int -> Int
sumDivisibleBy3or5 x = sum (filter isDivisibleBy3or5 [1 .. x])

-- 2. Пифагорова тройка это три такие натуральные числа a < b < c, что a^2 + b^2 = c^2
-- Например, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
-- Найдите единственную Пифагорову тройку, такую что a + b + c = 1000 и вычислите произведение abc. #5

findPythagoreanTriplet :: Int -> (Int, Int, Int)
findPythagoreanTriplet s =
  head
    [ (a, b, c)
      | a <- [1 .. s],
        b <- [a + 1 .. s],
        let c = s - a - b,
        a ^ 2 + b ^ 2 == c ^ 2
    ]

productOfTriplet :: (Int, Int, Int) -> Int
productOfTriplet (a, b, c) = a * b * c

-- 3.Напишите функцию transpose :: [[a]]-> [[a]], которая берет список списков
-- и транспонирует столбцы и строки Например, transpose [[1,2,3],[4,5,6]] ==[[1,4],[2,5],[3,6]]. #5
transpose :: [[a]] -> [[a]]
transpose ([] : _) = []
transpose rows = map head rows : transpose (map tail rows)

-- 4.Напишите функцию, которая читает входной текстовый файл и проверяет,
-- правильно ли в тексте расставлены скобки (для каждой открывающей есть своя правильная закрывающая). #5
isBracketBalanced :: String -> Bool
isBracketBalanced s = isBalanced s []

isBalanced :: String -> [Char] -> Bool
isBalanced [] [] = True
isBalanced [] _ = False
isBalanced (x : xs) stack
  | isOpeningBracket x = isBalanced xs (x : stack)
  | isClosingBracket x = not (null stack) && bracketsMatch (head stack) x && isBalanced xs (tail stack)
  | otherwise = isBalanced xs stack

isOpeningBracket :: Char -> Bool
isOpeningBracket c = c `elem` "([{"

isClosingBracket :: Char -> Bool
isClosingBracket c = c `elem` ")]}"

bracketsMatch :: Char -> Char -> Bool
bracketsMatch '(' ')' = True
bracketsMatch '[' ']' = True
bracketsMatch '{' '}' = True
bracketsMatch _ _ = False

main :: IO ()
main = do
  -- print (productOfTriplet (findPythagoreanTriplet 999))
  print (sumDivisibleBy3or5 999)
  print (transpose [[1, 2, 3], [4, 5, 6]])
  print (isBracketBalanced "((()))")