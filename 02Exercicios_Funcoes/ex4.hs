{-|
Module      : ehPrimo
Description : Faça uma função que determine se um número é primo.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

ehPrimo :: Integer -> Bool
ehPrimo k = null [ x | x <- [2..k - 1], k `mod`x  == 0]

main :: IO ()
main = do
  print (ehPrimo 4) -- False
  print (ehPrimo 3) -- True
  print (ehPrimo 7) -- True
  print (ehPrimo 38) -- False
