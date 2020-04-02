{
module Tokens where
}

%wrapper "basic" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+       ;
  "--".*        ;

  $digit+       {\p -> TInt (read p) }
  True          {\p -> TBool True }
  False         {\p -> TBool False }
  \;            {\p -> TSemiColon }
  \<            {\p -> TLThan }
  \>            {\p -> TGThan }
  \+            {\p -> TAdd }
  \-            {\p -> TMinus }
  if            {\p -> TIf }
  then          {\p -> TThen } 
  let           {\p -> TLet }
  else          {\p -> TElse }
  in            {\p -> TIn}
  "="           {\p -> TEqual }
  ":="          {\p -> TPEqual }
  "->"          {\p -> TFunc }
  "\"           {\p -> TLambda }
  "("           {\p -> TLParen }
  ")"           {\p -> TRParen }
  "{"           {\p -> TLCurly }
  "}"           {\p -> TRCurly }
  Int           {\p -> TIntType }
  Bool          {\p -> TBoolType }
  ":"           {\p -> TColon}
  while         {\p -> TWhile }
  $alpha [$alpha $digit \_ \’]*   { \s -> TVar s } 

{
data Token = 
        TInt Int    |
        TBool Bool  |
        TLThan      |
        TAdd        |
        TIf         |
        TThen       |
        TLet        |
        TIn         |
        TFunc       |
        TVar String |
        TLambda     |
        TEqual      |
        TPEqual     |
        TLParen     |
        TRParen     |
        TLCurly     |
        TRCurly     |
        TIntType    |
        TBoolType   |
        TElse       |
        TColon      |
        TGThan      |
        TMinus      |
        TWhile      |
        TSemiColon
        deriving (Eq, Show)


}