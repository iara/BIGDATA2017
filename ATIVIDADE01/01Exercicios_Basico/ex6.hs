{-|
Module      : Faa
Description : Faa uma função que receba um ângulo a e retorne uma tupla contendo o seno da metade desse ângulo utilizando a identidade
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

faa :: Double -> (Double, Double)
faa n = (sqrt ((1 - cos 2) / 2), -sqrt ((1 - cos 2) / 2))

main :: IO ()
main = do
  print(faa 9.3)
