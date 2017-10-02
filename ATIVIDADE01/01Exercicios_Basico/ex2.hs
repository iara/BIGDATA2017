{-|
Module      : mult3
Description :  Faça uma função mult3 x que retorne True caso a entrada seja múltiplo de 3 e False caso contrário.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

mult3 :: Integer -> Bool
mult3 x = x `mod` 3 == 0

main :: IO ()
main = do
  print (mult3 2)
