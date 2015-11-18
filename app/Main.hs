module Main where

import Diff
import Patch
import Term
import Syntax
import Control.Comonad.Cofree
import Control.Monad.Free
import Data.Map

a :: Term String Info
a = Info :< (Keyed $ fromList [
  ("hello", Info :< Indexed [ Info :< Leaf "hi" ]),
  ("goodbye", Info :< Leaf "goodbye") ])

b :: Term String Info
b = Info :< (Keyed $ fromList [
  ("hello", Info :< Indexed []),
  ("goodbye", Info :< Indexed []) ])

d :: Diff String
d = Free $ Keyed $ fromList [
  ("hello", Free $ Indexed [ Pure . Delete $ Info :< Leaf "hi" ]),
  ("goodbye", Pure $ Replace (Info :< Leaf "goodbye") (Info :< Indexed [])) ]

main :: IO ()
main = putStrLn "hello world"
