module FunctionWithWhereExercises where

tripleAndAdd = x * 3 + y where
           x = 3
           y = 1000

multiplyByFive = x * 5 where
             x = 10 * 5 + y
             y = 10

divideAndAdd = z / x + y where
           x = 7
           y = negate x
           z = y * 10

waxOn = x * 5 where
    x = y ^ 2
    y = z + 8
    z = 7

triple x = x * 3

waxOff x = triple x `div` 10
