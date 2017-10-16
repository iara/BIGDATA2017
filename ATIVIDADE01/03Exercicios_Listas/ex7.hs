{-|
Module      : collatzLen
Description : Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}


par :: Integer -> Bool
par x = x `mod` 2 == 0

collatz :: Integer -> Integer
collatz x
  | par x = x `div` 2
  | otherwise = (3 * x) + 1


collatzLen value 1 = value
collatzLen value n = collatzLen (value + 1) (collatz n)

main = do
    print(collatzLen 1 13)
