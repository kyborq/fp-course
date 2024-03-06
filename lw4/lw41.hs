module LW4 (myConcat, findKey, myDifference, myIsUpper, myLines) where

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

myFindKey :: Eq k => k -> [(k, v)] -> Maybe v
myFindKey _ [] = Nothing
myFindKey k ((k', v) : xs) 
  | k == k' = Just v
  | otherwise = myFindKey k xs

