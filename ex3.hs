module ReverseString (reverseString) where

reverseString :: String -> String
reverseString [] = [] 
reverseString (x:xs) = reverseString xs ++ [x]

reverseString :: String -> String
reverseString str = go str []
  where
    go [] acc = acc
    go (x:xs) acc = go xs (x:acc)