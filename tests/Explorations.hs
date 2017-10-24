{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS -fno-warn-unused-imports #-}

{-
import Dhall

data Person = Person { age :: Integer, name :: Text }
    deriving (Generic, Show)

instance Interpret Person

main :: IO ()
main = do
    x <- input auto "./config"
    print (x :: Person)
-}

{-
import Data.Functor.Identity

instance Interpret a => Interpret (Identity a)

main :: IO ()
main = do
    x <- input auto "./config2"
    print (x :: Identity Double)
-}


import Dhall

main :: IO ()
main = do
    x <- input auto "./record"
