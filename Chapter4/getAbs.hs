module GetAbs where

myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else negate x
