getCh x = snd (fst x) 

main = do
  let a = getCh ((1, 'a'), "abc")
  print a