{-|
Module      : mult3
Description :  Faça uma função que recebe um tipo Integer e retorna ele dividido por
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

div2d :: Integer -> Double
div2d x = x `div` 2

main :: IO ()
main = do
  print (div2d 2)
  print (div2d 5)
