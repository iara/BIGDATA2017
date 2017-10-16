{-|
Module      : produtoEscalar
Description : Faça uma função para calcular o produto escalar entre dois vetores.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

produtoEscalar :: Num a => [a] -> [a] -> Maybe a
produtoEscalar x y | length x == length y = Just(sum (zipWith (*) x y))
                  | otherwise = Nothing

main = do
    print(produtoEscalar [1, 3, -9] [4, -2, -1])
