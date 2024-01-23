oddNumbers1 x = [1, 3 .. (2 * x - 1)]

oddNumbers2 x = if x <= 0 then [] else (2 * x - 1) : oddNumbers2 (x - 1)

oddNumbers3 x = filter odd [1 .. (2 * x - 1)]

main = do
  print (oddNumbers1 20)
  print (oddNumbers2 20)
  print (oddNumbers3 20)