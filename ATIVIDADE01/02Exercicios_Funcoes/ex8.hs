{-|
Module      : trianguloPascal
Description : Faça uma função que calcule o elemento (i,j) do triângulo de pascal.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = fatorial (n - 1) * n

trianguloPascal :: Integer -> Integer -> Integer
trianguloPascal n p = (fatorial n) `div` (fatorial p * fatorial ( n - p ))
main = do
  print (trianguloPascal 3 3) -- 56
  print (trianguloPascal 12 9) -- 220
