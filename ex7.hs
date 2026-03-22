{-# LANGUAGE OverloadedStrings #-}
module Bob (responseFor) where

import qualified Data.Text as T
import Data.Text (Text)
import Data.Char (isLetter, isUpper)

responseFor :: Text -> Text
responseFor input
    | isSilence     = "Fine. Be that way!"
    | isYelling && isQuestion = "Calm down, I know what I'm doing!"
    | isYelling     = "Whoa, chill out!"
    | isQuestion    = "Sure."
    | otherwise     = "Whatever."
  where
    t = T.strip input
    
    isSilence  = T.null t
    isQuestion = T.isSuffixOf (T.pack "?") t
    
    hasLetters = T.any isLetter t
    allCaps    = T.all (\c -> not (isLetter c) || isUpper c) t
    isYelling  = hasLetters && allCaps