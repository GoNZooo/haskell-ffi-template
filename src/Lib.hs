{-# LANGUAGE ForeignFunctionInterface #-}

module Lib
    ( helloWorld
    ) where

foreign import ccall "helloWorld"
  helloWorld :: IO ()
