module Day11Spec (spec) where

import Day11
import Test.Hspec

input :: String
input =
  init $
    unlines [
      "L.LL.LL.LL",
      "LLLLLLL.LL",
      "L.L.L..L..",
      "LLLL.LL.LL",
      "L.LL.LL.LL",
      "L.LLLLL.LL",
      "..L.L.....",
      "LLLLLLLLLL",
      "L.LLLLLL.L",
      "L.LLLLL.LL"
    ]

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 37
  it "part 2" $ do
    part2 input `shouldBe` 26
