module Parametricity where

-- Try to create a fully polymorphic function that changes it's parameter
-- Impossible but try anyway
polyForDays a = a ++ " impossible"

-- Two versions of a -> a -> a
versionOne a = a + a
versionTwo a = a ++ a

-- a -> b -> b, as many implementations as you can
aAndBOne a b = a + b
aAndBTwo a b = a ++ b
aAndBThree a b = max a b
aAndBFour a b = min a b
aAndBFive a b = a == b
-- Could go on forever
