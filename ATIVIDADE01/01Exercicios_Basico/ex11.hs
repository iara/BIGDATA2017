
{-|
Module      : splitAtHalfLeapYears
Description :  Crie um concatenador de strings que concatena duas strings separadas por espaço.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

module Main where

splitAtHalfLeapYears :: Integer -> Integer -> ([Integer], [Integer])
splitAtHalfLeapYears startYear dueYear = splitAtHalf
  where
    leapYear year = (year `rem` 400 == 0) || ((year `rem` 4 == 0) && (year `rem` 100 /= 0))
    leapYears = filter (\year ->  leapYear year) [startYear .. dueYear]
    splitAtHalf = splitAt ((length leapYears) `div` 2) leapYears

main :: IO ()
main = do
  print (splitAtHalfLeapYears 1 2017)
