{-|
Module      : Zebra Puzzle
Description : https://en.wikipedia.org/wiki/Zebra_Puzzle
License     : GPL-3
Maintainer  : iara.miranda@ufabc.edu.br


-}

import Control.Monad
import Data.List

data Nation = Noruegues  | Ingles  | Espanhol  | Japones | Ucraniano
    deriving (Bounded, Enum, Eq, Show)
data Color  = Amarela	| Marfim	| Verde | Azul	| Vermelho
    deriving (Bounded, Enum, Eq, Show)
data Pet    = Raposa	| Cavalo	| Caramujos |	Cachorro	| Zebra
    deriving (Bounded, Enum, Eq, Show)
data Drink  = Agua | Cha   | Leite    | SucoLaranja | Cafe
    deriving (Bounded, Enum, Eq, Show)
data Smoke  = Kools  | Chesterfield   | OldGold | LuckyStrike    | Parliament
    deriving (Bounded, Enum, Eq, Show)

values :: (Bounded a, Enum a) => [[a]]
values = permutations [minBound..maxBound]

answers = do
    color <- values
    leftOf  color  Verde       color Marfim    -- 6

    nation <- values
    first   nation Noruegues                  -- 10
    same    nation Ingles     color Vermelho      -- 2
    nextTo  nation Japones   color Azul     -- 15

    drink <- values
    middle  drink  Leite                       -- 9
    same    nation Ucraniano        drink Cha      -- 5
    same    drink  Cafe      color Verde    -- 4

    pet <- values
    same    nation Espanhol       pet   Cachorro      -- 3

    smoke <- values
    same    smoke  OldGold       pet   Caramujos    -- 7
    same    color  Amarela       smoke Kools  -- 8
    nextTo  smoke  Chesterfield  pet   Raposa     -- 11
    nextTo  pet    Cavalo        smoke Kools  -- 12
    same    nation Japones       smoke Parliament   -- 14
    same    smoke  LuckyStrike   drink SucoLaranja     -- 13

    return $ zip5 nation color pet drink smoke

  where
    same    xs x  ys y  =  guard $ (x, y) `elem` zip xs ys
    leftOf  xs x  ys y  =  same  xs x  (tail ys) y
    nextTo  xs x  ys y  =  leftOf  xs x  ys y  `mplus`
                           leftOf  ys y  xs x
    middle  xs x        =  guard $ xs !! 2 == x
    first   xs x        =  guard $ head xs == x

main = do
    forM_ answers $ (\answer ->  -- for answer in answers:
      do
        mapM_ print answer
        putStrLn "" )
