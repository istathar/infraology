{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS -fno-warn-unused-imports #-}

module Main where

import Infrastructure.Topology
import ObjectStorageCluster

main :: IO ()
main = do
    putStrLn (show syd3)
