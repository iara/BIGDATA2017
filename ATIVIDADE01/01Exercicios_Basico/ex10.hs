
{-|
Module      : splitAtHalfLeapYears
Description :  Crie uma tupla em que o primeiro elemento tem metade dos anos bissextos e o segundo elemento a outra metade.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}
import Data.Time.Clock
import Data.Time.Calendar

splitAtHalfLeapYears :: Integer -> Integer -> ([Integer], [Integer])
splitAtHalfLeapYears startYear dueYear = splitAtHalf
  where
    leapYear year = (year `rem` 400 == 0) || ((year `rem` 4 == 0) && (year `rem` 100 /= 0))
    leapYears = filter (\year ->  leapYear year) [startYear .. dueYear]
    splitAtHalf = splitAt ((length leapYears) `div` 2) leapYears

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay

main = do
  (year, month, day) <- date
  print (splitAtHalfLeapYears 1 2017)
