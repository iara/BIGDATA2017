
{-|
Module      : takeNFirstLeaps
Description :  Encontre os 10 primeiros anos bissextos.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}
import Data.Time.Clock
import Data.Time.Calendar

takeNFirstLeaps :: Integer -> Integer -> Int -> [Integer]
takeNFirstLeaps startYear dueYear n = nleapYears
  where
    leapYear year = (year `rem` 400 == 0) || ((year `rem` 4 == 0) && (year `rem` 100 /= 0))
    leapYears = filter (\year ->  leapYear year) [startYear .. dueYear]
    nleapYears = take n leapYears

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay


main = do
  (year, month, day) <- date
  print (takeNFirstLeaps 1 year 10)
