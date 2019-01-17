module Lib (second, firstN, size, inRange, validGrade, startsWith, first10, (Lib.>>), factorial, range) where

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

inRange :: Int -> Int -> Int -> Bool
inRange min max test = if test >= min then if test <= max then True else False else False

validGrade :: Int -> Bool
validGrade grade = inRange 0 100 grade

startsWith :: Int -> [Int] -> Bool
startsWith test list = head list == test

first10 :: Int -> [Int] -> Bool
first10 test list = test `elem` (take 10 list)

(>>) :: [Int] -> [Int] -> Bool
(>>) l r = if maximum l > maximum r then True else False

factorial :: Int -> Int
factorial n = if n == 1 then 1 else factorial (n - 1) * n

range :: [Int] -> Int -> Int -> [Int]
range list start end = drop start (take end list)
