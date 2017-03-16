{-# LANGUAGE GADTs #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_HADDOCK hide, not-home #-}

module Infrastructure.Types where

class Show a => Role a where
    role :: a -> String

data DataCenter = Site String [Rack]
    deriving Show

data Rack = Rack Int [Server]
    deriving Show

data Server where
    Server :: Role a => Int -> a -> Server
    Null :: Server

deriving instance Show Server

