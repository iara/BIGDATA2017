{-|
Module      : persistenciaAditiva
Description : Faça uma função que calcule a persistência aditiva de um número.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br

-}

module Main where

somaDigitos :: Int -> Int -> Int -> Int
somaDigitos 0 soma quantidade = quantidade
somaDigitos n soma = somaDigitos (n `div` 10) (soma + (n `rem` 10))(quantidade + 1)

--persistenciaAditiva :: Int -> Int -> Int
--persistenciaAditiva n m = n + m

main = do
  print (somaDigitos 12345 0 0) -- 10
