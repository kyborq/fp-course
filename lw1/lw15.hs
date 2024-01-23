pyramid x = if x <= 0 then 0 else x * pyramid (x - 1)

pyramids x = if x <= 0 then [] else pyramid x : pyramids (x - 1)

main = do
  let x = pyramids 50
  print x