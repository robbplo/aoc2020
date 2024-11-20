module Day2Spec (spec) where

import Day2
import Test.Hspec

input :: String
input = "1-3 a: abcde\n1-3 b: cdefg\n2-9 c: ccccccccc"

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 2
  it "part 2" $ do
    part2 input `shouldBe` 1
