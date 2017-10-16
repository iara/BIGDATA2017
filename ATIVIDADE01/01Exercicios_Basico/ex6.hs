
{-|
Module      : div2d
Description : Faça uma função que recebe um tipo Integer e retorna ele dividido por 2:
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}


module Main where

div2d :: Integer -> Double
div2d n = fromInteger n / 2

main = do
  print (div2d 7)
