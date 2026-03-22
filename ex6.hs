module Pangram (isPangram) where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = all (`elem` normalizedText) ['a'..'z']
  where
    normalizedText = map toLower text