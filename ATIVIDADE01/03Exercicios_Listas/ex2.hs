{-|
Module      : projectEuler5
Description : Implemente uma função que faz a multiplicação etíope entre dois números.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

divisivel20 :: Integer -> Bool
divisivel20 y = result
  where
    div20 = map(y `mod`)[1..20]
    result = foldr (+) 0 div20 == 0

projectEuler5 :: Integer
projectEuler5 = last (takeWhile (\x -> divisivel20 x == False) [1..]) + 1

main = do
    print(projectEuler5)
