module Main where

import Data.Char (isPunctuation)
import System.Environment
import System.IO

replacePunctuation :: String -> Char -> String
replacePunctuation text newChar = map (\c -> if isPunctuation c then newChar else c) text

main :: IO ()
main = do
  args <- getArgs

  let inputFile = head args
  let outputFile = args !! 1

  putStrLn "Введите символ для замены знаков пунктуации:"
  replacementStr <- getLine

  let replacementChar = head replacementStr
  content <- readFile inputFile

  writeFile outputFile (replacePunctuation content replacementChar)

  putStrLn "Файл успешно обработан."

