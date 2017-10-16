{-|
Module      : somaDigitos
Description : Faça uma função que calcule a soma dos dígitos de um número.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

somaDigitos :: Int -> Int -> Int
somaDigitos 0 soma = soma
somaDigitos n soma = somaDigitos (n `div` 10) (soma + (n `rem` 10))

main = do
  print (somaDigitos 1234 0) -- 10
