module CheckPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == y where y = reverse x
