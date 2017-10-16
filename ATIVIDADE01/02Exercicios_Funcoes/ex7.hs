{-|
Module      : coeficienteBinomial
Description : Faça uma função que calcule o coeficiente binomial de (m,n)
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = fatorial (n - 1) * n

coeficienteBinomial :: Integer -> Integer -> Integer
coeficienteBinomial n p = (fatorial n) `div` (fatorial p * fatorial ( n - p ))

main = do
  print (coeficienteBinomial 8 5) -- 56
  print (coeficienteBinomial 12 9) -- 220
