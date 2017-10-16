
{-|
Module      : leapList
Description :  Crie uma lista de anos bissextos desde o ano 1 até o atual.
Copyright   : (c) Iara Miranda, 2017
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}
import Data.Time.Clock
import Data.Time.Calendar

leapList :: Integer -> Integer-> [Integer]
leapList startYear dueYear = leapYears
  where
    leapYear year = (year `rem` 400 == 0) || ((year `rem` 4 == 0) && (year `rem` 100 /= 0))
    leapYears = filter (\year ->  leapYear year) [startYear .. dueYear]

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay

main = do
  (year, month, day) <- date
  print (leapList 1 year)
