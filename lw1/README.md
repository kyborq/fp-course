# Лабораторная работа №1

## 1. Используя функции fst (возвращает первый элемент кортежа) и snd (возвращвет второй элемент кортежа из 2 элементов) из стандартного модуля Prelude чтобы "достать" значение типа Char из кортежа (( 1, 'a'), "abc")

```hs
getCh x = snd (fst x)

main = do
  let a = getCh ((1, 'a'), "abc")
  print a
```

## 2. Используя функции head и tail получить элемент b из следующих списков

1. `['a', 'b', 'c']`

2. `[['a', 'b'], ['c','d']]`

3. `[['a', 'c', 'd'], ['a','b']]`

4. `[['a','d'], ['b', 'c']]`

```hs
getSec x = head (tail x)

getB x = tail (head x)

main = do
  print (getSec ['a', 'b', 'c'])
  print (head (getB [['a', 'b'], ['c', 'd']]))
  print (getSec (getSec [['a', 'c', 'd'], ['a', 'b']]))
  print (head (getSec [['a', 'd'], ['b', 'c']]))
```

## 3. Список нечётных натуральных чисел. Количество чисел в списке = 20. (не менее 3 способа)

```hs
oddNumbers1 x = [1, 3 .. (2 * x - 1)]

oddNumbers2 x = if x <= 0 then [] else (2 * x - 1) : oddNumbers2 (x - 1)

oddNumbers3 x = filter odd [1 .. (2 * x - 1)]

main = do
  print (oddNumbers1 20)
  print (oddNumbers2 20)
  print (oddNumbers3 20)
```

## 4. Список треугольных чисел Ферма. Колво чисел = 50.

```hs
triangle x = if x <= 0 then 0 else x + triangle (x - 1)

triangles x = if x <= 0 then [] else triangle x : triangles (x - 1)

main = do
  let x = triangles 50
  print x
```

## 5. Список пирамидальных чисел Ферма. Колво чисел = 50

```hs
pyramid n = n * (n + 1) `div` 2

pyramids x = [pyramid n | n <- [1..x]]

main = do
  print (pyramids 50)
```
