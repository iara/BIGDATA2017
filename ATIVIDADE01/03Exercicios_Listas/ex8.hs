{-|
Module      : projectEuler14
Description : Encontre o número x entre 1 e 1.000.000 que tem a maior sequência de Collatz. (Project Euler 14)
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}


par :: Integer -> Bool
par x = x `mod` 2 == 0

collatz :: Integer -> Integer
collatz x
  | par x = x `div` 2
  | otherwise = (3 * x) + 1


collatzLen :: Integer -> Integer -> Integer
collatzLen value 1 = value
collatzLen value n = collatzLen (value + 1) (collatz n)

collatzLen' n = (collatzLen 1 n, n)

maiorCollatzLen :: Integer -> (Integer,Integer)
maiorCollatzLen n = maximum (map (\y ->  collatzLen' y) [1..n])

projectEuler14:: Integer -> String
projectEuler14 n = strResult
  where
    result = maiorCollatzLen n
    strResult = "O numero de maior valor de sequencia eh o " ++ show (snd result) ++ ", com a sequencia de tamanho " ++ show (fst result) ++".Para o intervalo de 1 a "++ show n ++ "."

main = do
    print(projectEuler14 1000000) -- "O numero de maior valor de sequencia eh o 837799, com a sequencia de tamanho 525.Para o intervalo de 1 a 1000000."
