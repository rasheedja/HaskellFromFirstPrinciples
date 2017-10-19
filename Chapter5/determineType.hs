{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineType where

-- Question 1
-- x is a Num and x evaluates to 54
x = (* 9) 6

-- y will return the first tuple, y type = Num and String
-- y evaluates to (0, "doge")
y = head [(0, "doge"), (1, "kitteh")]

-- Bool, False
z = if False then True else False

-- a is a Bool, evaluates to False
a = (length [1,2,3,4]) > length ("TACOCAT")

-- Question 2
x2 = 5
y2 = x2 + 5
w2 = y2 * 10
-- w2 will have the Num type

-- Question 3
x3 = 5
y3 = x3 + 5
z3 y3 = y3 * 10
-- z3 is a Num

-- Question 4
x4 = 5
y4 = x4 + 5
f4 = 4 / y4

-- f will be a fractional

-- Question 5
x5 = "Julie"
y5 = "<3"
z5 = "Haskell"
f5 = x5 ++ y5 ++ z5
-- f5 will be a String or [Char]
