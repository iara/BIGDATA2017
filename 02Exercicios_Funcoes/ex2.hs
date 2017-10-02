{-|
Module      : tipoTriangulo
Description : Crie uma função ehTriangulo que determina se três lados x, y, z podem formar um triângulo.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

ehTriangulo :: Integer -> Integer -> Integer -> Bool
ehTriangulo x y z
  | (abs ( y - z )) < x && x < ( y + z ) = True
  | (abs ( x - z )) < y && y < ( x + z ) = True
  | (abs ( x - y )) < z && z < ( x + y ) = True
  | otherwise = False

tipoTriangulo :: Integer -> Integer -> Integer -> String
tipoTriangulo x y z
  | (ehTriangulo x y x) ==  False  = "Nao eh triagulo"
  | x == y && y == z = "Triagulo Equilatero"
  | x == y || x == z || y == z = "Triangulo Isosceles"
  | otherwise = "Triangulo Escaleno"

main :: IO ()
main = do
  print (tipoTriangulo 10 9 5) -- Escaleno
  print (tipoTriangulo 9 9 1) -- Isosceles
  print (tipoTriangulo 9 9 9) -- Equilatero
  print (tipoTriangulo 1 2 3 ) -- Nao eh triagulo
