
{-|
Module      : concatStr
Description : Crie um concatenador de strings que concatena duas strings separadas por espaço.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

concatStr :: String -> String -> String
concatStr str1 str2 = str1 ++ " " ++ str2

main :: IO ()
main = do
  print (concatStr "iara" "miranda")
