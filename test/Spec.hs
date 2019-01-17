import Lib

spec::Spec
spec = do
  describe "second" $ do
    it "returns the second element" $ do
      second [1..] `shouldBe` 2
