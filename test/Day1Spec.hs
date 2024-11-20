module Day1Spec (spec) where

import Day1
import Test.Hspec

input :: String
input = "1721\n979\n366\n299\n675\n1456"

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 514579
  it "part 2" $ do
    part2 input `shouldBe` 241861950
