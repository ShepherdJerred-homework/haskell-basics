import Lib
import Test.Hspec

main :: IO ()

main = hspec $ do
  describe "second" $ do
    it "returns the second element" $ do
      second [1..] `shouldBe` 2
