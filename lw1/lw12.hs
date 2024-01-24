getSec x = head (tail x)

getB x = tail (head x)

main = do
  print (getSec ['a', 'b', 'c'])
  print (head (getB [['a', 'b'], ['c', 'd']]))
  print (getSec (getSec [['a', 'c', 'd'], ['a', 'b']]))
  print (head (getSec [['a', 'd'], ['b', 'c']]))