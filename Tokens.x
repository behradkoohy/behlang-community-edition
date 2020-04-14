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
  \*            {\p -> TStar }
  "=="          {\p -> TEquality }
  \%            {\p -> TModulo }
  if            {\p -> TIf }
  then          {\p -> TThen } 
  let           {\p -> TLet }
  else          {\p -> TElse }
  in            {\p -> TIn}
  "="           {\p -> TEqual }
  "!="          {\p -> TNEqual }
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
  "&&"          {\p -> TAnd}
  "||"          {\p -> TOr}
  print         {\p -> TPrintF }
  \[            {\p -> TLSquare }
  \]            {\p -> TRSquare }
  \,            {\p -> TComma }
  append        {\p -> TAppend }
  !!            {\p -> TListAccess }
  len           {\p -> TLen }
  loadS         {\p -> TLoadS }

  $alpha [$alpha $digit \_ \’]*   { \s -> TVar s } 

{
data Token = 
        TInt Int    |
        TBool Bool  |
        TLThan      |
        TAdd        |
        TStar       |
        TModulo     |
        TEquality   |
        TIf         |
        TThen       |
        TLet        |
        TIn         |
        TFunc       |
        TVar String |
        TLambda     |
        TEqual      |
        TNEqual     |
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
        TSemiColon  |
        TAnd        |
        TOr         |
        TPrintF     |
        TLSquare    |
        TRSquare    |
        TComma      |
        TAppend     |
        TListAccess |
        TModify     |
        TLen        |
        TLoadS 
        deriving (Eq, Show)


}