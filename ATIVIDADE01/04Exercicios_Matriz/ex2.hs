{-|
Module      : matrizIden
Description : Faça uma função que calcule a soma da diagonal principal de uma matriz.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

matrizIden :: Int -> [[Int]]
matrizIden n = [[fromEnum (y==x)|y<-[1..n]]|x<-[1..n]]

main = do
  print (matrizIden 5)
