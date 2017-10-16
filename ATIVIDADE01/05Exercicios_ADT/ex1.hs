{-|
Module      : ehPrimo
Description : Implemente uma função que faz a multiplicação etíope entre dois números.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

divisivel20 :: Integer -> Bool
divisivel20 y = result
  where
    div20 = map(y `mod`)[1..20]
    result = foldr (+) 0 div20 == 0

main = do
  print (divisivel20 1)
