module Data.String.CaseInsensitive
( CI(..)
, unCI
) where

import Prelude

newtype CI = CI String

unCI :: CI -> String
unCI (CI s) = s

instance eqCI :: Eq CI where
  eq (CI a) (CI b) = toUpper a == toUpper b

instance ordCI :: Ord CI where
  compare (CI a) (CI b) = toUpper a `compare` toUpper b

foreign import toUpper :: String -> String
