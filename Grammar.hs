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
happyExpList = Happy_Data_Array.listArray (0,243) ([32960,768,921,1030,51224,49180,31,384,0,0,0,0,0,0,0,0,768,3074,3684,0,24,49152,128,39171,3,4096,0,0,128,32768,0,16384,0,8192,0,0,256,0,0,8,57344,15,192,32960,768,921,1030,51224,12316,49184,58944,384,1537,1842,2060,36912,24633,32832,52353,769,3074,3684,4120,8288,49267,128,39171,1539,6148,7368,8240,16576,32998,257,12806,7,0,512,0,0,32,0,0,6144,24592,29472,32960,768,921,1016,12320,12288,49184,58944,384,1537,1842,10224,24576,24576,32832,52353,1,0,0,0,0,0,0,0,63488,8195,48,8128,33024,32769,0,0,0,0,0,16256,0,35,508,6144,57345,32783,192,8960,0,2,280,0,49152,31,384,0,0,0,560,8192,32768,17,256,35840,0,8,0,0,0,0,0,0,0,0,16,0,32768,0,0,0,0,0,0,0,0,0,32,57344,47,192,32960,768,921,1030,51224,28,0,1,0,0,128,2060,36912,57,0,0,64512,16385,24,4064,49152,0,0,0,63488,8195,48,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseLambda","Expr","List","Cont","int","bool","'<'","'>'","'+'","'%'","'-'","'=='","';'","if","else","then","let","in","'->'","'\\\\'","'='","':='","var","'('","')'","'{'","'}'","Int","Bool","':'","while","'||'","'&&'","print","'['","']'","','","append","modify","len","%eof"]
        bit_start = st * 43
        bit_end = (st + 1) * 43
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..42]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (25) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (33) = happyShift action_9
action_0 (36) = happyShift action_10
action_0 (37) = happyShift action_11
action_0 (40) = happyShift action_12
action_0 (41) = happyShift action_13
action_0 (42) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (16) = happyShift action_6
action_1 (25) = happyShift action_7
action_1 (26) = happyShift action_8
action_1 (33) = happyShift action_9
action_1 (36) = happyShift action_10
action_1 (37) = happyShift action_11
action_1 (40) = happyShift action_12
action_1 (41) = happyShift action_13
action_1 (42) = happyShift action_14
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (9) = happyShift action_16
action_2 (10) = happyShift action_17
action_2 (11) = happyShift action_18
action_2 (12) = happyShift action_19
action_2 (13) = happyShift action_20
action_2 (14) = happyShift action_21
action_2 (15) = happyShift action_22
action_2 (34) = happyShift action_23
action_2 (35) = happyShift action_24
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_20

action_4 _ = happyReduce_14

action_5 _ = happyReduce_9

action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (16) = happyShift action_6
action_6 (25) = happyShift action_7
action_6 (26) = happyShift action_8
action_6 (33) = happyShift action_9
action_6 (36) = happyShift action_10
action_6 (37) = happyShift action_11
action_6 (40) = happyShift action_12
action_6 (41) = happyShift action_13
action_6 (42) = happyShift action_14
action_6 (4) = happyGoto action_36
action_6 (5) = happyGoto action_3
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (23) = happyShift action_34
action_7 (24) = happyShift action_35
action_7 _ = happyReduce_15

action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (16) = happyShift action_6
action_8 (25) = happyShift action_7
action_8 (26) = happyShift action_8
action_8 (33) = happyShift action_9
action_8 (36) = happyShift action_10
action_8 (37) = happyShift action_11
action_8 (40) = happyShift action_12
action_8 (41) = happyShift action_13
action_8 (42) = happyShift action_14
action_8 (4) = happyGoto action_33
action_8 (5) = happyGoto action_3
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (26) = happyShift action_32
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (26) = happyShift action_31
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_29
action_11 (38) = happyShift action_30
action_11 (6) = happyGoto action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (26) = happyShift action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (9) = happyShift action_16
action_15 (10) = happyShift action_17
action_15 (11) = happyShift action_18
action_15 (12) = happyShift action_19
action_15 (13) = happyShift action_20
action_15 (14) = happyShift action_21
action_15 (15) = happyShift action_22
action_15 (34) = happyShift action_23
action_15 (35) = happyShift action_24
action_15 (43) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (16) = happyShift action_6
action_16 (25) = happyShift action_7
action_16 (26) = happyShift action_8
action_16 (33) = happyShift action_9
action_16 (36) = happyShift action_10
action_16 (37) = happyShift action_11
action_16 (40) = happyShift action_12
action_16 (41) = happyShift action_13
action_16 (42) = happyShift action_14
action_16 (4) = happyGoto action_56
action_16 (5) = happyGoto action_3
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (16) = happyShift action_6
action_17 (25) = happyShift action_7
action_17 (26) = happyShift action_8
action_17 (33) = happyShift action_9
action_17 (36) = happyShift action_10
action_17 (37) = happyShift action_11
action_17 (40) = happyShift action_12
action_17 (41) = happyShift action_13
action_17 (42) = happyShift action_14
action_17 (4) = happyGoto action_55
action_17 (5) = happyGoto action_3
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (16) = happyShift action_6
action_18 (25) = happyShift action_7
action_18 (26) = happyShift action_8
action_18 (33) = happyShift action_9
action_18 (36) = happyShift action_10
action_18 (37) = happyShift action_11
action_18 (40) = happyShift action_12
action_18 (41) = happyShift action_13
action_18 (42) = happyShift action_14
action_18 (4) = happyGoto action_54
action_18 (5) = happyGoto action_3
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (16) = happyShift action_6
action_19 (25) = happyShift action_7
action_19 (26) = happyShift action_8
action_19 (33) = happyShift action_9
action_19 (36) = happyShift action_10
action_19 (37) = happyShift action_11
action_19 (40) = happyShift action_12
action_19 (41) = happyShift action_13
action_19 (42) = happyShift action_14
action_19 (4) = happyGoto action_53
action_19 (5) = happyGoto action_3
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (16) = happyShift action_6
action_20 (25) = happyShift action_7
action_20 (26) = happyShift action_8
action_20 (33) = happyShift action_9
action_20 (36) = happyShift action_10
action_20 (37) = happyShift action_11
action_20 (40) = happyShift action_12
action_20 (41) = happyShift action_13
action_20 (42) = happyShift action_14
action_20 (4) = happyGoto action_52
action_20 (5) = happyGoto action_3
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (16) = happyShift action_6
action_21 (25) = happyShift action_7
action_21 (26) = happyShift action_8
action_21 (33) = happyShift action_9
action_21 (36) = happyShift action_10
action_21 (37) = happyShift action_11
action_21 (40) = happyShift action_12
action_21 (41) = happyShift action_13
action_21 (42) = happyShift action_14
action_21 (4) = happyGoto action_51
action_21 (5) = happyGoto action_3
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (16) = happyShift action_6
action_22 (25) = happyShift action_7
action_22 (26) = happyShift action_8
action_22 (33) = happyShift action_9
action_22 (36) = happyShift action_10
action_22 (37) = happyShift action_11
action_22 (40) = happyShift action_12
action_22 (41) = happyShift action_13
action_22 (42) = happyShift action_14
action_22 (4) = happyGoto action_50
action_22 (5) = happyGoto action_3
action_22 _ = happyReduce_19

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (16) = happyShift action_6
action_23 (25) = happyShift action_7
action_23 (26) = happyShift action_8
action_23 (33) = happyShift action_9
action_23 (36) = happyShift action_10
action_23 (37) = happyShift action_11
action_23 (40) = happyShift action_12
action_23 (41) = happyShift action_13
action_23 (42) = happyShift action_14
action_23 (4) = happyGoto action_49
action_23 (5) = happyGoto action_3
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (25) = happyShift action_7
action_24 (26) = happyShift action_8
action_24 (33) = happyShift action_9
action_24 (36) = happyShift action_10
action_24 (37) = happyShift action_11
action_24 (40) = happyShift action_12
action_24 (41) = happyShift action_13
action_24 (42) = happyShift action_14
action_24 (4) = happyGoto action_48
action_24 (5) = happyGoto action_3
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (16) = happyShift action_6
action_25 (25) = happyShift action_7
action_25 (26) = happyShift action_8
action_25 (33) = happyShift action_9
action_25 (36) = happyShift action_10
action_25 (37) = happyShift action_11
action_25 (40) = happyShift action_12
action_25 (41) = happyShift action_13
action_25 (42) = happyShift action_14
action_25 (4) = happyGoto action_47
action_25 (5) = happyGoto action_3
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (16) = happyShift action_6
action_26 (25) = happyShift action_7
action_26 (26) = happyShift action_8
action_26 (33) = happyShift action_9
action_26 (36) = happyShift action_10
action_26 (37) = happyShift action_11
action_26 (40) = happyShift action_12
action_26 (41) = happyShift action_13
action_26 (42) = happyShift action_14
action_26 (4) = happyGoto action_46
action_26 (5) = happyGoto action_3
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (16) = happyShift action_6
action_27 (25) = happyShift action_7
action_27 (26) = happyShift action_8
action_27 (33) = happyShift action_9
action_27 (36) = happyShift action_10
action_27 (37) = happyShift action_11
action_27 (40) = happyShift action_12
action_27 (41) = happyShift action_13
action_27 (42) = happyShift action_14
action_27 (4) = happyGoto action_45
action_27 (5) = happyGoto action_3
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (38) = happyShift action_44
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (39) = happyShift action_43
action_29 _ = happyReduce_26

action_30 _ = happyReduce_24

action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (25) = happyShift action_7
action_31 (26) = happyShift action_8
action_31 (33) = happyShift action_9
action_31 (36) = happyShift action_10
action_31 (37) = happyShift action_11
action_31 (40) = happyShift action_12
action_31 (41) = happyShift action_13
action_31 (42) = happyShift action_14
action_31 (4) = happyGoto action_42
action_31 (5) = happyGoto action_3
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (16) = happyShift action_6
action_32 (25) = happyShift action_7
action_32 (26) = happyShift action_8
action_32 (33) = happyShift action_9
action_32 (36) = happyShift action_10
action_32 (37) = happyShift action_11
action_32 (40) = happyShift action_12
action_32 (41) = happyShift action_13
action_32 (42) = happyShift action_14
action_32 (4) = happyGoto action_41
action_32 (5) = happyGoto action_3
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (9) = happyShift action_16
action_33 (10) = happyShift action_17
action_33 (11) = happyShift action_18
action_33 (12) = happyShift action_19
action_33 (13) = happyShift action_20
action_33 (14) = happyShift action_21
action_33 (15) = happyShift action_22
action_33 (27) = happyShift action_40
action_33 (34) = happyShift action_23
action_33 (35) = happyShift action_24
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (16) = happyShift action_6
action_34 (25) = happyShift action_7
action_34 (26) = happyShift action_8
action_34 (33) = happyShift action_9
action_34 (36) = happyShift action_10
action_34 (37) = happyShift action_11
action_34 (40) = happyShift action_12
action_34 (41) = happyShift action_13
action_34 (42) = happyShift action_14
action_34 (4) = happyGoto action_39
action_34 (5) = happyGoto action_3
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (16) = happyShift action_6
action_35 (25) = happyShift action_7
action_35 (26) = happyShift action_8
action_35 (33) = happyShift action_9
action_35 (36) = happyShift action_10
action_35 (37) = happyShift action_11
action_35 (40) = happyShift action_12
action_35 (41) = happyShift action_13
action_35 (42) = happyShift action_14
action_35 (4) = happyGoto action_38
action_35 (5) = happyGoto action_3
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (9) = happyShift action_16
action_36 (10) = happyShift action_17
action_36 (11) = happyShift action_18
action_36 (12) = happyShift action_19
action_36 (13) = happyShift action_20
action_36 (14) = happyShift action_21
action_36 (15) = happyShift action_22
action_36 (18) = happyShift action_37
action_36 (34) = happyShift action_23
action_36 (35) = happyShift action_24
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (16) = happyShift action_6
action_37 (25) = happyShift action_7
action_37 (26) = happyShift action_8
action_37 (33) = happyShift action_9
action_37 (36) = happyShift action_10
action_37 (37) = happyShift action_11
action_37 (40) = happyShift action_12
action_37 (41) = happyShift action_13
action_37 (42) = happyShift action_14
action_37 (4) = happyGoto action_63
action_37 (5) = happyGoto action_3
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (9) = happyFail []
action_38 (10) = happyFail []
action_38 (14) = happyFail []
action_38 _ = happyReduce_13

action_39 (9) = happyFail []
action_39 (10) = happyFail []
action_39 (14) = happyFail []
action_39 _ = happyReduce_12

action_40 _ = happyReduce_11

action_41 (9) = happyShift action_16
action_41 (10) = happyShift action_17
action_41 (11) = happyShift action_18
action_41 (12) = happyShift action_19
action_41 (13) = happyShift action_20
action_41 (14) = happyShift action_21
action_41 (15) = happyShift action_22
action_41 (27) = happyShift action_62
action_41 (34) = happyShift action_23
action_41 (35) = happyShift action_24
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (9) = happyShift action_16
action_42 (10) = happyShift action_17
action_42 (11) = happyShift action_18
action_42 (12) = happyShift action_19
action_42 (13) = happyShift action_20
action_42 (14) = happyShift action_21
action_42 (15) = happyShift action_22
action_42 (27) = happyShift action_61
action_42 (34) = happyShift action_23
action_42 (35) = happyShift action_24
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_29
action_43 (6) = happyGoto action_60
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_25

action_45 (9) = happyShift action_16
action_45 (10) = happyShift action_17
action_45 (11) = happyShift action_18
action_45 (12) = happyShift action_19
action_45 (13) = happyShift action_20
action_45 (14) = happyShift action_21
action_45 (15) = happyShift action_22
action_45 (34) = happyShift action_23
action_45 (35) = happyShift action_24
action_45 (39) = happyShift action_59
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (9) = happyShift action_16
action_46 (10) = happyShift action_17
action_46 (11) = happyShift action_18
action_46 (12) = happyShift action_19
action_46 (13) = happyShift action_20
action_46 (14) = happyShift action_21
action_46 (15) = happyShift action_22
action_46 (34) = happyShift action_23
action_46 (35) = happyShift action_24
action_46 (39) = happyShift action_58
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (9) = happyShift action_16
action_47 (10) = happyShift action_17
action_47 (11) = happyShift action_18
action_47 (12) = happyShift action_19
action_47 (13) = happyShift action_20
action_47 (14) = happyShift action_21
action_47 (15) = happyShift action_22
action_47 (27) = happyShift action_57
action_47 (34) = happyShift action_23
action_47 (35) = happyShift action_24
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (9) = happyShift action_16
action_48 (10) = happyShift action_17
action_48 (14) = happyShift action_21
action_48 (34) = happyShift action_23
action_48 _ = happyReduce_1

action_49 (9) = happyShift action_16
action_49 (10) = happyShift action_17
action_49 (14) = happyShift action_21
action_49 _ = happyReduce_2

action_50 (9) = happyShift action_16
action_50 (10) = happyShift action_17
action_50 (11) = happyShift action_18
action_50 (12) = happyShift action_19
action_50 (13) = happyShift action_20
action_50 (14) = happyShift action_21
action_50 (15) = happyShift action_22
action_50 (34) = happyShift action_23
action_50 (35) = happyShift action_24
action_50 _ = happyReduce_18

action_51 (9) = happyFail []
action_51 (10) = happyFail []
action_51 (14) = happyFail []
action_51 _ = happyReduce_5

action_52 (9) = happyShift action_16
action_52 (10) = happyShift action_17
action_52 (14) = happyShift action_21
action_52 (34) = happyShift action_23
action_52 _ = happyReduce_7

action_53 (9) = happyShift action_16
action_53 (10) = happyShift action_17
action_53 (14) = happyShift action_21
action_53 (34) = happyShift action_23
action_53 _ = happyReduce_8

action_54 (9) = happyShift action_16
action_54 (10) = happyShift action_17
action_54 (14) = happyShift action_21
action_54 (34) = happyShift action_23
action_54 _ = happyReduce_6

action_55 (9) = happyFail []
action_55 (10) = happyFail []
action_55 (14) = happyFail []
action_55 _ = happyReduce_4

action_56 (9) = happyFail []
action_56 (10) = happyFail []
action_56 (14) = happyFail []
action_56 _ = happyReduce_3

action_57 _ = happyReduce_21

action_58 (7) = happyShift action_67
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_66
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_27

action_61 _ = happyReduce_17

action_62 (28) = happyShift action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (9) = happyShift action_16
action_63 (10) = happyShift action_17
action_63 (11) = happyShift action_18
action_63 (12) = happyShift action_19
action_63 (13) = happyShift action_20
action_63 (14) = happyShift action_21
action_63 (15) = happyShift action_22
action_63 (17) = happyShift action_64
action_63 (34) = happyShift action_23
action_63 (35) = happyShift action_24
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_4
action_64 (8) = happyShift action_5
action_64 (16) = happyShift action_6
action_64 (25) = happyShift action_7
action_64 (26) = happyShift action_8
action_64 (33) = happyShift action_9
action_64 (36) = happyShift action_10
action_64 (37) = happyShift action_11
action_64 (40) = happyShift action_12
action_64 (41) = happyShift action_13
action_64 (42) = happyShift action_14
action_64 (4) = happyGoto action_71
action_64 (5) = happyGoto action_3
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_4
action_65 (8) = happyShift action_5
action_65 (16) = happyShift action_6
action_65 (25) = happyShift action_7
action_65 (26) = happyShift action_8
action_65 (33) = happyShift action_9
action_65 (36) = happyShift action_10
action_65 (37) = happyShift action_11
action_65 (40) = happyShift action_12
action_65 (41) = happyShift action_13
action_65 (42) = happyShift action_14
action_65 (4) = happyGoto action_70
action_65 (5) = happyGoto action_3
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (39) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (7) = happyShift action_4
action_68 (8) = happyShift action_5
action_68 (16) = happyShift action_6
action_68 (25) = happyShift action_7
action_68 (26) = happyShift action_8
action_68 (33) = happyShift action_9
action_68 (36) = happyShift action_10
action_68 (37) = happyShift action_11
action_68 (40) = happyShift action_12
action_68 (41) = happyShift action_13
action_68 (42) = happyShift action_14
action_68 (4) = happyGoto action_73
action_68 (5) = happyGoto action_3
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_22

action_70 (9) = happyShift action_16
action_70 (10) = happyShift action_17
action_70 (11) = happyShift action_18
action_70 (12) = happyShift action_19
action_70 (13) = happyShift action_20
action_70 (14) = happyShift action_21
action_70 (15) = happyShift action_22
action_70 (29) = happyShift action_72
action_70 (34) = happyShift action_23
action_70 (35) = happyShift action_24
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (9) = happyShift action_16
action_71 (10) = happyShift action_17
action_71 (11) = happyShift action_18
action_71 (12) = happyShift action_19
action_71 (13) = happyShift action_20
action_71 (14) = happyShift action_21
action_71 (15) = happyShift action_22
action_71 (34) = happyShift action_23
action_71 (35) = happyShift action_24
action_71 _ = happyReduce_10

action_72 _ = happyReduce_16

action_73 (9) = happyShift action_16
action_73 (10) = happyShift action_17
action_73 (11) = happyShift action_18
action_73 (12) = happyShift action_19
action_73 (13) = happyShift action_20
action_73 (14) = happyShift action_21
action_73 (15) = happyShift action_22
action_73 (27) = happyShift action_74
action_73 (34) = happyShift action_23
action_73 (35) = happyShift action_24
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_23

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
		 (IntBinOp "%" happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 6 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarDec happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (PVarDec happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  4 happyReduction_14
happyReduction_14 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn4
		 (VarCall happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
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

happyReduce_17 = happyReduce 4 4 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintF happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ContEval happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ListStr happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 4 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListUnaOp "LEN" happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyTerminal (TInt happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListBinOp "APP" (happy_var_3) happy_var_5
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

happyReduce_24 = happySpecReduce_2  5 happyReduction_24
happyReduction_24 _
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1] ++ happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 7;
	TBool happy_dollar_dollar -> cont 8;
	TLThan -> cont 9;
	TGThan -> cont 10;
	TAdd -> cont 11;
	TModulo -> cont 12;
	TMinus -> cont 13;
	TEquality -> cont 14;
	TSemiColon -> cont 15;
	TIf -> cont 16;
	TElse -> cont 17;
	TThen -> cont 18;
	TLet -> cont 19;
	TIn -> cont 20;
	TFunc -> cont 21;
	TLambda -> cont 22;
	TEqual -> cont 23;
	TPEqual -> cont 24;
	TVar happy_dollar_dollar -> cont 25;
	TLParen -> cont 26;
	TRParen -> cont 27;
	TLCurly -> cont 28;
	TRCurly -> cont 29;
	TIntType -> cont 30;
	TBoolType -> cont 31;
	TColon -> cont 32;
	TWhile -> cont 33;
	TOr -> cont 34;
	TAnd -> cont 35;
	TPrintF -> cont 36;
	TLSquare -> cont 37;
	TRSquare -> cont 38;
	TComma -> cont 39;
	TAppend -> cont 40;
	TModify -> cont 41;
	TLen -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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
            ListUnaOp String Expr           |
            ListBinOp String Expr Int       |
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
