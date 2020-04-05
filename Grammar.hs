{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,126) ([2096,36912,4192,8288,7937,32768,1,0,0,0,1536,1537,18,768,6144,6148,72,8192,0,16384,0,31,33152,32833,1153,131,2307,262,4614,524,9228,1048,18456,2096,36912,4192,8288,8385,16576,16770,33152,31748,1024,1542,1537,3090,3074,57380,19,12336,12296,144,0,0,0,0,0,0,124,1540,248,3080,48,2048,96,0,1984,24576,384,16384,768,32768,0,0,0,0,0,0,0,8192,57344,11,12336,12296,24720,24592,288,31,388,62,768,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseLambda","Expr","int","bool","'<'","'>'","'+'","'-'","';'","if","else","then","let","in","'->'","'\\\\'","'='","':='","var","'('","')'","'{'","'}'","Int","Bool","':'","while","'||'","'&&'","print","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_3
action_0 (6) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (21) = happyShift action_6
action_0 (22) = happyShift action_7
action_0 (29) = happyShift action_8
action_0 (32) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_3
action_1 (6) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (21) = happyShift action_6
action_1 (22) = happyShift action_7
action_1 (29) = happyShift action_8
action_1 (32) = happyShift action_9
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_11
action_2 (8) = happyShift action_12
action_2 (9) = happyShift action_13
action_2 (10) = happyShift action_14
action_2 (11) = happyShift action_15
action_2 (30) = happyShift action_16
action_2 (31) = happyShift action_17
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_12

action_4 _ = happyReduce_7

action_5 (5) = happyShift action_3
action_5 (6) = happyShift action_4
action_5 (12) = happyShift action_5
action_5 (21) = happyShift action_6
action_5 (22) = happyShift action_7
action_5 (29) = happyShift action_8
action_5 (32) = happyShift action_9
action_5 (4) = happyGoto action_23
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (19) = happyShift action_21
action_6 (20) = happyShift action_22
action_6 _ = happyReduce_13

action_7 (5) = happyShift action_3
action_7 (6) = happyShift action_4
action_7 (12) = happyShift action_5
action_7 (21) = happyShift action_6
action_7 (22) = happyShift action_7
action_7 (29) = happyShift action_8
action_7 (32) = happyShift action_9
action_7 (4) = happyGoto action_20
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (22) = happyShift action_19
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_11
action_10 (8) = happyShift action_12
action_10 (9) = happyShift action_13
action_10 (10) = happyShift action_14
action_10 (11) = happyShift action_15
action_10 (30) = happyShift action_16
action_10 (31) = happyShift action_17
action_10 (33) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_3
action_11 (6) = happyShift action_4
action_11 (12) = happyShift action_5
action_11 (21) = happyShift action_6
action_11 (22) = happyShift action_7
action_11 (29) = happyShift action_8
action_11 (32) = happyShift action_9
action_11 (4) = happyGoto action_36
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_3
action_12 (6) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (21) = happyShift action_6
action_12 (22) = happyShift action_7
action_12 (29) = happyShift action_8
action_12 (32) = happyShift action_9
action_12 (4) = happyGoto action_35
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_3
action_13 (6) = happyShift action_4
action_13 (12) = happyShift action_5
action_13 (21) = happyShift action_6
action_13 (22) = happyShift action_7
action_13 (29) = happyShift action_8
action_13 (32) = happyShift action_9
action_13 (4) = happyGoto action_34
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_3
action_14 (6) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (21) = happyShift action_6
action_14 (22) = happyShift action_7
action_14 (29) = happyShift action_8
action_14 (32) = happyShift action_9
action_14 (4) = happyGoto action_33
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_3
action_15 (6) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (21) = happyShift action_6
action_15 (22) = happyShift action_7
action_15 (29) = happyShift action_8
action_15 (32) = happyShift action_9
action_15 (4) = happyGoto action_32
action_15 _ = happyReduce_17

action_16 (5) = happyShift action_3
action_16 (6) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (21) = happyShift action_6
action_16 (22) = happyShift action_7
action_16 (29) = happyShift action_8
action_16 (32) = happyShift action_9
action_16 (4) = happyGoto action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_3
action_17 (6) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (21) = happyShift action_6
action_17 (22) = happyShift action_7
action_17 (29) = happyShift action_8
action_17 (32) = happyShift action_9
action_17 (4) = happyGoto action_30
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_3
action_18 (6) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (21) = happyShift action_6
action_18 (22) = happyShift action_7
action_18 (29) = happyShift action_8
action_18 (32) = happyShift action_9
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_3
action_19 (6) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (21) = happyShift action_6
action_19 (22) = happyShift action_7
action_19 (29) = happyShift action_8
action_19 (32) = happyShift action_9
action_19 (4) = happyGoto action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_11
action_20 (8) = happyShift action_12
action_20 (9) = happyShift action_13
action_20 (10) = happyShift action_14
action_20 (11) = happyShift action_15
action_20 (23) = happyShift action_27
action_20 (30) = happyShift action_16
action_20 (31) = happyShift action_17
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_3
action_21 (6) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (21) = happyShift action_6
action_21 (22) = happyShift action_7
action_21 (29) = happyShift action_8
action_21 (32) = happyShift action_9
action_21 (4) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_3
action_22 (6) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (21) = happyShift action_6
action_22 (22) = happyShift action_7
action_22 (29) = happyShift action_8
action_22 (32) = happyShift action_9
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_11
action_23 (8) = happyShift action_12
action_23 (9) = happyShift action_13
action_23 (10) = happyShift action_14
action_23 (11) = happyShift action_15
action_23 (14) = happyShift action_24
action_23 (30) = happyShift action_16
action_23 (31) = happyShift action_17
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_3
action_24 (6) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (21) = happyShift action_6
action_24 (22) = happyShift action_7
action_24 (29) = happyShift action_8
action_24 (32) = happyShift action_9
action_24 (4) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyFail []
action_25 (8) = happyFail []
action_25 _ = happyReduce_11

action_26 (7) = happyFail []
action_26 (8) = happyFail []
action_26 _ = happyReduce_10

action_27 _ = happyReduce_9

action_28 (7) = happyShift action_11
action_28 (8) = happyShift action_12
action_28 (9) = happyShift action_13
action_28 (10) = happyShift action_14
action_28 (11) = happyShift action_15
action_28 (23) = happyShift action_38
action_28 (30) = happyShift action_16
action_28 (31) = happyShift action_17
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_11
action_29 (8) = happyShift action_12
action_29 (9) = happyShift action_13
action_29 (10) = happyShift action_14
action_29 (11) = happyShift action_15
action_29 (23) = happyShift action_37
action_29 (30) = happyShift action_16
action_29 (31) = happyShift action_17
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_11
action_30 (8) = happyShift action_12
action_30 (30) = happyShift action_16
action_30 _ = happyReduce_1

action_31 (7) = happyShift action_11
action_31 (8) = happyShift action_12
action_31 _ = happyReduce_2

action_32 (7) = happyShift action_11
action_32 (8) = happyShift action_12
action_32 (9) = happyShift action_13
action_32 (10) = happyShift action_14
action_32 (11) = happyShift action_15
action_32 (30) = happyShift action_16
action_32 (31) = happyShift action_17
action_32 _ = happyReduce_16

action_33 (7) = happyShift action_11
action_33 (8) = happyShift action_12
action_33 (30) = happyShift action_16
action_33 _ = happyReduce_6

action_34 (7) = happyShift action_11
action_34 (8) = happyShift action_12
action_34 (30) = happyShift action_16
action_34 _ = happyReduce_5

action_35 (7) = happyFail []
action_35 (8) = happyFail []
action_35 _ = happyReduce_4

action_36 (7) = happyFail []
action_36 (8) = happyFail []
action_36 _ = happyReduce_3

action_37 _ = happyReduce_15

action_38 (24) = happyShift action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_11
action_39 (8) = happyShift action_12
action_39 (9) = happyShift action_13
action_39 (10) = happyShift action_14
action_39 (11) = happyShift action_15
action_39 (13) = happyShift action_40
action_39 (30) = happyShift action_16
action_39 (31) = happyShift action_17
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (5) = happyShift action_3
action_40 (6) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (21) = happyShift action_6
action_40 (22) = happyShift action_7
action_40 (29) = happyShift action_8
action_40 (32) = happyShift action_9
action_40 (4) = happyGoto action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (5) = happyShift action_3
action_41 (6) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (21) = happyShift action_6
action_41 (22) = happyShift action_7
action_41 (29) = happyShift action_8
action_41 (32) = happyShift action_9
action_41 (4) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_11
action_42 (8) = happyShift action_12
action_42 (9) = happyShift action_13
action_42 (10) = happyShift action_14
action_42 (11) = happyShift action_15
action_42 (25) = happyShift action_44
action_42 (30) = happyShift action_16
action_42 (31) = happyShift action_17
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_11
action_43 (8) = happyShift action_12
action_43 (9) = happyShift action_13
action_43 (10) = happyShift action_14
action_43 (11) = happyShift action_15
action_43 (30) = happyShift action_16
action_43 (31) = happyShift action_17
action_43 _ = happyReduce_8

action_44 _ = happyReduce_14

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinOp "and" happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinOp "or" happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp "<" happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp ">" happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "+" happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "-" happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarDec happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (PVarDec happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  4 happyReduction_13
happyReduction_13 (HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarCall happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happyReduce 7 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (WhileLoop happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintF happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ContEval happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_17 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 5;
	TBool happy_dollar_dollar -> cont 6;
	TLThan -> cont 7;
	TGThan -> cont 8;
	TAdd -> cont 9;
	TMinus -> cont 10;
	TSemiColon -> cont 11;
	TIf -> cont 12;
	TElse -> cont 13;
	TThen -> cont 14;
	TLet -> cont 15;
	TIn -> cont 16;
	TFunc -> cont 17;
	TLambda -> cont 18;
	TEqual -> cont 19;
	TPEqual -> cont 20;
	TVar happy_dollar_dollar -> cont 21;
	TLParen -> cont 22;
	TRParen -> cont 23;
	TLCurly -> cont 24;
	TRCurly -> cont 25;
	TIntType -> cont 26;
	TBoolType -> cont 27;
	TColon -> cont 28;
	TWhile -> cont 29;
	TOr -> cont 30;
	TAnd -> cont 31;
	TPrintF -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseLambda tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
