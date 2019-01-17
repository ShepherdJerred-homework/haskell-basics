module Lib (second, firstN, size) where

second :: [Int] -> Int
second list = list !! 1

firstN :: Int -> [Int]
firstN n = take n [1..]

size :: [Int] -> String
size list = do
  let l = length list
  if l < 10
    then "small"
    else
      if l <= 20
        then "medium"
        else "large"
