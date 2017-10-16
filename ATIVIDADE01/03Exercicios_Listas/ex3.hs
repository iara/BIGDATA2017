{-|
Module      : fib
Description : Crie a lista de números de Fibonacci utilizando uma função geradora.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = do
    print(fib 25)
