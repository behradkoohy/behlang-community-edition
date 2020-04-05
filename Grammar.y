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
    '-'         { TMinus }
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




%right '->' in then else ';'
%left '+' '-' '&&'
%left '||'
%nonassoc '<' '>' '=' ':=' '(' ')' 
%%


Expr    : Expr '&&' Expr                                { BinOp "and" $1 $3 }
        | Expr '||' Expr                                { BinOp "or" $1 $3 }
        | Expr '<' Expr                                 { CompBinOp "<" $1 $3 }
        | Expr '>' Expr                                 { CompBinOp ">" $1 $3 }
        | Expr '+' Expr                                 { IntBinOp "+" $1 $3 }
        | Expr '-' Expr                                 { IntBinOp "-" $1 $3 }
        | bool                                          { Bool $1 }
        | if Expr then Expr else Expr                   { If $2 $4 $6 }
        | '(' Expr ')'                                  { $2 }
        | var '=' Expr                                  { VarDec $1 $3 }
        | var ':=' Expr                                 { PVarDec $1 $3 }
        | int                                           { Int $1 }
        | var                                           { VarCall $1 }
        | while '(' Expr ')' '{' Expr '}'               { WhileLoop $3 $6 }
        | print '(' Expr ')'                          { PrintF $3 }
        | Expr ';' Expr                                 { ContEval $1 $3 }
        | Expr ';'                                      { $1 }





{

parseError :: [Token] -> a
parseError a = error ("Parse error " ++ (show a))



data Expr = Bool Bool                       |
            IntBinOp String Expr Expr       |
            CompBinOp String Expr Expr      |
            If Expr Expr Expr               |
            Let Expr Type Expr Expr         |
            Lam Expr Type Expr              |
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
            PrintF Expr 
            deriving (Show, Eq)


data Type = IntType                         | 
            BoolType                        | 
            FuncType Type Type 
            deriving (Show, Eq)


}