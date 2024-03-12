module LW4 (myConcat, findKey, myMember, myIsUpper, myLines) where

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

myFindKey :: Eq k => k -> [(k, v)] -> Maybe v
myFindKey _ [] = Nothing
myFindKey k ((k', v) : xs) 
  | k == k' = Just v
  | otherwise = myFindKey k xs

myMember :: (Eq a) => a -> [a] -> Bool
myMember _ [] = False
myMember x (y:ys) = x == y || myMember x ys

myIsUpper :: Char -> Bool
myIsUpper c = c `elem` ['A'..'Z']

myLines :: String -> [String]
myLines str = go str ""
  where
    go [] acc = [reverse acc]
    go ('\n' : xs) acc = reverse acc : go xs ""
    go (x : xs) acc = go xs (x : acc)

main :: IO ()
main = do
  -- TODO: Do some tests