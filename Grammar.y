{
module Grammar where
import Tokens
}

%name parseLambda
%tokentype { Token }
%error { parseError }

%token
    int         { TInt $$ }
    bool        { TBool $$ }
    '<'         { TLThan }
    '>'         { TGThan }
    '+'         { TAdd }
    '%'         { TModulo }
    '-'         { TMinus }
    '=='        { TEquality }
    ';'         { TSemiColon }
    if          { TIf }
    else        { TElse }
    then        { TThen } 
    let         { TLet }
    in          { TIn }
    '->'        { TFunc }
    '\\'        { TLambda }
    '='         { TEqual }
    ':='        { TPEqual }
    var         { TVar $$ }
    '('         { TLParen }
    ')'         { TRParen }
    '{'         { TLCurly }
    '}'         { TRCurly }
    Int         { TIntType }
    Bool        { TBoolType }
    ':'         { TColon }
    while       { TWhile }
    '||'        { TOr }
    '&&'        { TAnd }
    print       { TPrintF }
    '['         { TLSquare }
    ']'         { TRSquare }
    ','         { TComma }
    append      { TAppend }
    modify      { TModify }
    len         { TLen }




%right '->' in then else ';'
%left '+' '-' '&&' '%'
%left '||'
%nonassoc '<' '>' '=' ':=' '(' ')' '=='
%%


Expr    : Expr '&&' Expr                                { BinOp "and" $1 $3 }
        | Expr '||' Expr                                { BinOp "or" $1 $3 }
        | Expr '<' Expr                                 { CompBinOp "<" $1 $3 }
        | Expr '>' Expr                                 { CompBinOp ">" $1 $3 }
        | Expr '==' Expr                                { CompBinOp "=" $1 $3 }
        | Expr '+' Expr                                 { IntBinOp "+" $1 $3 }
        | Expr '-' Expr                                 { IntBinOp "-" $1 $3 }
        | Expr '%' Expr                                 { IntBinOp "%" $1 $3}
        | bool                                          { Bool $1 }
        | if Expr then Expr else Expr                   { If $2 $4 $6 }
        | '(' Expr ')'                                  { $2 }
        | var '=' Expr                                  { VarDec $1 $3 }
        | var ':=' Expr                                 { PVarDec $1 $3 }
        | int                                           { Int $1 }
        | var                                           { VarCall $1 }
        | while '(' Expr ')' '{' Expr '}'               { WhileLoop $3 $6 }
        | print '(' Expr ')'                            { PrintF $3 }
        | Expr ';' Expr                                 { ContEval $1 $3 }
        | Expr ';'                                      { $1 }
        | List                                          { ListStr $1 }
        | len '(' Expr ')'                              { ListUnaOp "LEN" $3 }
        | append '(' Expr ',' int ')'                   { ListBinOp "APP" ($3) $5}
        | modify '(' Expr ',' int ',' Expr ')'          { ListBinBinOp "MOD" ($3) $5 $7}


List    : '[' ']'                                       { [] }
        | '[' Cont ']'                                  { $2 }

Cont    : int                                           { [$1] }
        | int ',' Cont                                  { [$1] ++ $3 }






{

parseError :: [Token] -> a
parseError a = error ("Parse error " ++ (show a))



data Expr = Bool Bool                       |
            IntBinOp String Expr Expr       |
            CompBinOp String Expr Expr      |
            If Expr Expr Expr               |
            Integer Int                     |
            Brack Expr                      |
            Int Int                         |
            VarDec String Expr              |
            PVarDec String Expr             |
            VarCall String                  |
            Halt                            |
            WhileLoop Expr Expr             |
            Loop                            |
            ContEval Expr Expr              |
            BinOp String Expr Expr          |
            PrintF Expr                     |
            ListStr [ Int ]                 |
            ListUnaOp String Expr           |
            ListBinOp String Expr Int       |
            ListBinBinOp String Expr Int Expr 
            deriving (Show, Eq)




}