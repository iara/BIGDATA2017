{-|
Module      : etipe
Description : Implemente uma função que faz a multiplicação etíope entre dois números.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

impar :: Integer -> Bool
impar x
  | (x `mod` 2) == 1 = True
  | otherwise = False

etiope :: Integer -> Integer -> Integer
etiope m n = etiope' m n 0
  where
    etiope' 1 n r = n + r
    etiope' m n r
      | impar m = etiope'( m `div` 2 )( n * 2 )( n + r )
      | otherwise = etiope'( m `div` 2 )( n * 2 )( r )

main :: IO ()
main = do
  print (etiope 12 24) -- 288
