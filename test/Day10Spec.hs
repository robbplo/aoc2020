module Day10Spec (spec) where

import Day10
import Test.Hspec

input :: String
input =
  init $
    unlines [ "28",
        "33",
        "18",
        "42",
        "31",
        "14",
        "46",
        "20",
        "48",
        "47",
        "24",
        "23",
        "49",
        "45",
        "19",
        "38",
        "39",
        "11",
        "1",
        "32",
        "25",
        "35",
        "8",
        "17",
        "7",
        "9",
        "4",
        "2",
        "34",
        "10",
        "3"
      ]

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 220
  it "part 2" $ do
    part2 input `shouldBe` 19208
