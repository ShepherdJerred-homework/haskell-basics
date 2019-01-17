import Lib
import Test.Hspec

main :: IO ()

main = hspec $ do
  describe "second" $ do
    it "returns the second element" $ do
      second [1..] `shouldBe` 2
    it "passes test case given by Dr. Foust" $ do
      second [3, 1, 4, 1, 5, 9] `shouldBe` 1
  describe "firstN" $ do
    it "returns expected elements" $ do
      firstN 10 `shouldBe` [1..10]
    it "passes test case given by Dr. Foust" $ do
      firstN 7 `shouldBe` [1..7]
  describe "size" $ do
    it "returns small for 0" $ do
      size [] `shouldBe` "small"
    it "returns small for 9" $ do
      size [1..9] `shouldBe` "small"
    it "returns medium for 10" $ do
      size [1..10] `shouldBe` "medium"
    it "returns medium for 20" $ do
      size [1..20] `shouldBe` "medium"
    it "returns large for 21" $ do
      size [1..21] `shouldBe` "large"
