{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,343) ([192,1537,7730,16432,33152,1932,4080,49152,16,0,0,0,0,0,0,0,0,0,16384,0,0,1536,0,192,1537,7730,0,256,0,0,64,0,1,0,1,0,4,0,0,1,0,16384,0,0,0,0,65280,0,268,16432,33152,1932,4108,8288,483,1027,51224,49272,256,12806,12318,32832,35969,3079,24592,58144,769,6148,30920,192,1537,7730,16432,33152,1932,4108,8288,483,1027,51224,49272,256,12806,12318,32832,35969,3079,24592,58144,1,0,256,0,0,128,0,0,0,4108,8288,483,1027,51224,120,255,3080,12289,32832,35969,3079,24592,58144,769,6148,30920,65280,2048,268,0,0,0,2032,49152,16,0,0,0,255,3080,49153,63,17154,1024,0,0,0,0,0,65280,0,396,16320,0,99,4080,49280,16,0,0,0,91,1024,49153,16,16384,61440,15,4288,0,0,0,23296,0,260,4288,0,64,1072,0,16,364,4096,4,0,0,0,0,0,0,0,0,256,0,0,64,0,0,0,0,0,0,0,0,0,64,0,1024,0,0,0,1,3072,24592,58144,1,8192,0,0,0,128,16432,33152,1932,0,0,0,1020,12416,49156,256,12806,49182,63,17154,0,0,0,64512,8195,1072,0,0,0,32768,0,0,0,64,0,1027,51224,120,255,3080,1,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseLambda","Expr","List","Cont","int","bool","'<'","'>'","'+'","'*'","'%'","'-'","'=='","';'","if","else","then","let","in","'->'","'\\\\'","'='","':='","var","'('","')'","'{'","'}'","Int","Bool","':'","while","'||'","'&&'","print","'['","']'","','","'!!'","append","modify","len","loadS","%eof"]
        bit_start = st * 46
        bit_end = (st + 1) * 46
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..45]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (26) = happyShift action_7
action_0 (27) = happyShift action_8
action_0 (34) = happyShift action_9
action_0 (37) = happyShift action_10
action_0 (38) = happyShift action_11
action_0 (42) = happyShift action_12
action_0 (43) = happyShift action_13
action_0 (44) = happyShift action_14
action_0 (45) = happyShift action_15
action_0 (4) = happyGoto action_16
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (17) = happyShift action_6
action_1 (26) = happyShift action_7
action_1 (27) = happyShift action_8
action_1 (34) = happyShift action_9
action_1 (37) = happyShift action_10
action_1 (38) = happyShift action_11
action_1 (42) = happyShift action_12
action_1 (43) = happyShift action_13
action_1 (44) = happyShift action_14
action_1 (45) = happyShift action_15
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (9) = happyShift action_17
action_2 (10) = happyShift action_18
action_2 (11) = happyShift action_19
action_2 (12) = happyShift action_20
action_2 (13) = happyShift action_21
action_2 (14) = happyShift action_22
action_2 (15) = happyShift action_23
action_2 (16) = happyShift action_24
action_2 (35) = happyShift action_25
action_2 (36) = happyShift action_26
action_2 (41) = happyShift action_27
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_21

action_4 _ = happyReduce_15

action_5 _ = happyReduce_10

action_6 (27) = happyShift action_39
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (24) = happyShift action_37
action_7 (25) = happyShift action_38
action_7 _ = happyReduce_16

action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (17) = happyShift action_6
action_8 (26) = happyShift action_7
action_8 (27) = happyShift action_8
action_8 (34) = happyShift action_9
action_8 (37) = happyShift action_10
action_8 (38) = happyShift action_11
action_8 (42) = happyShift action_12
action_8 (43) = happyShift action_13
action_8 (44) = happyShift action_14
action_8 (45) = happyShift action_15
action_8 (4) = happyGoto action_36
action_8 (5) = happyGoto action_3
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (27) = happyShift action_35
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_34
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_32
action_11 (39) = happyShift action_33
action_11 (6) = happyGoto action_31
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (27) = happyShift action_30
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (27) = happyShift action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (27) = happyShift action_28
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_26

action_16 (9) = happyShift action_17
action_16 (10) = happyShift action_18
action_16 (11) = happyShift action_19
action_16 (12) = happyShift action_20
action_16 (13) = happyShift action_21
action_16 (14) = happyShift action_22
action_16 (15) = happyShift action_23
action_16 (16) = happyShift action_24
action_16 (35) = happyShift action_25
action_16 (36) = happyShift action_26
action_16 (41) = happyShift action_27
action_16 (46) = happyAccept
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (26) = happyShift action_7
action_17 (27) = happyShift action_8
action_17 (34) = happyShift action_9
action_17 (37) = happyShift action_10
action_17 (38) = happyShift action_11
action_17 (42) = happyShift action_12
action_17 (43) = happyShift action_13
action_17 (44) = happyShift action_14
action_17 (45) = happyShift action_15
action_17 (4) = happyGoto action_61
action_17 (5) = happyGoto action_3
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (26) = happyShift action_7
action_18 (27) = happyShift action_8
action_18 (34) = happyShift action_9
action_18 (37) = happyShift action_10
action_18 (38) = happyShift action_11
action_18 (42) = happyShift action_12
action_18 (43) = happyShift action_13
action_18 (44) = happyShift action_14
action_18 (45) = happyShift action_15
action_18 (4) = happyGoto action_60
action_18 (5) = happyGoto action_3
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (26) = happyShift action_7
action_19 (27) = happyShift action_8
action_19 (34) = happyShift action_9
action_19 (37) = happyShift action_10
action_19 (38) = happyShift action_11
action_19 (42) = happyShift action_12
action_19 (43) = happyShift action_13
action_19 (44) = happyShift action_14
action_19 (45) = happyShift action_15
action_19 (4) = happyGoto action_59
action_19 (5) = happyGoto action_3
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (26) = happyShift action_7
action_20 (27) = happyShift action_8
action_20 (34) = happyShift action_9
action_20 (37) = happyShift action_10
action_20 (38) = happyShift action_11
action_20 (42) = happyShift action_12
action_20 (43) = happyShift action_13
action_20 (44) = happyShift action_14
action_20 (45) = happyShift action_15
action_20 (4) = happyGoto action_58
action_20 (5) = happyGoto action_3
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (26) = happyShift action_7
action_21 (27) = happyShift action_8
action_21 (34) = happyShift action_9
action_21 (37) = happyShift action_10
action_21 (38) = happyShift action_11
action_21 (42) = happyShift action_12
action_21 (43) = happyShift action_13
action_21 (44) = happyShift action_14
action_21 (45) = happyShift action_15
action_21 (4) = happyGoto action_57
action_21 (5) = happyGoto action_3
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (26) = happyShift action_7
action_22 (27) = happyShift action_8
action_22 (34) = happyShift action_9
action_22 (37) = happyShift action_10
action_22 (38) = happyShift action_11
action_22 (42) = happyShift action_12
action_22 (43) = happyShift action_13
action_22 (44) = happyShift action_14
action_22 (45) = happyShift action_15
action_22 (4) = happyGoto action_56
action_22 (5) = happyGoto action_3
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (26) = happyShift action_7
action_23 (27) = happyShift action_8
action_23 (34) = happyShift action_9
action_23 (37) = happyShift action_10
action_23 (38) = happyShift action_11
action_23 (42) = happyShift action_12
action_23 (43) = happyShift action_13
action_23 (44) = happyShift action_14
action_23 (45) = happyShift action_15
action_23 (4) = happyGoto action_55
action_23 (5) = happyGoto action_3
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (26) = happyShift action_7
action_24 (27) = happyShift action_8
action_24 (34) = happyShift action_9
action_24 (37) = happyShift action_10
action_24 (38) = happyShift action_11
action_24 (42) = happyShift action_12
action_24 (43) = happyShift action_13
action_24 (44) = happyShift action_14
action_24 (45) = happyShift action_15
action_24 (4) = happyGoto action_54
action_24 (5) = happyGoto action_3
action_24 _ = happyReduce_20

action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (26) = happyShift action_7
action_25 (27) = happyShift action_8
action_25 (34) = happyShift action_9
action_25 (37) = happyShift action_10
action_25 (38) = happyShift action_11
action_25 (42) = happyShift action_12
action_25 (43) = happyShift action_13
action_25 (44) = happyShift action_14
action_25 (45) = happyShift action_15
action_25 (4) = happyGoto action_53
action_25 (5) = happyGoto action_3
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (26) = happyShift action_7
action_26 (27) = happyShift action_8
action_26 (34) = happyShift action_9
action_26 (37) = happyShift action_10
action_26 (38) = happyShift action_11
action_26 (42) = happyShift action_12
action_26 (43) = happyShift action_13
action_26 (44) = happyShift action_14
action_26 (45) = happyShift action_15
action_26 (4) = happyGoto action_52
action_26 (5) = happyGoto action_3
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (26) = happyShift action_7
action_27 (27) = happyShift action_8
action_27 (34) = happyShift action_9
action_27 (37) = happyShift action_10
action_27 (38) = happyShift action_11
action_27 (42) = happyShift action_12
action_27 (43) = happyShift action_13
action_27 (44) = happyShift action_14
action_27 (45) = happyShift action_15
action_27 (4) = happyGoto action_51
action_27 (5) = happyGoto action_3
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (26) = happyShift action_7
action_28 (27) = happyShift action_8
action_28 (34) = happyShift action_9
action_28 (37) = happyShift action_10
action_28 (38) = happyShift action_11
action_28 (42) = happyShift action_12
action_28 (43) = happyShift action_13
action_28 (44) = happyShift action_14
action_28 (45) = happyShift action_15
action_28 (4) = happyGoto action_50
action_28 (5) = happyGoto action_3
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (26) = happyShift action_7
action_29 (27) = happyShift action_8
action_29 (34) = happyShift action_9
action_29 (37) = happyShift action_10
action_29 (38) = happyShift action_11
action_29 (42) = happyShift action_12
action_29 (43) = happyShift action_13
action_29 (44) = happyShift action_14
action_29 (45) = happyShift action_15
action_29 (4) = happyGoto action_49
action_29 (5) = happyGoto action_3
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (26) = happyShift action_7
action_30 (27) = happyShift action_8
action_30 (34) = happyShift action_9
action_30 (37) = happyShift action_10
action_30 (38) = happyShift action_11
action_30 (42) = happyShift action_12
action_30 (43) = happyShift action_13
action_30 (44) = happyShift action_14
action_30 (45) = happyShift action_15
action_30 (4) = happyGoto action_48
action_30 (5) = happyGoto action_3
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (39) = happyShift action_47
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (40) = happyShift action_46
action_32 _ = happyReduce_29

action_33 _ = happyReduce_27

action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (17) = happyShift action_6
action_34 (26) = happyShift action_7
action_34 (27) = happyShift action_8
action_34 (34) = happyShift action_9
action_34 (37) = happyShift action_10
action_34 (38) = happyShift action_11
action_34 (42) = happyShift action_12
action_34 (43) = happyShift action_13
action_34 (44) = happyShift action_14
action_34 (45) = happyShift action_15
action_34 (4) = happyGoto action_45
action_34 (5) = happyGoto action_3
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (17) = happyShift action_6
action_35 (26) = happyShift action_7
action_35 (27) = happyShift action_8
action_35 (34) = happyShift action_9
action_35 (37) = happyShift action_10
action_35 (38) = happyShift action_11
action_35 (42) = happyShift action_12
action_35 (43) = happyShift action_13
action_35 (44) = happyShift action_14
action_35 (45) = happyShift action_15
action_35 (4) = happyGoto action_44
action_35 (5) = happyGoto action_3
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (9) = happyShift action_17
action_36 (10) = happyShift action_18
action_36 (11) = happyShift action_19
action_36 (12) = happyShift action_20
action_36 (13) = happyShift action_21
action_36 (14) = happyShift action_22
action_36 (15) = happyShift action_23
action_36 (16) = happyShift action_24
action_36 (28) = happyShift action_43
action_36 (35) = happyShift action_25
action_36 (36) = happyShift action_26
action_36 (41) = happyShift action_27
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (26) = happyShift action_7
action_37 (27) = happyShift action_8
action_37 (34) = happyShift action_9
action_37 (37) = happyShift action_10
action_37 (38) = happyShift action_11
action_37 (42) = happyShift action_12
action_37 (43) = happyShift action_13
action_37 (44) = happyShift action_14
action_37 (45) = happyShift action_15
action_37 (4) = happyGoto action_42
action_37 (5) = happyGoto action_3
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (17) = happyShift action_6
action_38 (26) = happyShift action_7
action_38 (27) = happyShift action_8
action_38 (34) = happyShift action_9
action_38 (37) = happyShift action_10
action_38 (38) = happyShift action_11
action_38 (42) = happyShift action_12
action_38 (43) = happyShift action_13
action_38 (44) = happyShift action_14
action_38 (45) = happyShift action_15
action_38 (4) = happyGoto action_41
action_38 (5) = happyGoto action_3
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (17) = happyShift action_6
action_39 (26) = happyShift action_7
action_39 (27) = happyShift action_8
action_39 (34) = happyShift action_9
action_39 (37) = happyShift action_10
action_39 (38) = happyShift action_11
action_39 (42) = happyShift action_12
action_39 (43) = happyShift action_13
action_39 (44) = happyShift action_14
action_39 (45) = happyShift action_15
action_39 (4) = happyGoto action_40
action_39 (5) = happyGoto action_3
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (9) = happyShift action_17
action_40 (10) = happyShift action_18
action_40 (11) = happyShift action_19
action_40 (12) = happyShift action_20
action_40 (13) = happyShift action_21
action_40 (14) = happyShift action_22
action_40 (15) = happyShift action_23
action_40 (16) = happyShift action_24
action_40 (28) = happyShift action_68
action_40 (35) = happyShift action_25
action_40 (36) = happyShift action_26
action_40 (41) = happyShift action_27
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (9) = happyFail []
action_41 (10) = happyFail []
action_41 (15) = happyFail []
action_41 (41) = happyFail []
action_41 _ = happyReduce_14

action_42 (9) = happyShift action_17
action_42 (10) = happyShift action_18
action_42 (11) = happyShift action_19
action_42 (12) = happyShift action_20
action_42 (13) = happyShift action_21
action_42 (14) = happyShift action_22
action_42 (15) = happyShift action_23
action_42 (35) = happyShift action_25
action_42 (36) = happyShift action_26
action_42 (41) = happyShift action_27
action_42 _ = happyReduce_13

action_43 _ = happyReduce_12

action_44 (9) = happyShift action_17
action_44 (10) = happyShift action_18
action_44 (11) = happyShift action_19
action_44 (12) = happyShift action_20
action_44 (13) = happyShift action_21
action_44 (14) = happyShift action_22
action_44 (15) = happyShift action_23
action_44 (16) = happyShift action_24
action_44 (28) = happyShift action_67
action_44 (35) = happyShift action_25
action_44 (36) = happyShift action_26
action_44 (41) = happyShift action_27
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (9) = happyShift action_17
action_45 (10) = happyShift action_18
action_45 (11) = happyShift action_19
action_45 (12) = happyShift action_20
action_45 (13) = happyShift action_21
action_45 (14) = happyShift action_22
action_45 (15) = happyShift action_23
action_45 (16) = happyShift action_24
action_45 (28) = happyShift action_66
action_45 (35) = happyShift action_25
action_45 (36) = happyShift action_26
action_45 (41) = happyShift action_27
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_32
action_46 (6) = happyGoto action_65
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_28

action_48 (9) = happyShift action_17
action_48 (10) = happyShift action_18
action_48 (11) = happyShift action_19
action_48 (12) = happyShift action_20
action_48 (13) = happyShift action_21
action_48 (14) = happyShift action_22
action_48 (15) = happyShift action_23
action_48 (16) = happyShift action_24
action_48 (35) = happyShift action_25
action_48 (36) = happyShift action_26
action_48 (40) = happyShift action_64
action_48 (41) = happyShift action_27
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (9) = happyShift action_17
action_49 (10) = happyShift action_18
action_49 (11) = happyShift action_19
action_49 (12) = happyShift action_20
action_49 (13) = happyShift action_21
action_49 (14) = happyShift action_22
action_49 (15) = happyShift action_23
action_49 (16) = happyShift action_24
action_49 (35) = happyShift action_25
action_49 (36) = happyShift action_26
action_49 (40) = happyShift action_63
action_49 (41) = happyShift action_27
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (9) = happyShift action_17
action_50 (10) = happyShift action_18
action_50 (11) = happyShift action_19
action_50 (12) = happyShift action_20
action_50 (13) = happyShift action_21
action_50 (14) = happyShift action_22
action_50 (15) = happyShift action_23
action_50 (16) = happyShift action_24
action_50 (28) = happyShift action_62
action_50 (35) = happyShift action_25
action_50 (36) = happyShift action_26
action_50 (41) = happyShift action_27
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (9) = happyFail []
action_51 (10) = happyFail []
action_51 (15) = happyFail []
action_51 (41) = happyFail []
action_51 _ = happyReduce_25

action_52 (9) = happyShift action_17
action_52 (10) = happyShift action_18
action_52 (12) = happyShift action_20
action_52 (13) = happyShift action_21
action_52 (15) = happyShift action_23
action_52 (35) = happyShift action_25
action_52 (41) = happyShift action_27
action_52 _ = happyReduce_1

action_53 (9) = happyShift action_17
action_53 (10) = happyShift action_18
action_53 (15) = happyShift action_23
action_53 (41) = happyShift action_27
action_53 _ = happyReduce_2

action_54 (9) = happyShift action_17
action_54 (10) = happyShift action_18
action_54 (11) = happyShift action_19
action_54 (12) = happyShift action_20
action_54 (13) = happyShift action_21
action_54 (14) = happyShift action_22
action_54 (15) = happyShift action_23
action_54 (16) = happyShift action_24
action_54 (35) = happyShift action_25
action_54 (36) = happyShift action_26
action_54 (41) = happyShift action_27
action_54 _ = happyReduce_19

action_55 (9) = happyFail []
action_55 (10) = happyFail []
action_55 (15) = happyFail []
action_55 (41) = happyFail []
action_55 _ = happyReduce_5

action_56 (9) = happyShift action_17
action_56 (10) = happyShift action_18
action_56 (12) = happyShift action_20
action_56 (13) = happyShift action_21
action_56 (15) = happyShift action_23
action_56 (35) = happyShift action_25
action_56 (41) = happyShift action_27
action_56 _ = happyReduce_7

action_57 (9) = happyShift action_17
action_57 (10) = happyShift action_18
action_57 (15) = happyShift action_23
action_57 (41) = happyShift action_27
action_57 _ = happyReduce_9

action_58 (9) = happyShift action_17
action_58 (10) = happyShift action_18
action_58 (15) = happyShift action_23
action_58 (41) = happyShift action_27
action_58 _ = happyReduce_8

action_59 (9) = happyShift action_17
action_59 (10) = happyShift action_18
action_59 (12) = happyShift action_20
action_59 (13) = happyShift action_21
action_59 (15) = happyShift action_23
action_59 (35) = happyShift action_25
action_59 (41) = happyShift action_27
action_59 _ = happyReduce_6

action_60 (9) = happyFail []
action_60 (10) = happyFail []
action_60 (15) = happyFail []
action_60 (41) = happyFail []
action_60 _ = happyReduce_4

action_61 (9) = happyFail []
action_61 (10) = happyFail []
action_61 (15) = happyFail []
action_61 (41) = happyFail []
action_61 _ = happyReduce_3

action_62 _ = happyReduce_22

action_63 (7) = happyShift action_72
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_30

action_66 _ = happyReduce_18

action_67 (29) = happyShift action_70
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (19) = happyShift action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (27) = happyShift action_76
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (7) = happyShift action_4
action_70 (8) = happyShift action_5
action_70 (17) = happyShift action_6
action_70 (26) = happyShift action_7
action_70 (27) = happyShift action_8
action_70 (34) = happyShift action_9
action_70 (37) = happyShift action_10
action_70 (38) = happyShift action_11
action_70 (42) = happyShift action_12
action_70 (43) = happyShift action_13
action_70 (44) = happyShift action_14
action_70 (45) = happyShift action_15
action_70 (4) = happyGoto action_75
action_70 (5) = happyGoto action_3
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (28) = happyShift action_74
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (40) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (7) = happyShift action_4
action_73 (8) = happyShift action_5
action_73 (17) = happyShift action_6
action_73 (26) = happyShift action_7
action_73 (27) = happyShift action_8
action_73 (34) = happyShift action_9
action_73 (37) = happyShift action_10
action_73 (38) = happyShift action_11
action_73 (42) = happyShift action_12
action_73 (43) = happyShift action_13
action_73 (44) = happyShift action_14
action_73 (45) = happyShift action_15
action_73 (4) = happyGoto action_79
action_73 (5) = happyGoto action_3
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_24

action_75 (9) = happyShift action_17
action_75 (10) = happyShift action_18
action_75 (11) = happyShift action_19
action_75 (12) = happyShift action_20
action_75 (13) = happyShift action_21
action_75 (14) = happyShift action_22
action_75 (15) = happyShift action_23
action_75 (16) = happyShift action_24
action_75 (30) = happyShift action_78
action_75 (35) = happyShift action_25
action_75 (36) = happyShift action_26
action_75 (41) = happyShift action_27
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (7) = happyShift action_4
action_76 (8) = happyShift action_5
action_76 (17) = happyShift action_6
action_76 (26) = happyShift action_7
action_76 (27) = happyShift action_8
action_76 (34) = happyShift action_9
action_76 (37) = happyShift action_10
action_76 (38) = happyShift action_11
action_76 (42) = happyShift action_12
action_76 (43) = happyShift action_13
action_76 (44) = happyShift action_14
action_76 (45) = happyShift action_15
action_76 (4) = happyGoto action_77
action_76 (5) = happyGoto action_3
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (9) = happyShift action_17
action_77 (10) = happyShift action_18
action_77 (11) = happyShift action_19
action_77 (12) = happyShift action_20
action_77 (13) = happyShift action_21
action_77 (14) = happyShift action_22
action_77 (15) = happyShift action_23
action_77 (16) = happyShift action_24
action_77 (28) = happyShift action_81
action_77 (35) = happyShift action_25
action_77 (36) = happyShift action_26
action_77 (41) = happyShift action_27
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_17

action_79 (9) = happyShift action_17
action_79 (10) = happyShift action_18
action_79 (11) = happyShift action_19
action_79 (12) = happyShift action_20
action_79 (13) = happyShift action_21
action_79 (14) = happyShift action_22
action_79 (15) = happyShift action_23
action_79 (16) = happyShift action_24
action_79 (28) = happyShift action_80
action_79 (35) = happyShift action_25
action_79 (36) = happyShift action_26
action_79 (41) = happyShift action_27
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_23

action_81 (18) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (27) = happyShift action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (7) = happyShift action_4
action_83 (8) = happyShift action_5
action_83 (17) = happyShift action_6
action_83 (26) = happyShift action_7
action_83 (27) = happyShift action_8
action_83 (34) = happyShift action_9
action_83 (37) = happyShift action_10
action_83 (38) = happyShift action_11
action_83 (42) = happyShift action_12
action_83 (43) = happyShift action_13
action_83 (44) = happyShift action_14
action_83 (45) = happyShift action_15
action_83 (4) = happyGoto action_84
action_83 (5) = happyGoto action_3
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (9) = happyShift action_17
action_84 (10) = happyShift action_18
action_84 (11) = happyShift action_19
action_84 (12) = happyShift action_20
action_84 (13) = happyShift action_21
action_84 (14) = happyShift action_22
action_84 (15) = happyShift action_23
action_84 (16) = happyShift action_24
action_84 (28) = happyShift action_85
action_84 (35) = happyShift action_25
action_84 (36) = happyShift action_26
action_84 (41) = happyShift action_27
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_11

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
		 (CompBinOp "=" happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "+" happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "-" happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "*" happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (IntBinOp "%" happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 12 4 happyReduction_11
happyReduction_11 (_ `HappyStk`
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

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarDec happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (PVarDec happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  4 happyReduction_16
happyReduction_16 (HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarCall happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 7 4 happyReduction_17
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

happyReduce_18 = happyReduce 4 4 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintF happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ContEval happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  4 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ListStr happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListUnaOp "LEN" happy_var_3 0
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 8 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TInt happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListBinBinOp "MOD" (happy_var_3) happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 6 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyTerminal (TInt happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListBinOp "APP" (happy_var_3) happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ListAcc happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  4 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn4
		 (LoadS
	)

happyReduce_27 = happySpecReduce_2  5 happyReduction_27
happyReduction_27 _
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  6 happyReduction_29
happyReduction_29 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 7;
	TBool happy_dollar_dollar -> cont 8;
	TLThan -> cont 9;
	TGThan -> cont 10;
	TAdd -> cont 11;
	TStar -> cont 12;
	TModulo -> cont 13;
	TMinus -> cont 14;
	TEquality -> cont 15;
	TSemiColon -> cont 16;
	TIf -> cont 17;
	TElse -> cont 18;
	TThen -> cont 19;
	TLet -> cont 20;
	TIn -> cont 21;
	TFunc -> cont 22;
	TLambda -> cont 23;
	TEqual -> cont 24;
	TPEqual -> cont 25;
	TVar happy_dollar_dollar -> cont 26;
	TLParen -> cont 27;
	TRParen -> cont 28;
	TLCurly -> cont 29;
	TRCurly -> cont 30;
	TIntType -> cont 31;
	TBoolType -> cont 32;
	TColon -> cont 33;
	TWhile -> cont 34;
	TOr -> cont 35;
	TAnd -> cont 36;
	TPrintF -> cont 37;
	TLSquare -> cont 38;
	TRSquare -> cont 39;
	TComma -> cont 40;
	TListAccess -> cont 41;
	TAppend -> cont 42;
	TModify -> cont 43;
	TLen -> cont 44;
	TLoadS -> cont 45;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 46 tk tks = happyError' (tks, explist)
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
            ListBinOp String Expr Int       |
            ListAcc Expr Expr               |
            LoadS                           |
            ListBinBinOp String Expr Int Expr 
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
