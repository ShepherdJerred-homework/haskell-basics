import Lib
import Test.Hspec

import qualified Lib((>>))

main :: IO ()

main = hspec $ do
  describe "second" $ do
    it "returns the second element" $ do
      second [1..] `shouldBe` 2
      second [3, 1, 4, 1, 5, 9] `shouldBe` 1
  describe "firstN" $ do
    it "returns first n elements" $ do
      firstN 10 `shouldBe` [1..10]
      firstN 7 `shouldBe` [1..7]
  describe "size" $ do
    it "returns small when less than 10" $ do
      size [] `shouldBe` "small"
      size [1..9] `shouldBe` "small"
    it "returns medium when between 10-20" $ do
      size [1..10] `shouldBe` "medium"
      size [1..20] `shouldBe` "medium"
    it "returns large for 21+" $ do
      size [1..21] `shouldBe` "large"
  describe "inRange" $ do
    it "returns true when in range" $ do
      inRange 1 10 5 `shouldBe` True
      inRange 1 10 1 `shouldBe` True
      inRange 1 10 10 `shouldBe` True
      inRange 3 7 5 `shouldBe` True
    it "returns false when out of range" $ do
      inRange 1 10 11 `shouldBe` False
      inRange 1 10 0 `shouldBe` False
      inRange 3 7 15 `shouldBe` False
  describe "validGrade" $ do
    it "returns true when valid" $ do
      validGrade 0 `shouldBe` True
      validGrade 100 `shouldBe` True
      validGrade 96 `shouldBe` True
    it "returns false when invalid" $ do
      validGrade (-1) `shouldBe` False
      validGrade 101 `shouldBe` False
      validGrade 196 `shouldBe` False
  describe "startsWith" $ do
    it "returns true when list starts with test value" $ do
      startsWith 1 [1..] `shouldBe` True
      startsWith 7 [7, 3, 1, 4] `shouldBe` True
    it "returns false when list doesn't start with test value" $ do
      startsWith 2 [1..] `shouldBe` False
      startsWith 7 [9, 7, 7, 7] `shouldBe` False
  describe "first10" $ do
    it "returns true when test is in list" $ do
      first10 1 [1..] `shouldBe` True
      first10 10 [1..] `shouldBe` True
      first10 8 [1..] `shouldBe` True
    it "returns false when test is not in list" $ do
      first10 11 [1..] `shouldBe` False
      first10 100 [1..] `shouldBe` False
      first10 27 [1..] `shouldBe` False
  describe ">>" $ do
    it "returns true when l has a max greater than r" $ do
      [1..10] Lib.>> [1..5] `shouldBe` True
    it "returns false when r has a max greater than l" $ do
      [1..10] Lib.>> [1..10] `shouldBe` False
      [1..5] Lib.>> [1..10] `shouldBe` False
  describe "factorial" $ do
    it "returns factorial" $ do
      factorial 5 `shouldBe` 120
      factorial 4 `shouldBe` 24
  describe "range" $ do
    it "returns numbers in range" $ do
      range [1..] 10 20 `shouldBe` [11..20]
