module TypeKwonDo where

-- Question 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g (f x)

-- Question 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w (q a)

-- Question 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform xAndY = (xz (fst xAndY), yz (snd xAndY))

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToY yToWAndZ x = fst (yToWAndZ (xToY x))
