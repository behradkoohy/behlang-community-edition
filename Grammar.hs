{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: HappyAddr
happyExpList = HappyA# "\xc0\x00\x01\x03\x19\x0f\x30\x40\xc0\x40\xc6\x03\xf0\x0f\x00\x60\x08\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x02\x00\x00\xc0\x00\x01\x03\x19\x0f\x00\x00\x80\x00\x00\x00\x00\x00\x20\x00\x00\x00\x01\x00\x00\x80\x00\x00\x00\x00\x02\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\x00\x00\x86\x10\x30\x40\xc0\x40\xc6\x03\x0c\x10\x30\x90\xf1\x00\x03\x04\x0c\x64\x3c\xc0\x00\x01\x03\x19\x0f\x30\x40\xc0\x40\xc6\x03\x0c\x10\x30\x90\xf1\x00\x03\x04\x0c\x64\x3c\xc0\x00\x01\x03\x19\x0f\x30\x40\xc0\x40\xc6\x03\x0c\x10\x30\x90\xf1\x00\x03\x04\x0c\x64\x3c\xc0\x00\x01\x03\x19\x0f\x30\x40\xc0\x40\xc6\x03\x0c\x10\x30\x90\xf1\x00\x03\x04\x0c\x64\x3c\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x03\x04\x0c\x64\x3c\xc0\x00\x01\x03\x19\x0f\xc0\x3f\x00\x81\x21\x04\x0c\x10\x30\x90\xf1\x00\x03\x04\x0c\x64\x3c\x00\xff\x00\x04\x86\x10\xc0\x1f\x00\x80\x21\x04\x00\x00\x00\x00\x00\x00\xfc\x03\x10\x18\x42\x00\xff\x00\x04\x86\x10\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfc\x03\x00\x18\x43\x00\xff\x00\x00\xc6\x10\xc0\x3f\x00\x81\x21\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5b\x00\x00\x82\x10\xc0\x10\x00\x00\x20\x04\xf0\x0f\x00\x60\x08\x01\x00\x00\x00\x00\x00\x00\x5b\x00\x00\x82\x10\xc0\x10\x00\x00\x20\x04\x30\x04\x00\x00\x08\x01\x6c\x01\x00\x08\x42\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\xc0\x00\x01\x03\x19\x0f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x80\x00\x00\x00\x0c\x10\x30\x90\xf1\x00\xfc\x03\x10\x18\x42\x00\x00\x00\x00\x40\x00\x30\x40\xc0\x40\xc6\x03\x00\x00\x00\x00\x00\x00\xfc\x03\x40\x18\x42\xc0\x00\x01\x03\x19\x0f\xc0\x3f\x00\x81\x21\x04\x00\x00\x00\x00\x00\x00\xfc\x03\x10\x18\x42\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x03\x04\x0c\x64\x3c\x00\xff\x00\x04\x86\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseLambda","Expr","List","Cont","int","bool","'<'","'>'","'+'","'*'","'%'","'-'","'=='","';'","if","else","then","let","in","'->'","'\\\\'","'='","var","'('","')'","'{'","'}'","Int","Bool","':'","while","'||'","'&&'","print","'['","']'","','","'!!'","append","modify","len","loadS","'!='","%eof"]
        bit_start = st * 46
        bit_end = (st + 1) * 46
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..45]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7#) = happyShift action_4
action_0 (8#) = happyShift action_5
action_0 (17#) = happyShift action_6
action_0 (25#) = happyShift action_7
action_0 (26#) = happyShift action_8
action_0 (33#) = happyShift action_9
action_0 (36#) = happyShift action_10
action_0 (37#) = happyShift action_11
action_0 (41#) = happyShift action_12
action_0 (42#) = happyShift action_13
action_0 (43#) = happyShift action_14
action_0 (44#) = happyShift action_15
action_0 (4#) = happyGoto action_16
action_0 (5#) = happyGoto action_3
action_0 x = happyTcHack x happyFail (happyExpListPerState 0)

action_1 (7#) = happyShift action_4
action_1 (8#) = happyShift action_5
action_1 (17#) = happyShift action_6
action_1 (25#) = happyShift action_7
action_1 (26#) = happyShift action_8
action_1 (33#) = happyShift action_9
action_1 (36#) = happyShift action_10
action_1 (37#) = happyShift action_11
action_1 (41#) = happyShift action_12
action_1 (42#) = happyShift action_13
action_1 (43#) = happyShift action_14
action_1 (44#) = happyShift action_15
action_1 (4#) = happyGoto action_2
action_1 (5#) = happyGoto action_3
action_1 x = happyTcHack x happyFail (happyExpListPerState 1)

action_2 (9#) = happyShift action_17
action_2 (10#) = happyShift action_18
action_2 (11#) = happyShift action_19
action_2 (12#) = happyShift action_20
action_2 (13#) = happyShift action_21
action_2 (14#) = happyShift action_22
action_2 (15#) = happyShift action_23
action_2 (16#) = happyShift action_24
action_2 (34#) = happyShift action_25
action_2 (35#) = happyShift action_26
action_2 (40#) = happyShift action_27
action_2 (45#) = happyShift action_28
action_2 x = happyTcHack x happyFail (happyExpListPerState 2)

action_3 x = happyTcHack x happyReduce_21

action_4 x = happyTcHack x happyReduce_15

action_5 x = happyTcHack x happyReduce_11

action_6 (26#) = happyShift action_39
action_6 x = happyTcHack x happyFail (happyExpListPerState 6)

action_7 (24#) = happyShift action_38
action_7 x = happyTcHack x happyReduce_16

action_8 (7#) = happyShift action_4
action_8 (8#) = happyShift action_5
action_8 (17#) = happyShift action_6
action_8 (25#) = happyShift action_7
action_8 (26#) = happyShift action_8
action_8 (33#) = happyShift action_9
action_8 (36#) = happyShift action_10
action_8 (37#) = happyShift action_11
action_8 (41#) = happyShift action_12
action_8 (42#) = happyShift action_13
action_8 (43#) = happyShift action_14
action_8 (44#) = happyShift action_15
action_8 (4#) = happyGoto action_37
action_8 (5#) = happyGoto action_3
action_8 x = happyTcHack x happyFail (happyExpListPerState 8)

action_9 (26#) = happyShift action_36
action_9 x = happyTcHack x happyFail (happyExpListPerState 9)

action_10 (26#) = happyShift action_35
action_10 x = happyTcHack x happyFail (happyExpListPerState 10)

action_11 (7#) = happyShift action_33
action_11 (38#) = happyShift action_34
action_11 (6#) = happyGoto action_32
action_11 x = happyTcHack x happyFail (happyExpListPerState 11)

action_12 (26#) = happyShift action_31
action_12 x = happyTcHack x happyFail (happyExpListPerState 12)

action_13 (26#) = happyShift action_30
action_13 x = happyTcHack x happyFail (happyExpListPerState 13)

action_14 (26#) = happyShift action_29
action_14 x = happyTcHack x happyFail (happyExpListPerState 14)

action_15 x = happyTcHack x happyReduce_26

action_16 (9#) = happyShift action_17
action_16 (10#) = happyShift action_18
action_16 (11#) = happyShift action_19
action_16 (12#) = happyShift action_20
action_16 (13#) = happyShift action_21
action_16 (14#) = happyShift action_22
action_16 (15#) = happyShift action_23
action_16 (16#) = happyShift action_24
action_16 (34#) = happyShift action_25
action_16 (35#) = happyShift action_26
action_16 (40#) = happyShift action_27
action_16 (45#) = happyShift action_28
action_16 (46#) = happyAccept
action_16 x = happyTcHack x happyFail (happyExpListPerState 16)

action_17 (7#) = happyShift action_4
action_17 (8#) = happyShift action_5
action_17 (17#) = happyShift action_6
action_17 (25#) = happyShift action_7
action_17 (26#) = happyShift action_8
action_17 (33#) = happyShift action_9
action_17 (36#) = happyShift action_10
action_17 (37#) = happyShift action_11
action_17 (41#) = happyShift action_12
action_17 (42#) = happyShift action_13
action_17 (43#) = happyShift action_14
action_17 (44#) = happyShift action_15
action_17 (4#) = happyGoto action_61
action_17 (5#) = happyGoto action_3
action_17 x = happyTcHack x happyFail (happyExpListPerState 17)

action_18 (7#) = happyShift action_4
action_18 (8#) = happyShift action_5
action_18 (17#) = happyShift action_6
action_18 (25#) = happyShift action_7
action_18 (26#) = happyShift action_8
action_18 (33#) = happyShift action_9
action_18 (36#) = happyShift action_10
action_18 (37#) = happyShift action_11
action_18 (41#) = happyShift action_12
action_18 (42#) = happyShift action_13
action_18 (43#) = happyShift action_14
action_18 (44#) = happyShift action_15
action_18 (4#) = happyGoto action_60
action_18 (5#) = happyGoto action_3
action_18 x = happyTcHack x happyFail (happyExpListPerState 18)

action_19 (7#) = happyShift action_4
action_19 (8#) = happyShift action_5
action_19 (17#) = happyShift action_6
action_19 (25#) = happyShift action_7
action_19 (26#) = happyShift action_8
action_19 (33#) = happyShift action_9
action_19 (36#) = happyShift action_10
action_19 (37#) = happyShift action_11
action_19 (41#) = happyShift action_12
action_19 (42#) = happyShift action_13
action_19 (43#) = happyShift action_14
action_19 (44#) = happyShift action_15
action_19 (4#) = happyGoto action_59
action_19 (5#) = happyGoto action_3
action_19 x = happyTcHack x happyFail (happyExpListPerState 19)

action_20 (7#) = happyShift action_4
action_20 (8#) = happyShift action_5
action_20 (17#) = happyShift action_6
action_20 (25#) = happyShift action_7
action_20 (26#) = happyShift action_8
action_20 (33#) = happyShift action_9
action_20 (36#) = happyShift action_10
action_20 (37#) = happyShift action_11
action_20 (41#) = happyShift action_12
action_20 (42#) = happyShift action_13
action_20 (43#) = happyShift action_14
action_20 (44#) = happyShift action_15
action_20 (4#) = happyGoto action_58
action_20 (5#) = happyGoto action_3
action_20 x = happyTcHack x happyFail (happyExpListPerState 20)

action_21 (7#) = happyShift action_4
action_21 (8#) = happyShift action_5
action_21 (17#) = happyShift action_6
action_21 (25#) = happyShift action_7
action_21 (26#) = happyShift action_8
action_21 (33#) = happyShift action_9
action_21 (36#) = happyShift action_10
action_21 (37#) = happyShift action_11
action_21 (41#) = happyShift action_12
action_21 (42#) = happyShift action_13
action_21 (43#) = happyShift action_14
action_21 (44#) = happyShift action_15
action_21 (4#) = happyGoto action_57
action_21 (5#) = happyGoto action_3
action_21 x = happyTcHack x happyFail (happyExpListPerState 21)

action_22 (7#) = happyShift action_4
action_22 (8#) = happyShift action_5
action_22 (17#) = happyShift action_6
action_22 (25#) = happyShift action_7
action_22 (26#) = happyShift action_8
action_22 (33#) = happyShift action_9
action_22 (36#) = happyShift action_10
action_22 (37#) = happyShift action_11
action_22 (41#) = happyShift action_12
action_22 (42#) = happyShift action_13
action_22 (43#) = happyShift action_14
action_22 (44#) = happyShift action_15
action_22 (4#) = happyGoto action_56
action_22 (5#) = happyGoto action_3
action_22 x = happyTcHack x happyFail (happyExpListPerState 22)

action_23 (7#) = happyShift action_4
action_23 (8#) = happyShift action_5
action_23 (17#) = happyShift action_6
action_23 (25#) = happyShift action_7
action_23 (26#) = happyShift action_8
action_23 (33#) = happyShift action_9
action_23 (36#) = happyShift action_10
action_23 (37#) = happyShift action_11
action_23 (41#) = happyShift action_12
action_23 (42#) = happyShift action_13
action_23 (43#) = happyShift action_14
action_23 (44#) = happyShift action_15
action_23 (4#) = happyGoto action_55
action_23 (5#) = happyGoto action_3
action_23 x = happyTcHack x happyFail (happyExpListPerState 23)

action_24 (7#) = happyShift action_4
action_24 (8#) = happyShift action_5
action_24 (17#) = happyShift action_6
action_24 (25#) = happyShift action_7
action_24 (26#) = happyShift action_8
action_24 (33#) = happyShift action_9
action_24 (36#) = happyShift action_10
action_24 (37#) = happyShift action_11
action_24 (41#) = happyShift action_12
action_24 (42#) = happyShift action_13
action_24 (43#) = happyShift action_14
action_24 (44#) = happyShift action_15
action_24 (4#) = happyGoto action_54
action_24 (5#) = happyGoto action_3
action_24 x = happyTcHack x happyReduce_20

action_25 (7#) = happyShift action_4
action_25 (8#) = happyShift action_5
action_25 (17#) = happyShift action_6
action_25 (25#) = happyShift action_7
action_25 (26#) = happyShift action_8
action_25 (33#) = happyShift action_9
action_25 (36#) = happyShift action_10
action_25 (37#) = happyShift action_11
action_25 (41#) = happyShift action_12
action_25 (42#) = happyShift action_13
action_25 (43#) = happyShift action_14
action_25 (44#) = happyShift action_15
action_25 (4#) = happyGoto action_53
action_25 (5#) = happyGoto action_3
action_25 x = happyTcHack x happyFail (happyExpListPerState 25)

action_26 (7#) = happyShift action_4
action_26 (8#) = happyShift action_5
action_26 (17#) = happyShift action_6
action_26 (25#) = happyShift action_7
action_26 (26#) = happyShift action_8
action_26 (33#) = happyShift action_9
action_26 (36#) = happyShift action_10
action_26 (37#) = happyShift action_11
action_26 (41#) = happyShift action_12
action_26 (42#) = happyShift action_13
action_26 (43#) = happyShift action_14
action_26 (44#) = happyShift action_15
action_26 (4#) = happyGoto action_52
action_26 (5#) = happyGoto action_3
action_26 x = happyTcHack x happyFail (happyExpListPerState 26)

action_27 (7#) = happyShift action_4
action_27 (8#) = happyShift action_5
action_27 (17#) = happyShift action_6
action_27 (25#) = happyShift action_7
action_27 (26#) = happyShift action_8
action_27 (33#) = happyShift action_9
action_27 (36#) = happyShift action_10
action_27 (37#) = happyShift action_11
action_27 (41#) = happyShift action_12
action_27 (42#) = happyShift action_13
action_27 (43#) = happyShift action_14
action_27 (44#) = happyShift action_15
action_27 (4#) = happyGoto action_51
action_27 (5#) = happyGoto action_3
action_27 x = happyTcHack x happyFail (happyExpListPerState 27)

action_28 (7#) = happyShift action_4
action_28 (8#) = happyShift action_5
action_28 (17#) = happyShift action_6
action_28 (25#) = happyShift action_7
action_28 (26#) = happyShift action_8
action_28 (33#) = happyShift action_9
action_28 (36#) = happyShift action_10
action_28 (37#) = happyShift action_11
action_28 (41#) = happyShift action_12
action_28 (42#) = happyShift action_13
action_28 (43#) = happyShift action_14
action_28 (44#) = happyShift action_15
action_28 (4#) = happyGoto action_50
action_28 (5#) = happyGoto action_3
action_28 x = happyTcHack x happyFail (happyExpListPerState 28)

action_29 (7#) = happyShift action_4
action_29 (8#) = happyShift action_5
action_29 (17#) = happyShift action_6
action_29 (25#) = happyShift action_7
action_29 (26#) = happyShift action_8
action_29 (33#) = happyShift action_9
action_29 (36#) = happyShift action_10
action_29 (37#) = happyShift action_11
action_29 (41#) = happyShift action_12
action_29 (42#) = happyShift action_13
action_29 (43#) = happyShift action_14
action_29 (44#) = happyShift action_15
action_29 (4#) = happyGoto action_49
action_29 (5#) = happyGoto action_3
action_29 x = happyTcHack x happyFail (happyExpListPerState 29)

action_30 (7#) = happyShift action_4
action_30 (8#) = happyShift action_5
action_30 (17#) = happyShift action_6
action_30 (25#) = happyShift action_7
action_30 (26#) = happyShift action_8
action_30 (33#) = happyShift action_9
action_30 (36#) = happyShift action_10
action_30 (37#) = happyShift action_11
action_30 (41#) = happyShift action_12
action_30 (42#) = happyShift action_13
action_30 (43#) = happyShift action_14
action_30 (44#) = happyShift action_15
action_30 (4#) = happyGoto action_48
action_30 (5#) = happyGoto action_3
action_30 x = happyTcHack x happyFail (happyExpListPerState 30)

action_31 (7#) = happyShift action_4
action_31 (8#) = happyShift action_5
action_31 (17#) = happyShift action_6
action_31 (25#) = happyShift action_7
action_31 (26#) = happyShift action_8
action_31 (33#) = happyShift action_9
action_31 (36#) = happyShift action_10
action_31 (37#) = happyShift action_11
action_31 (41#) = happyShift action_12
action_31 (42#) = happyShift action_13
action_31 (43#) = happyShift action_14
action_31 (44#) = happyShift action_15
action_31 (4#) = happyGoto action_47
action_31 (5#) = happyGoto action_3
action_31 x = happyTcHack x happyFail (happyExpListPerState 31)

action_32 (38#) = happyShift action_46
action_32 x = happyTcHack x happyFail (happyExpListPerState 32)

action_33 (39#) = happyShift action_45
action_33 x = happyTcHack x happyReduce_29

action_34 x = happyTcHack x happyReduce_27

action_35 (7#) = happyShift action_4
action_35 (8#) = happyShift action_5
action_35 (17#) = happyShift action_6
action_35 (25#) = happyShift action_7
action_35 (26#) = happyShift action_8
action_35 (33#) = happyShift action_9
action_35 (36#) = happyShift action_10
action_35 (37#) = happyShift action_11
action_35 (41#) = happyShift action_12
action_35 (42#) = happyShift action_13
action_35 (43#) = happyShift action_14
action_35 (44#) = happyShift action_15
action_35 (4#) = happyGoto action_44
action_35 (5#) = happyGoto action_3
action_35 x = happyTcHack x happyFail (happyExpListPerState 35)

action_36 (7#) = happyShift action_4
action_36 (8#) = happyShift action_5
action_36 (17#) = happyShift action_6
action_36 (25#) = happyShift action_7
action_36 (26#) = happyShift action_8
action_36 (33#) = happyShift action_9
action_36 (36#) = happyShift action_10
action_36 (37#) = happyShift action_11
action_36 (41#) = happyShift action_12
action_36 (42#) = happyShift action_13
action_36 (43#) = happyShift action_14
action_36 (44#) = happyShift action_15
action_36 (4#) = happyGoto action_43
action_36 (5#) = happyGoto action_3
action_36 x = happyTcHack x happyFail (happyExpListPerState 36)

action_37 (9#) = happyShift action_17
action_37 (10#) = happyShift action_18
action_37 (11#) = happyShift action_19
action_37 (12#) = happyShift action_20
action_37 (13#) = happyShift action_21
action_37 (14#) = happyShift action_22
action_37 (15#) = happyShift action_23
action_37 (16#) = happyShift action_24
action_37 (27#) = happyShift action_42
action_37 (34#) = happyShift action_25
action_37 (35#) = happyShift action_26
action_37 (40#) = happyShift action_27
action_37 (45#) = happyShift action_28
action_37 x = happyTcHack x happyFail (happyExpListPerState 37)

action_38 (7#) = happyShift action_4
action_38 (8#) = happyShift action_5
action_38 (17#) = happyShift action_6
action_38 (25#) = happyShift action_7
action_38 (26#) = happyShift action_8
action_38 (33#) = happyShift action_9
action_38 (36#) = happyShift action_10
action_38 (37#) = happyShift action_11
action_38 (41#) = happyShift action_12
action_38 (42#) = happyShift action_13
action_38 (43#) = happyShift action_14
action_38 (44#) = happyShift action_15
action_38 (4#) = happyGoto action_41
action_38 (5#) = happyGoto action_3
action_38 x = happyTcHack x happyFail (happyExpListPerState 38)

action_39 (7#) = happyShift action_4
action_39 (8#) = happyShift action_5
action_39 (17#) = happyShift action_6
action_39 (25#) = happyShift action_7
action_39 (26#) = happyShift action_8
action_39 (33#) = happyShift action_9
action_39 (36#) = happyShift action_10
action_39 (37#) = happyShift action_11
action_39 (41#) = happyShift action_12
action_39 (42#) = happyShift action_13
action_39 (43#) = happyShift action_14
action_39 (44#) = happyShift action_15
action_39 (4#) = happyGoto action_40
action_39 (5#) = happyGoto action_3
action_39 x = happyTcHack x happyFail (happyExpListPerState 39)

action_40 (9#) = happyShift action_17
action_40 (10#) = happyShift action_18
action_40 (11#) = happyShift action_19
action_40 (12#) = happyShift action_20
action_40 (13#) = happyShift action_21
action_40 (14#) = happyShift action_22
action_40 (15#) = happyShift action_23
action_40 (16#) = happyShift action_24
action_40 (27#) = happyShift action_68
action_40 (34#) = happyShift action_25
action_40 (35#) = happyShift action_26
action_40 (40#) = happyShift action_27
action_40 (45#) = happyShift action_28
action_40 x = happyTcHack x happyFail (happyExpListPerState 40)

action_41 (9#) = happyShift action_17
action_41 (10#) = happyShift action_18
action_41 (11#) = happyShift action_19
action_41 (12#) = happyShift action_20
action_41 (13#) = happyShift action_21
action_41 (14#) = happyShift action_22
action_41 (15#) = happyShift action_23
action_41 (34#) = happyShift action_25
action_41 (35#) = happyShift action_26
action_41 (40#) = happyShift action_27
action_41 (45#) = happyShift action_28
action_41 x = happyTcHack x happyReduce_14

action_42 x = happyTcHack x happyReduce_13

action_43 (9#) = happyShift action_17
action_43 (10#) = happyShift action_18
action_43 (11#) = happyShift action_19
action_43 (12#) = happyShift action_20
action_43 (13#) = happyShift action_21
action_43 (14#) = happyShift action_22
action_43 (15#) = happyShift action_23
action_43 (16#) = happyShift action_24
action_43 (27#) = happyShift action_67
action_43 (34#) = happyShift action_25
action_43 (35#) = happyShift action_26
action_43 (40#) = happyShift action_27
action_43 (45#) = happyShift action_28
action_43 x = happyTcHack x happyFail (happyExpListPerState 43)

action_44 (9#) = happyShift action_17
action_44 (10#) = happyShift action_18
action_44 (11#) = happyShift action_19
action_44 (12#) = happyShift action_20
action_44 (13#) = happyShift action_21
action_44 (14#) = happyShift action_22
action_44 (15#) = happyShift action_23
action_44 (16#) = happyShift action_24
action_44 (27#) = happyShift action_66
action_44 (34#) = happyShift action_25
action_44 (35#) = happyShift action_26
action_44 (40#) = happyShift action_27
action_44 (45#) = happyShift action_28
action_44 x = happyTcHack x happyFail (happyExpListPerState 44)

action_45 (7#) = happyShift action_33
action_45 (6#) = happyGoto action_65
action_45 x = happyTcHack x happyFail (happyExpListPerState 45)

action_46 x = happyTcHack x happyReduce_28

action_47 (9#) = happyShift action_17
action_47 (10#) = happyShift action_18
action_47 (11#) = happyShift action_19
action_47 (12#) = happyShift action_20
action_47 (13#) = happyShift action_21
action_47 (14#) = happyShift action_22
action_47 (15#) = happyShift action_23
action_47 (16#) = happyShift action_24
action_47 (34#) = happyShift action_25
action_47 (35#) = happyShift action_26
action_47 (39#) = happyShift action_64
action_47 (40#) = happyShift action_27
action_47 (45#) = happyShift action_28
action_47 x = happyTcHack x happyFail (happyExpListPerState 47)

action_48 (9#) = happyShift action_17
action_48 (10#) = happyShift action_18
action_48 (11#) = happyShift action_19
action_48 (12#) = happyShift action_20
action_48 (13#) = happyShift action_21
action_48 (14#) = happyShift action_22
action_48 (15#) = happyShift action_23
action_48 (16#) = happyShift action_24
action_48 (34#) = happyShift action_25
action_48 (35#) = happyShift action_26
action_48 (39#) = happyShift action_63
action_48 (40#) = happyShift action_27
action_48 (45#) = happyShift action_28
action_48 x = happyTcHack x happyFail (happyExpListPerState 48)

action_49 (9#) = happyShift action_17
action_49 (10#) = happyShift action_18
action_49 (11#) = happyShift action_19
action_49 (12#) = happyShift action_20
action_49 (13#) = happyShift action_21
action_49 (14#) = happyShift action_22
action_49 (15#) = happyShift action_23
action_49 (16#) = happyShift action_24
action_49 (27#) = happyShift action_62
action_49 (34#) = happyShift action_25
action_49 (35#) = happyShift action_26
action_49 (40#) = happyShift action_27
action_49 (45#) = happyShift action_28
action_49 x = happyTcHack x happyFail (happyExpListPerState 49)

action_50 (9#) = happyFail []
action_50 (10#) = happyFail []
action_50 (15#) = happyFail []
action_50 (40#) = happyFail []
action_50 (45#) = happyFail []
action_50 x = happyTcHack x happyReduce_6

action_51 (9#) = happyFail []
action_51 (10#) = happyFail []
action_51 (15#) = happyFail []
action_51 (40#) = happyFail []
action_51 (45#) = happyFail []
action_51 x = happyTcHack x happyReduce_25

action_52 (9#) = happyShift action_17
action_52 (10#) = happyShift action_18
action_52 (12#) = happyShift action_20
action_52 (13#) = happyShift action_21
action_52 (15#) = happyShift action_23
action_52 (34#) = happyShift action_25
action_52 (40#) = happyShift action_27
action_52 (45#) = happyShift action_28
action_52 x = happyTcHack x happyReduce_1

action_53 (9#) = happyShift action_17
action_53 (10#) = happyShift action_18
action_53 (15#) = happyShift action_23
action_53 (40#) = happyShift action_27
action_53 (45#) = happyShift action_28
action_53 x = happyTcHack x happyReduce_2

action_54 (9#) = happyShift action_17
action_54 (10#) = happyShift action_18
action_54 (11#) = happyShift action_19
action_54 (12#) = happyShift action_20
action_54 (13#) = happyShift action_21
action_54 (14#) = happyShift action_22
action_54 (15#) = happyShift action_23
action_54 (16#) = happyShift action_24
action_54 (34#) = happyShift action_25
action_54 (35#) = happyShift action_26
action_54 (40#) = happyShift action_27
action_54 (45#) = happyShift action_28
action_54 x = happyTcHack x happyReduce_19

action_55 (9#) = happyFail []
action_55 (10#) = happyFail []
action_55 (15#) = happyFail []
action_55 (40#) = happyFail []
action_55 (45#) = happyFail []
action_55 x = happyTcHack x happyReduce_5

action_56 (9#) = happyShift action_17
action_56 (10#) = happyShift action_18
action_56 (12#) = happyShift action_20
action_56 (13#) = happyShift action_21
action_56 (15#) = happyShift action_23
action_56 (34#) = happyShift action_25
action_56 (40#) = happyShift action_27
action_56 (45#) = happyShift action_28
action_56 x = happyTcHack x happyReduce_8

action_57 (9#) = happyShift action_17
action_57 (10#) = happyShift action_18
action_57 (15#) = happyShift action_23
action_57 (40#) = happyShift action_27
action_57 (45#) = happyShift action_28
action_57 x = happyTcHack x happyReduce_10

action_58 (9#) = happyShift action_17
action_58 (10#) = happyShift action_18
action_58 (15#) = happyShift action_23
action_58 (40#) = happyShift action_27
action_58 (45#) = happyShift action_28
action_58 x = happyTcHack x happyReduce_9

action_59 (9#) = happyShift action_17
action_59 (10#) = happyShift action_18
action_59 (12#) = happyShift action_20
action_59 (13#) = happyShift action_21
action_59 (15#) = happyShift action_23
action_59 (34#) = happyShift action_25
action_59 (40#) = happyShift action_27
action_59 (45#) = happyShift action_28
action_59 x = happyTcHack x happyReduce_7

action_60 (9#) = happyFail []
action_60 (10#) = happyFail []
action_60 (15#) = happyFail []
action_60 (40#) = happyFail []
action_60 (45#) = happyFail []
action_60 x = happyTcHack x happyReduce_4

action_61 (9#) = happyFail []
action_61 (10#) = happyFail []
action_61 (15#) = happyFail []
action_61 (40#) = happyFail []
action_61 (45#) = happyFail []
action_61 x = happyTcHack x happyReduce_3

action_62 x = happyTcHack x happyReduce_22

action_63 (7#) = happyShift action_72
action_63 x = happyTcHack x happyFail (happyExpListPerState 63)

action_64 (7#) = happyShift action_4
action_64 (8#) = happyShift action_5
action_64 (17#) = happyShift action_6
action_64 (25#) = happyShift action_7
action_64 (26#) = happyShift action_8
action_64 (33#) = happyShift action_9
action_64 (36#) = happyShift action_10
action_64 (37#) = happyShift action_11
action_64 (41#) = happyShift action_12
action_64 (42#) = happyShift action_13
action_64 (43#) = happyShift action_14
action_64 (44#) = happyShift action_15
action_64 (4#) = happyGoto action_71
action_64 (5#) = happyGoto action_3
action_64 x = happyTcHack x happyFail (happyExpListPerState 64)

action_65 x = happyTcHack x happyReduce_30

action_66 x = happyTcHack x happyReduce_18

action_67 (28#) = happyShift action_70
action_67 x = happyTcHack x happyFail (happyExpListPerState 67)

action_68 (19#) = happyShift action_69
action_68 x = happyTcHack x happyFail (happyExpListPerState 68)

action_69 (26#) = happyShift action_76
action_69 x = happyTcHack x happyFail (happyExpListPerState 69)

action_70 (7#) = happyShift action_4
action_70 (8#) = happyShift action_5
action_70 (17#) = happyShift action_6
action_70 (25#) = happyShift action_7
action_70 (26#) = happyShift action_8
action_70 (33#) = happyShift action_9
action_70 (36#) = happyShift action_10
action_70 (37#) = happyShift action_11
action_70 (41#) = happyShift action_12
action_70 (42#) = happyShift action_13
action_70 (43#) = happyShift action_14
action_70 (44#) = happyShift action_15
action_70 (4#) = happyGoto action_75
action_70 (5#) = happyGoto action_3
action_70 x = happyTcHack x happyFail (happyExpListPerState 70)

action_71 (9#) = happyShift action_17
action_71 (10#) = happyShift action_18
action_71 (11#) = happyShift action_19
action_71 (12#) = happyShift action_20
action_71 (13#) = happyShift action_21
action_71 (14#) = happyShift action_22
action_71 (15#) = happyShift action_23
action_71 (16#) = happyShift action_24
action_71 (27#) = happyShift action_74
action_71 (34#) = happyShift action_25
action_71 (35#) = happyShift action_26
action_71 (40#) = happyShift action_27
action_71 (45#) = happyShift action_28
action_71 x = happyTcHack x happyFail (happyExpListPerState 71)

action_72 (39#) = happyShift action_73
action_72 x = happyTcHack x happyFail (happyExpListPerState 72)

action_73 (7#) = happyShift action_4
action_73 (8#) = happyShift action_5
action_73 (17#) = happyShift action_6
action_73 (25#) = happyShift action_7
action_73 (26#) = happyShift action_8
action_73 (33#) = happyShift action_9
action_73 (36#) = happyShift action_10
action_73 (37#) = happyShift action_11
action_73 (41#) = happyShift action_12
action_73 (42#) = happyShift action_13
action_73 (43#) = happyShift action_14
action_73 (44#) = happyShift action_15
action_73 (4#) = happyGoto action_79
action_73 (5#) = happyGoto action_3
action_73 x = happyTcHack x happyFail (happyExpListPerState 73)

action_74 x = happyTcHack x happyReduce_24

action_75 (9#) = happyShift action_17
action_75 (10#) = happyShift action_18
action_75 (11#) = happyShift action_19
action_75 (12#) = happyShift action_20
action_75 (13#) = happyShift action_21
action_75 (14#) = happyShift action_22
action_75 (15#) = happyShift action_23
action_75 (16#) = happyShift action_24
action_75 (29#) = happyShift action_78
action_75 (34#) = happyShift action_25
action_75 (35#) = happyShift action_26
action_75 (40#) = happyShift action_27
action_75 (45#) = happyShift action_28
action_75 x = happyTcHack x happyFail (happyExpListPerState 75)

action_76 (7#) = happyShift action_4
action_76 (8#) = happyShift action_5
action_76 (17#) = happyShift action_6
action_76 (25#) = happyShift action_7
action_76 (26#) = happyShift action_8
action_76 (33#) = happyShift action_9
action_76 (36#) = happyShift action_10
action_76 (37#) = happyShift action_11
action_76 (41#) = happyShift action_12
action_76 (42#) = happyShift action_13
action_76 (43#) = happyShift action_14
action_76 (44#) = happyShift action_15
action_76 (4#) = happyGoto action_77
action_76 (5#) = happyGoto action_3
action_76 x = happyTcHack x happyFail (happyExpListPerState 76)

action_77 (9#) = happyShift action_17
action_77 (10#) = happyShift action_18
action_77 (11#) = happyShift action_19
action_77 (12#) = happyShift action_20
action_77 (13#) = happyShift action_21
action_77 (14#) = happyShift action_22
action_77 (15#) = happyShift action_23
action_77 (16#) = happyShift action_24
action_77 (27#) = happyShift action_81
action_77 (34#) = happyShift action_25
action_77 (35#) = happyShift action_26
action_77 (40#) = happyShift action_27
action_77 (45#) = happyShift action_28
action_77 x = happyTcHack x happyFail (happyExpListPerState 77)

action_78 x = happyTcHack x happyReduce_17

action_79 (9#) = happyShift action_17
action_79 (10#) = happyShift action_18
action_79 (11#) = happyShift action_19
action_79 (12#) = happyShift action_20
action_79 (13#) = happyShift action_21
action_79 (14#) = happyShift action_22
action_79 (15#) = happyShift action_23
action_79 (16#) = happyShift action_24
action_79 (27#) = happyShift action_80
action_79 (34#) = happyShift action_25
action_79 (35#) = happyShift action_26
action_79 (40#) = happyShift action_27
action_79 (45#) = happyShift action_28
action_79 x = happyTcHack x happyFail (happyExpListPerState 79)

action_80 x = happyTcHack x happyReduce_23

action_81 (18#) = happyShift action_82
action_81 x = happyTcHack x happyFail (happyExpListPerState 81)

action_82 (26#) = happyShift action_83
action_82 x = happyTcHack x happyFail (happyExpListPerState 82)

action_83 (7#) = happyShift action_4
action_83 (8#) = happyShift action_5
action_83 (17#) = happyShift action_6
action_83 (25#) = happyShift action_7
action_83 (26#) = happyShift action_8
action_83 (33#) = happyShift action_9
action_83 (36#) = happyShift action_10
action_83 (37#) = happyShift action_11
action_83 (41#) = happyShift action_12
action_83 (42#) = happyShift action_13
action_83 (43#) = happyShift action_14
action_83 (44#) = happyShift action_15
action_83 (4#) = happyGoto action_84
action_83 (5#) = happyGoto action_3
action_83 x = happyTcHack x happyFail (happyExpListPerState 83)

action_84 (9#) = happyShift action_17
action_84 (10#) = happyShift action_18
action_84 (11#) = happyShift action_19
action_84 (12#) = happyShift action_20
action_84 (13#) = happyShift action_21
action_84 (14#) = happyShift action_22
action_84 (15#) = happyShift action_23
action_84 (16#) = happyShift action_24
action_84 (27#) = happyShift action_85
action_84 (34#) = happyShift action_25
action_84 (35#) = happyShift action_26
action_84 (40#) = happyShift action_27
action_84 (45#) = happyShift action_28
action_84 x = happyTcHack x happyFail (happyExpListPerState 84)

action_85 x = happyTcHack x happyReduce_12

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_3  4# happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinOp "and" happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_3  4# happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinOp "or" happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happySpecReduce_3  4# happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp "<" happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happySpecReduce_3  4# happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp ">" happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happySpecReduce_3  4# happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp "=" happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happySpecReduce_3  4# happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (CompBinOp "!" happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happySpecReduce_3  4# happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "+" happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happySpecReduce_3  4# happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "-" happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happySpecReduce_3  4# happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "*" happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happySpecReduce_3  4# happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "%" happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happySpecReduce_1  4# happyReduction_11
happyReduction_11 (HappyTerminal (TBool _ happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happyReduce 12# 4# happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_3  4# happyReduction_13
happyReduction_13 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_3  4# happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (VarDec happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  4# happyReduction_15
happyReduction_15 (HappyTerminal (TInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  4# happyReduction_16
happyReduction_16 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (VarCall happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happyReduce 7# 4# happyReduction_17
happyReduction_17 (_ `HappyStk`
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

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happyReduce 4# 4# happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintF happy_var_3
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_3  4# happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ContEval happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_2  4# happyReduction_20
happyReduction_20 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_20 _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  4# happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ListStr happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happyReduce 4# 4# happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListUnaOp "LEN" happy_var_3 0
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happyReduce 8# 4# happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TInt _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListBinBinOp "MOD" (happy_var_3) happy_var_5 happy_var_7
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happyReduce 6# 4# happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListBinOp "APP" (happy_var_3) happy_var_5
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_3  4# happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ListAcc happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  4# happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn4
		 (LoadS
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_2  5# happyReduction_27
happyReduction_27 _
	_
	 =  HappyAbsSyn5
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_3  5# happyReduction_28
happyReduction_28 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_1  6# happyReduction_29
happyReduction_29 (HappyTerminal (TInt _ happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_29 _  = notHappyAtAll 

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_3  6# happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TInt _ happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46# 46# notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt _ happy_dollar_dollar -> cont 7#;
	TBool _ happy_dollar_dollar -> cont 8#;
	TLThan _ -> cont 9#;
	TGThan _ -> cont 10#;
	TAdd _ -> cont 11#;
	TStar _ -> cont 12#;
	TModulo _ -> cont 13#;
	TMinus _ -> cont 14#;
	TEquality _ -> cont 15#;
	TSemiColon _ -> cont 16#;
	TIf _ -> cont 17#;
	TElse _ -> cont 18#;
	TThen _ -> cont 19#;
	TLet _ -> cont 20#;
	TIn _ -> cont 21#;
	TFunc _ -> cont 22#;
	TLambda _ -> cont 23#;
	TEqual _ -> cont 24#;
	TVar _ happy_dollar_dollar -> cont 25#;
	TLParen _ -> cont 26#;
	TRParen _ -> cont 27#;
	TLCurly _ -> cont 28#;
	TRCurly _ -> cont 29#;
	TIntType _ -> cont 30#;
	TBoolType _ -> cont 31#;
	TColon _ -> cont 32#;
	TWhile _ -> cont 33#;
	TOr _ -> cont 34#;
	TAnd _ -> cont 35#;
	TPrintF _ -> cont 36#;
	TLSquare _ -> cont 37#;
	TRSquare _ -> cont 38#;
	TComma _ -> cont 39#;
	TListAccess _ -> cont 40#;
	TAppend _ -> cont 41#;
	TModify _ -> cont 42#;
	TLen _ -> cont 43#;
	TLoadS _ -> cont 44#;
	TNEqual _ -> cont 45#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 46# tk tks = happyError' (tks, explist)
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


-- parseError :: [Token] -> a
-- parseError a = error ("Parse error " ++ (show a))
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))


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
            ListUnaOp String Expr Int       |
            ListBinOp String Expr Expr      |
            ListAcc Expr Expr               |
            LoadS                           |
            ListBinBinOp String Expr Int Expr 
            deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































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
happyAccept 1# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j ) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

































indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Happy_GHC_Exts.Int# ->                    -- token number
         Happy_GHC_Exts.Int# ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 1# tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 1# tk st sts stk
     = happyFail [] 1# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Happy_GHC_Exts.Int#
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n ((_):(t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 1# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (Happy_GHC_Exts.I# (i)) -> i }) in
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
        action 1# 1# tk (HappyState (action)) sts ((HappyErrorToken (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


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
