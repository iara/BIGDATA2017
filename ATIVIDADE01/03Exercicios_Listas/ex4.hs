{-|
Module      : projectEuler2
Description : Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

projectEuler2 :: Integer
projectEuler2 = sum (takeWhile (\x -> fib x <= 4000000) [1..])

main = do
    print(projectEuler2)
