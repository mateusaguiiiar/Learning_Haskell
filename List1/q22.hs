import Data.Char (digitToInt)

descomprime :: String -> String
descomprime [] = []
descomprime ('!':n:a:rest) = replicate (digitToInt n) a ++ descomprime rest
descomprime (x:xs) = x : descomprime xs