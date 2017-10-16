{-|
Module      : persistenciaAditiva
Description : Faça uma função que calcule a persistência aditiva de um número.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br

-}

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

persistenciaAditiva :: Int -> Int
persistenciaAditiva i
  | i < 10 =  i
  | otherwise = persistenciaAditiva (sum (digs i))

main = do
  print (persistenciaAditiva 12345) -- 6
