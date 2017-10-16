{-|
Module      : matrizIden
Description : Faça uma função que gere uma matriz identidade de tamanho n.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

matrizIden :: Int -> [[Int]]
matrizIden n = [[fromEnum (y==x)|y<-[1..n]]|x<-[1..n]]

main = do
  print (matrizIden 5)
