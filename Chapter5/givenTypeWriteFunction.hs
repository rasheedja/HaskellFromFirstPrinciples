module GivenTypeWriteFunction where

i :: a -> a
i x = x

c :: a -> b -> a
c a b = a

c'' :: b -> a -> b
c'' b a = b

-- c and c'' are the same thing

c' :: a -> b -> b
c' a b = b

r :: [a] -> [a]
r a = tail a
-- can also use fst

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC (aToB  a)

a :: (a -> c) -> a -> a
a aToC a = a

a' :: (a -> b) -> a -> b
a' aToB a = aToB a
