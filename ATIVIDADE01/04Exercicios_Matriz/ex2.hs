{-|
Module      : sumDiagonal
Description : Faça uma função que calcule a soma da diagonal principal de uma matriz.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

mainDiagonal :: [[a]] -> [a]
mainDiagonal []     = []
mainDiagonal (x:xs) = head x : mainDiagonal (map tail xs)

sumDiagonal m = sum (mainDiagonal m)

main = do
    print(sumDiagonal [[1, 2, 4], [1, 1, 3], [1,2,3]] )
