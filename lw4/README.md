## 1. concat

Название модуля: Data.List

Тип: `[a] -> a`

Функция concat принимает список списков и объединяет их в один список, удаляя один уровень вложенности.

Примеры использования:

```haskell
concat [[1, 2, 3], [4, 5], [6]] -- [1, 2, 3, 4, 5, 6]
concat ["hello", " ", "world"] -- "hello world"
concat [[]] -- []
```

Рекурсивно проходит через каждый список в списке списков (`(x:xs)`), используя операцию конкатенации (`++`), чтобы соединить каждый внутренний список (`x`) с результатом рекурсивного вызова myConcat для оставшейся части списка списков (`xs`). Рекурсия заканчивается, когда достигается пустой список (`[]`), который возвращает пустой список как базовый случай.

## 2. findKey

Название модуля: Data.Map

Тип: `(Eq k) => k -> [(k, v)] -> Maybe v`

Функция findKey ищет ключ в ассоциативном списке (листе пар) и возвращает соответствующее значение.

Описание: Ищет первое вхождение ключа в списке пар и возвращает соответствующее значение в Just, если ключ найден, и Nothing, если ключ не найден.

Примеры использования:

```haskell
findKey "b" [("a", 1), ("b", 2), ("c", 3)] -- Just 2
findKey "d" [("a", 1), ("b", 2), ("c", 3)] -- Nothing
```

Рекурсивно проверяет каждую пару (`(k', v)`) в списке. Если ключ k совпадает с ключом k' в текущей паре, функция возвращает `Just v`. Если ключи не совпадают, функция продолжает поиск в оставшейся части списка (`xs`). Базовым случаем является пустой список, когда возвращается `Nothing`, указывая на то, что ключ не найден.

## 3. member

Название модуля: Data.Set

Проверяет, содержится ли элемент в списке. Она использует рекурсию и логический оператор || для проверки каждого элемента списка на равенство с искомым значением.

Примеры использования:

```haskell
myMember 'a' "hello" -- False
myMember 'e' "hello" -- True
```

Используя рекурсию и логический оператор `||`, функция проверяет каждый элемент списка на равенство с искомым (`x == y`). Если элемент найден, возвращается `True`. Рекурсия продолжается до тех пор, пока не будет проверен весь список или не будет найдено совпадение. Пустой список возвращает `False`, указывая на то, что элемент не найден.

## 4. isUpper

Название модуля: Data.Char

Тип: `Char -> Bool`

Проверяет, является ли символ заглавной буквой.

Примеры использования:

```haskell
isUpper 'A' -- True
isUpper 'a' -- False
```

Использует оператор `elem` для проверки, входит ли символ c в диапазон символов от `'A'` до `'Z'`.

## 5. lines

Название модуля: Prelude

Тип: `String -> [String]`

Разбивает строку на список строк по символам новой строки.

```haskell
lines "Hello\nWorld" -- ["Hello", "World"]
lines "One line only" -- ["One line only"]
lines "" -- []
```

Использует вспомогательную рекурсивную функцию `go`, которая проходит через каждый символ исходной строки. Если встречается символ новой строки (`'\n'`), текущая накопленная строка (`acc`) добавляется в результат (после разворота, так как символы добавлялись в обратном порядке для эффективности), и начинается накопление новой
