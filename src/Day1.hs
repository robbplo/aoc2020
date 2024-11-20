module Day1
  ( part1,
    part2,
  )
where

import Data.Function

part1 :: String -> Int
part1 input =
  let nums = input & lines & map read :: [Int]
   in head
        [ x * y
          | x <- nums,
            y <- nums,
            x + y == 2020
        ]

part2 :: String -> Int 
part2 input =
  let nums = input & lines & map read :: [Int]
   in head
        [ x * y * z
          | x <- nums,
            y <- nums,
            z <- nums,
            x + y + z == 2020
        ]
