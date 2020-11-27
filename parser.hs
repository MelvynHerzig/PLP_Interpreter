{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,115) ([58624,385,3624,12,7936,0,1,7248,24,0,0,0,0,32,33221,10241,3086,0,0,970,3,16,16384,0,0,0,20352,0,0,3624,12,7938,0,4,7248,32792,49378,5120,1543,14496,48,33221,1,480,0,0,0,0,768,0,24,1812,40966,12344,50432,509,0,16,0,0,4,2048,0,0,5120,1543,0,0,0,32768,992,128,31,906,20483,6172,0,62,61440,1,3968,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Prg","FDef","ArgsDef","Expr","Exprs","let","in","if","then","else","define","integer","varName","funName","'='","'+'","'-'","'*'","'/'","'<'","'#'","'('","')'","%eof"]
        bit_start = st Prelude.* 27
        bit_end = (st Prelude.+ 1) Prelude.* 27
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..26]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_3
action_0 (11) = happyShift action_4
action_0 (14) = happyShift action_12
action_0 (15) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 (5) = happyGoto action_11
action_0 (7) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_3
action_1 (11) = happyShift action_4
action_1 (15) = happyShift action_5
action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (24) = happyShift action_8
action_1 (25) = happyShift action_9
action_1 (7) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (19) = happyShift action_20
action_2 (20) = happyShift action_21
action_2 (21) = happyShift action_22
action_2 (22) = happyShift action_23
action_2 (23) = happyShift action_24
action_2 _ = happyReduce_1

action_3 (16) = happyShift action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (9) = happyShift action_3
action_4 (11) = happyShift action_4
action_4 (15) = happyShift action_5
action_4 (16) = happyShift action_6
action_4 (17) = happyShift action_7
action_4 (24) = happyShift action_8
action_4 (25) = happyShift action_9
action_4 (7) = happyGoto action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_14

action_6 _ = happyReduce_15

action_7 (25) = happyShift action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (9) = happyShift action_3
action_8 (11) = happyShift action_4
action_8 (15) = happyShift action_5
action_8 (16) = happyShift action_6
action_8 (17) = happyShift action_7
action_8 (24) = happyShift action_8
action_8 (25) = happyShift action_9
action_8 (7) = happyGoto action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_3
action_9 (11) = happyShift action_4
action_9 (15) = happyShift action_5
action_9 (16) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (24) = happyShift action_8
action_9 (25) = happyShift action_9
action_9 (7) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_3
action_11 (11) = happyShift action_4
action_11 (14) = happyShift action_12
action_11 (15) = happyShift action_5
action_11 (16) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (24) = happyShift action_8
action_11 (25) = happyShift action_9
action_11 (4) = happyGoto action_14
action_11 (5) = happyGoto action_11
action_11 (7) = happyGoto action_2
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (17) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (16) = happyShift action_36
action_13 (6) = happyGoto action_35
action_13 _ = happyReduce_4

action_14 _ = happyReduce_2

action_15 (19) = happyShift action_20
action_15 (20) = happyShift action_21
action_15 (21) = happyShift action_22
action_15 (22) = happyShift action_23
action_15 (23) = happyShift action_24
action_15 (26) = happyShift action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_13

action_17 (9) = happyShift action_3
action_17 (11) = happyShift action_4
action_17 (15) = happyShift action_5
action_17 (16) = happyShift action_6
action_17 (17) = happyShift action_7
action_17 (24) = happyShift action_8
action_17 (25) = happyShift action_9
action_17 (7) = happyGoto action_32
action_17 (8) = happyGoto action_33
action_17 _ = happyReduce_18

action_18 (12) = happyShift action_31
action_18 (19) = happyShift action_20
action_18 (20) = happyShift action_21
action_18 (21) = happyShift action_22
action_18 (22) = happyShift action_23
action_18 (23) = happyShift action_24
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (18) = happyShift action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_3
action_20 (11) = happyShift action_4
action_20 (15) = happyShift action_5
action_20 (16) = happyShift action_6
action_20 (17) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (25) = happyShift action_9
action_20 (7) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_3
action_21 (11) = happyShift action_4
action_21 (15) = happyShift action_5
action_21 (16) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (25) = happyShift action_9
action_21 (7) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_3
action_22 (11) = happyShift action_4
action_22 (15) = happyShift action_5
action_22 (16) = happyShift action_6
action_22 (17) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (25) = happyShift action_9
action_22 (7) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_3
action_23 (11) = happyShift action_4
action_23 (15) = happyShift action_5
action_23 (16) = happyShift action_6
action_23 (17) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (25) = happyShift action_9
action_23 (7) = happyGoto action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_3
action_24 (11) = happyShift action_4
action_24 (15) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (25) = happyShift action_9
action_24 (7) = happyGoto action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (19) = happyShift action_20
action_25 (20) = happyShift action_21
action_25 (21) = happyShift action_22
action_25 (22) = happyShift action_23
action_25 _ = happyReduce_12

action_26 _ = happyReduce_11

action_27 _ = happyReduce_10

action_28 (21) = happyShift action_22
action_28 (22) = happyShift action_23
action_28 _ = happyReduce_9

action_29 (21) = happyShift action_22
action_29 (22) = happyShift action_23
action_29 _ = happyReduce_8

action_30 (9) = happyShift action_3
action_30 (11) = happyShift action_4
action_30 (15) = happyShift action_5
action_30 (16) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (25) = happyShift action_9
action_30 (7) = happyGoto action_42
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_3
action_31 (11) = happyShift action_4
action_31 (15) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (7) = happyGoto action_41
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_3
action_32 (11) = happyShift action_4
action_32 (15) = happyShift action_5
action_32 (16) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (19) = happyShift action_20
action_32 (20) = happyShift action_21
action_32 (21) = happyShift action_22
action_32 (22) = happyShift action_23
action_32 (23) = happyShift action_24
action_32 (24) = happyShift action_8
action_32 (25) = happyShift action_9
action_32 (7) = happyGoto action_32
action_32 (8) = happyGoto action_40
action_32 _ = happyReduce_18

action_33 (26) = happyShift action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_17

action_35 (18) = happyShift action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_36
action_36 (6) = happyGoto action_37
action_36 _ = happyReduce_4

action_37 _ = happyReduce_5

action_38 (9) = happyShift action_3
action_38 (11) = happyShift action_4
action_38 (15) = happyShift action_5
action_38 (16) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (25) = happyShift action_9
action_38 (7) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_16

action_40 _ = happyReduce_19

action_41 (13) = happyShift action_44
action_41 (19) = happyShift action_20
action_41 (20) = happyShift action_21
action_41 (21) = happyShift action_22
action_41 (22) = happyShift action_23
action_41 (23) = happyShift action_24
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_43
action_42 (19) = happyShift action_20
action_42 (20) = happyShift action_21
action_42 (21) = happyShift action_22
action_42 (22) = happyShift action_23
action_42 (23) = happyShift action_24
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (9) = happyShift action_3
action_43 (11) = happyShift action_4
action_43 (15) = happyShift action_5
action_43 (16) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (24) = happyShift action_8
action_43 (25) = happyShift action_9
action_43 (7) = happyGoto action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (9) = happyShift action_3
action_44 (11) = happyShift action_4
action_44 (15) = happyShift action_5
action_44 (16) = happyShift action_6
action_44 (17) = happyShift action_7
action_44 (24) = happyShift action_8
action_44 (25) = happyShift action_9
action_44 (7) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (19) = happyShift action_20
action_45 (20) = happyShift action_21
action_45 (21) = happyShift action_22
action_45 (22) = happyShift action_23
action_45 (23) = happyShift action_24
action_45 _ = happyReduce_3

action_46 (19) = happyShift action_20
action_46 (20) = happyShift action_21
action_46 (21) = happyShift action_22
action_46 (22) = happyShift action_23
action_46 (23) = happyShift action_24
action_46 _ = happyReduce_7

action_47 (19) = happyShift action_20
action_47 (20) = happyShift action_21
action_47 (21) = happyShift action_22
action_47 (22) = happyShift action_23
action_47 (23) = happyShift action_24
action_47 _ = happyReduce_6

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (Prg [] happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (let Prg defs expr = happy_var_2 in Prg (happy_var_1:defs) expr
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 5 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal (TFunName happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FDef happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_0  6 happyReduction_4
happyReduction_4  =  HappyAbsSyn6
		 ([]
	)

happyReduce_5 = happySpecReduce_2  6 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_2)
	(HappyTerminal (TVarName happy_var_1))
	 =  HappyAbsSyn6
		 ((happy_var_1:happy_var_2)
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 7 happyReduction_6
happyReduction_6 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVarName happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 7 happyReduction_7
happyReduction_7 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  7 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Bin '+' happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Bin '-' happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Bin '*' happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Bin '/' happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Bin '<' happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Una '#' happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn7
		 (Cst happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 (HappyTerminal (TVarName happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 7 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunName happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AppFun happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_0  8 happyReduction_18
happyReduction_18  =  HappyAbsSyn8
		 ([]
	)

happyReduce_19 = happySpecReduce_2  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 27 27 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLet -> cont 9;
	TIn -> cont 10;
	TIf -> cont 11;
	TThen -> cont 12;
	TElse -> cont 13;
	TDefine -> cont 14;
	TInt happy_dollar_dollar -> cont 15;
	TVarName happy_dollar_dollar -> cont 16;
	TFunName happy_dollar_dollar -> cont 17;
	TSym '=' -> cont 18;
	TSym '+' -> cont 19;
	TSym '-' -> cont 20;
	TSym '*' -> cont 21;
	TSym '/' -> cont 22;
	TSym '<' -> cont 23;
	TSym '#' -> cont 24;
	TOp -> cont 25;
	TCp -> cont 26;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 27 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

-- Définition du type Exp utilisé pour construire l'arbre syntaxique.
data Exp  = Let Name Exp Exp | Bin Char Exp Exp | Cst Int | Var Name | If Exp Exp Exp | Una Char Exp | AppFun Name [Exp] deriving Show
data FDef = FDef Name [Name] Exp deriving Show
data Prg  = Prg [FDef] Exp deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































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
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
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
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
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





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

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
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
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
