{-|
Module      : findRange
Description :  Faça um programa que retorne True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

findRange:: Integer -> Bool
findRange x = x < -1 || ((x > 1) && (x `mod` 2) == 0)

main :: IO ()
main = do
  print (findRange 2)
