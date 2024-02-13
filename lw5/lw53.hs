import System.Environment
import System.IO
import Data.List

viewFile :: FilePath -> IO ()
viewFile filePath = do
    content <- readFile filePath
    putStrLn content

addToFile :: FilePath -> String -> IO ()
addToFile filePath line = appendFile filePath (line ++ "\n")

deleteFromFile :: FilePath -> String -> IO ()
deleteFromFile filePath lineToDelete = do
    content <- readFile filePath
    let alllines = lines content
    let newLines = delete lineToDelete alllines
    writeFile filePath $ unlines newLines

copyFileWithFilter :: FilePath -> FilePath -> (String -> Bool) -> IO ()
copyFileWithFilter sourceFile destinationFile myfilter = do
    content <- readFile sourceFile
    let alllines = lines content
    let filteredLines = filter myfilter alllines
    writeFile destinationFile $ unlines filteredLines

filterByLength :: Int -> [String] -> [String]
filterByLength minLength = filter (\line -> length line > minLength)

filterByKeyword :: String -> [String] -> [String]
filterByKeyword keyword = filter (isInfixOf keyword)

main :: IO ()
main = do
    putStrLn "Выберите действие:"
    putStrLn "1. Просмотр файла"
    putStrLn "2. Добавить строку в файл"
    putStrLn "3. Удалить строку из файла"
    putStrLn "4. Копировать файл с фильтрацией по длине строки"
    putStrLn "5. Копировать файл с фильтрацией по ключевому слову"
    action <- getLine
    case action of
        "1" -> do
            putStrLn "Введите путь к файлу:"
            filePath <- getLine
            viewFile filePath
        "2" -> do
            putStrLn "Введите путь к файлу:"
            filePath <- getLine
            putStrLn "Введите строку для добавления:"
            line <- getLine
            addToFile filePath line
            putStrLn "Строка добавлена."
        "3" -> do
            putStrLn "Введите путь к файлу:"
            filePath <- getLine
            putStrLn "Введите строку для удаления:"
            lineToDelete <- getLine
            deleteFromFile filePath lineToDelete
            putStrLn "Строка удалена, если она была в файле."
        "4" -> do
            putStrLn "Введите путь к исходному файлу:"
            sourceFile <- getLine
            putStrLn "Введите путь к целевому файлу:"
            destinationFile <- getLine
            putStrLn "Введите минимальную длину строки:"
            minLengthStr <- getLine
            let minLength = read minLengthStr :: Int
            copyFileWithFilter sourceFile destinationFile (filterByLength minLength)
            putStrLn "Файл скопирован с фильтрацией по длине строки."
        "5" -> do
            putStrLn "Введите путь к исходному файлу:"
            sourceFile <- getLine
            putStrLn "Введите путь к целевому файлу:"
            destinationFile <- getLine
            putStrLn "Введите ключевое слово для фильтрации:"
            keyword <- getLine
            copyFileWithFilter sourceFile destinationFile (filterByKeyword keyword)
            putStrLn "Файл скопирован с фильтрацией по ключевому слову."
        _ -> putStrLn "Недопустимое действие."