-- Haskell module generated by the BNF converter

{-# OPTIONS_GHC -fno-warn-unused-matches #-}

module SkelNumbers where

import Prelude (($), Either(..), String, (++), Show, show)
import qualified AbsNumbers

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transExp :: AbsNumbers.Exp -> Result
transExp x = case x of
  AbsNumbers.Plus exp1 exp2 -> failure x
  AbsNumbers.Times exp1 exp2 -> failure x
  AbsNumbers.Num qq -> failure x

transQQ :: AbsNumbers.QQ -> Result
transQQ x = case x of
  AbsNumbers.QQ ii pp -> failure x

transII :: AbsNumbers.II -> Result
transII x = case x of
  AbsNumbers.II nn1 nn2 -> failure x

transNN :: AbsNumbers.NN -> Result
transNN x = case x of
  AbsNumbers.O -> failure x
  AbsNumbers.S nn -> failure x

transPP :: AbsNumbers.PP -> Result
transPP x = case x of
  AbsNumbers.I -> failure x
  AbsNumbers.T pp -> failure x
