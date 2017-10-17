module CorrectingSyntax where

-- 1
x :: Int -> Int -> Int
x = (+)

addOneLengthString :: String -> Int
addOneLengthString xs = x w 1
                      where w = length xs

-- 2
myId :: t -> t
myId = \ x -> x

-- 3
myHead :: [t] -> t
myHead = \(x : xs) -> x

-- 4
myFirst :: (t, t1) -> t
myFirst (a, b) = a
