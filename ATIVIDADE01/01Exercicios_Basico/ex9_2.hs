
{-|
Module      : takeNLastLeaps
Description :  Encontre os 10 ultimos anos bissextos.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

import Data.Time.Clock
import Data.Time.Calendar

takeNLastLeaps :: Integer -> Integer -> Int -> [Integer]
takeNLastLeaps startYear dueYear n = nleapYears
  where
    leapYear year = (year `rem` 400 == 0) || ((year `rem` 4 == 0) && (year `rem` 100 /= 0))
    leapYears = filter (\year ->  leapYear year) [startYear .. dueYear]
    nleapYears = reverse (take n (reverse (leapYears)))

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay

main = do
  (year, month, day) <- date
  print (takeNLastLeaps 1 year 10)
