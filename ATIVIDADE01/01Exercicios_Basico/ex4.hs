{-|
Module      : mult35
Description :  Faça uma função mult35 x que retorne True caso a entrada seja múltiplo de 3 e 5 e False caso contrário.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

mult35 :: Integer -> Bool
mult35 x = (x `mod` 3 == 0) && (x `mod` 5 == 0)

main :: IO ()
main = do
  print (mult35 2)
