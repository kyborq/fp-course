getSec x = head (tail x)

getB x = tail (head x)

main = do
  print (getSec ['a', 'b', 'c'])
  print (getB [['a', 'b'], ['c', 'd']])
  print (tail (getSec [['a', 'c', 'd'], ['a', 'b']]))
  print (head (getSec [['a', 'd'], ['b', 'c']]))