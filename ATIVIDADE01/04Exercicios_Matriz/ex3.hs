{-|
Module      : sumDiagonalReverse
Description : Faça uma função que calcule a soma da diagonal secundária de uma matriz.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

mainDiagonal :: [[a]] -> [a]
mainDiagonal []     = []
mainDiagonal (x:xs) = head x : mainDiagonal (map tail xs)

reverseList :: [[a]] -> [[a]]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]


sumDiagonalReverse m = sum (mainDiagonal (reverseList m))

main = do
    print(sumDiagonalReverse [[1, 2, 4], [1, 1, 3], [1,2,3]] )
