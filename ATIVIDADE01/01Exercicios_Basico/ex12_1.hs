{-|
Module      : stringToDecimal
Description : Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer.
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br

-}


stringToDecimal :: [Int]
stringToDecimal = map (\x -> read [x]::Int) "0123456789"

main = do
  print (stringToDecimal)
