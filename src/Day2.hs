{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections #-}

module Day2
  ( part1,
    part2,
  )
where

import qualified Data.Map.Strict as M
import Data.Maybe (fromMaybe)
import qualified Data.Text as T
import Debug.Trace

data Password = Password T.Text Int Int Char (M.Map Char Int) deriving (Show)

part1 :: String -> Int
part1 input =
  let passwords = map parseLine $ T.lines (T.pack input)
   in length $ filter isValid passwords

parseLine :: T.Text -> Password
parseLine input =
  let [nums, char, str] = T.splitOn " " input
      range = map (read . T.unpack) (T.splitOn "-" nums)
      charmap = M.fromListWith (+) $ map (,1) (T.unpack str)
   in Password str (head range) (head . tail $ range) (T.head char) charmap

isValid :: Password -> Bool
isValid (Password _ from to char charmap) = count `elem` [from .. to]
  where
    count = fromMaybe 0 (charmap M.!? char)

part2 :: String -> Int
part2 input =
  let passwords = map parseLine $ T.lines (T.pack input)
   in length $ filter isValid2 passwords

isValid2 :: Password -> Bool
isValid2 (Password string left right char _)
  | eq left && eq right = False
  | eq left || eq right = True
  | otherwise = False
  where
    eq ix = (string `T.index` (ix - 1)) == char
