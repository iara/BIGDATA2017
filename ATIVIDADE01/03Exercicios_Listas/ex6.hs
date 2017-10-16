{-|
Module      : collatz
Description : Crie a função collatz x que retorna x/2x/2, se x for par e (3x+1)(3x+1) se for ímpar.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}


par :: Integer -> Bool
par x = x `mod` 2 == 0

collatz :: Integer -> Integer
collatz x
  | par x = x `div` 2
  | otherwise = (3 * x) + 1

main = do
    print(collatz 8)
