module LW4 (myConcat, myFindKey, myMember, myIsUpper, myLines) where

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
  print ( myConcat [[1, 2, 3], [4, 5], [6]] )
  print ( myFindKey 2 [(1, "one"), (2, "two"), (3, "three")] )
  print ( myFindKey 4 [(1, "one"), (2, "two"), (3, "three")] )
  print ( myMember 'a' "hello" )
  print ( myMember 'e' "hello" )
  print ( myIsUpper 'A' )
  print ( myIsUpper 'a' )
  print ( myLines "Hello\nWorld\n!" )