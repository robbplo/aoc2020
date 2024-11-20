module Day13Spec (spec) where

import Day13
import Test.Hspec

input :: String
input =
  init $
    unlines
      [ "939",
        "7,13,x,x,59,x,31,19"
      ]

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 295
  it "part 2" $ do
    part2 input `shouldBe` 1068781
