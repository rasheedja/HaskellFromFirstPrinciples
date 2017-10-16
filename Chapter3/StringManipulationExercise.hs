module StringManipulationExercise where

addExclamationMark :: String -> String
addExclamationMark x = x ++ "!"

getThirdChar :: String -> Char
getThirdChar x = x !! 2

getFifthChar :: String -> Char
getFifthChar x = x !! 4

letterIndex :: Int -> Char
letterIndex x = curryString !! x

dropNineChars :: String -> String
dropNineChars x = drop 9 x

curryString :: String
curryString = "Curry is awesome"
