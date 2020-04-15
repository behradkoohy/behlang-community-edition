{
module Tokens where
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+       ;
  "--".*        ;

  $digit+       { tok (\p s -> TInt p (read s) )}
  True          { tok (\p s -> TBool p True )}
  False         { tok (\p s -> TBool p False )}
  \;            { tok (\p s -> TSemiColon p)}
  \<            { tok (\p s -> TLThan p)}
  \>            { tok (\p s -> TGThan p)}
  \+            { tok (\p s -> TAdd p)}
  \-            { tok (\p s -> TMinus p)}
  \*            { tok (\p s -> TStar p)}
  "=="          { tok (\p s -> TEquality p)}
  \%            { tok (\p s -> TModulo p)}
  if            { tok (\p s -> TIf p)}
  then          { tok (\p s -> TThen p)} 
  let           { tok (\p s -> TLet p)}
  else          { tok (\p s -> TElse p)}
  in            { tok (\p s -> TIn p)}
  "="           { tok (\p s -> TEqual p)}
  "!="          { tok (\p s -> TNEqual p)}
  "->"          { tok (\p s -> TFunc p)}
  "\"           { tok (\p s -> TLambda p)}
  "("           { tok (\p s -> TLParen p)}
  ")"           { tok (\p s -> TRParen p)}
  "{"           { tok (\p s -> TLCurly p)}
  "}"           { tok (\p s -> TRCurly p)}
  Int           { tok (\p s -> TIntType p)}
  Bool          { tok (\p s -> TBoolType p)}
  ":"           { tok (\p s -> TColon p)}
  while         { tok (\p s -> TWhile p)}
  "&&"          { tok (\p s -> TAnd p)}
  "||"          { tok (\p s -> TOr p)}
  print         { tok (\p s -> TPrintF p)}
  \[            { tok (\p s -> TLSquare p)}
  \]            { tok (\p s -> TRSquare p)}
  \,            { tok (\p s -> TComma p)}
  append        { tok (\p s -> TAppend p)}
  !!            { tok (\p s -> TListAccess p)}
  len           { tok (\p s -> TLen p)}
  loadS         { tok (\p s -> TLoadS p)}

  $alpha [$alpha $digit \_ \’]*   { \s -> TVar s } 




{

-- Helper function
tok f p s = f p s

data Token = 
        TInt AlexPosn Int                      |
        TBool AlexPosn Bool                    |
        TLThan AlexPosn                        |
        TAdd AlexPosn                          |
        TStar AlexPosn                         |
        TModulo AlexPosn                       |
        TEquality AlexPosn                     |
        TIf AlexPosn                           |
        TThen AlexPosn                         |
        TLet AlexPosn                          |
        TIn AlexPosn                           |
        TFunc AlexPosn                         |
        TVar AlexPosn String                   |
        TLambda AlexPosn                       |
        TEqual AlexPosn                        |
        TNEqual AlexPosn                       |
        TLParen AlexPosn                       |
        TRParen AlexPosn                       |
        TLCurly AlexPosn                       |
        TRCurly AlexPosn                       |
        TIntType AlexPosn                      |
        TBoolType AlexPosn                     |
        TElse AlexPosn                         |
        TColon AlexPosn                        |
        TGThan AlexPosn                        |
        TMinus AlexPosn                        |
        TWhile AlexPosn                        |
        TSemiColon AlexPosn                    |
        TAnd AlexPosn                          |
        TOr AlexPosn                           |
        TPrintF AlexPosn                       |
        TLSquare AlexPosn                      |
        TRSquare AlexPosn                      |
        TComma AlexPosn                        |
        TAppend AlexPosn                       |
        TListAccess AlexPosn                   |
        TModify AlexPosn                       |
        TLen AlexPosn                          |
        TLoadS AlexPosn
        deriving (Eq, Show)


tokenPosn :: Token -> String
tokenPosn (TVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TBool  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TNEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TStar (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TSemiColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TGThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TPrintF (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TAppend (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TListAccess (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TModify (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLoadS (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}







