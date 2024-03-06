## 1. concat

Название модуля: Data.List

Тип: [a] -> [a]

Функция concat принимает список списков и объединяет их в один список, удаляя один уровень вложенности.

Примеры использования:

```haskell
concat [[1, 2, 3], [4, 5], [6]] -- [1, 2, 3, 4, 5, 6]
concat ["hello", " ", "world"] -- "hello world"
concat [[]] -- []
```

## 2. findKey

Функция findKey ищет ключ в ассоциативном списке (листе пар) и возвращает соответствующее значение.

Тип: Eq k => k -> [(k, v)] -> Maybe v

Описание: Ищет первое вхождение ключа в списке пар и возвращает соответствующее значение в Just, если ключ найден, и Nothing, если ключ не найден.

Примеры использования:

```haskell
findKey "b" [("a", 1), ("b", 2), ("c", 3)] -- Just 2
findKey "d" [("a", 1), ("b", 2), ("c", 3)] -- Nothing
```

## 3. difference

Название модуля: Data.Set

Тип: Set a -> Set a -> Set a

Возвращает разность двух множеств, то есть множество элементов, которые присутствуют в первом множестве, но отсутствуют во втором.

Примеры использования:

```haskell
difference (fromList [1,2,3,4]) (fromList [3,4,5,6]) -- fromList [1,2]
difference (fromList ["apple", "banana"]) (fromList ["banana", "cherry"]) -- fromList ["apple"]
```

## 4. isUpper

Название модуля: Data.Char

Тип: Char -> Bool

Проверяет, является ли символ заглавной буквой.

Примеры использования:

```haskell
isUpper 'A' -- True
isUpper 'a' -- False
```

## 5. lines

Название модуля: Prelude

Тип: String -> [String]

Разбивает строку на список строк по символам новой строки.

```haskell
lines "Hello\nWorld" -- ["Hello", "World"]
lines "One line only" -- ["One line only"]
lines "" -- []
```
