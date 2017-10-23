module GrabBag where

-- Question 3a
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = (\n -> n + 1) -- could also do (+1) and get rid of the function

-- Question 3b
addFive = \x -> \y -> (if x > y then y else x) + 5

-- Question 3c
mflip f x y = f y x
