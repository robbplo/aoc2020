module Day12Spec (spec) where

import Day12
import Test.Hspec

input :: String
input =
  init $
    unlines
      [ "F10",
        "N3",
        "F7",
        "R90",
        "F11"
      ]

spec :: Spec
spec = do
  it "part 1" $ do
    part1 input `shouldBe` 25
  it "part 2" $ do
    part2 input `shouldBe` 286
