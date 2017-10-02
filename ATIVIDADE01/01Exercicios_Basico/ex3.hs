{-|
Module      : mult5
Description :  Faça uma função mult5 x que retorne True caso a entrada seja múltiplo de 5 e False caso contrário.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

mult5 :: Integer -> Bool
mult5 x = x `mod` 5 == 0

main :: IO ()
main = do
  print (mult5 2)
