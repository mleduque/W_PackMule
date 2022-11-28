BEGIN W_MULE

IF ~Global("W_MuleToGAM","GLOBAL",1)~ THEN BEGIN Poczatek // from:
SAY @0 /* #64346 */
+ ~CombatCounter(0)~ + @1 DO ~StartStore("w_msaddl",LastTalkedToBy())~ EXIT
+ ~CombatCounter(0)~ + @2 DO ~StartStore("w_mpotnc",LastTalkedToBy())~ EXIT
+ ~CombatCounter(0)~ + @3 DO ~StartStore("w_mscrlc",LastTalkedToBy())~ EXIT
+ ~CombatCounter(0)~ + @4 DO ~StartStore("w_mgbag",LastTalkedToBy())~ EXIT
+ ~CombatCounter(0) Global("W_MWAIT","GLOBAL",3)~ + @5 DO ~ChangeEnemyAlly("W_MULE",CONTROLLED) SetGlobal("W_MWAIT","GLOBAL",0) SetGlobal("W_MSTAY2","LOCALS",0) MoveToOffset([2.3])~ EXIT
+ ~CombatCounter(0) GlobalLT("W_MWAIT","GLOBAL",3)~ + @6 DO ~ChangeEnemyAlly(Myself,NEUTRAL) SetGlobal("W_MWAIT","GLOBAL",3)~ EXIT
++ @7 DO ~NoAction()~ EXIT
END

/* You could put this guy either in Athkatla's city gates or Imnesvale. For Tutu/BGT, maybe in the courtyard of the FAI. He's a prospector who's had nothing but bad luck and thinks he might do better in another career. */

BEGIN W_PWRANG
//berelinde wrote this dialogue

IF ~Global("W_PackMuleWrangler","GLOBAL",0)~ THEN BEGIN w0
SAY @8
++ @9 + w1 
++ @10 + w2 
++ @11 + w2 
++ @12 + w1
END 

IF ~~ w1 
SAY @13 
++ @14 + w2 
++ @15 + w2 
++ @16 + w3 
END 

IF ~~ w2 
SAY @17
= @18 
= @19 
++ @20 + w4 
++ @21 + w5 
++ @22 + w6
++ @23 + w7
END 

IF ~~ w3 
SAY @24 
++ @25 + w4 
++ @21 + w5 
++ @26 + w4
++ @22 + w6 
++ @27 + w7 
END 

IF ~~ w4 
SAY @28 
+ ~PartyGoldGT(2999)~ + @29 DO ~TakePartyGold(3000)~ + w10 
++ @30 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",1)~ + w8
++ @31 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",1)~ + w8
++ @32 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",1)~ + w8
++ @33 + w7 
END 

IF ~~ w5 
SAY @34 
IF ~~ THEN + w4 
END 

IF ~~ w6 
SAY @35
++ @36 + w4 
++ @37 + w9 
++ @38 + w7 
END

IF ~~ w7 
SAY @39
IF ~~ THEN EXIT
END

IF ~~ w8 
SAY @40
+ ~Gender(LastTalkedToBy(),MALE) CheckStatGT(LastTalkedToBy(),17,CHR) PartyGoldGT(299)~ + @41 DO ~TakePartyGold(300)~ + w10
+ ~Gender(LastTalkedToBy(),FEMALE) CheckStatGT(LastTalkedToBy(),17,CHR) PartyGoldGT(299)~ + @42 DO ~TakePartyGold(300)~ + w10
+ ~Gender(LastTalkedToBy(),MALE) !CheckStatGT(LastTalkedToBy(),17,CHR)~ + @41 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",2)~ + w11
+ ~Gender(LastTalkedToBy(),FEMALE) !CheckStatGT(LastTalkedToBy(),17,CHR)~ + @42 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",2)~ + w11
+ ~CheckStatGT(LastTalkedToBy(),15,CHR) PartyGoldGT(399)~ + @43 DO ~TakePartyGold(400)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),15,CHR)~ + @43 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",2)~ + w11
+ ~PartyGoldGT(2499)~ + @44 DO ~TakePartyGold(2500)~ + w10 
++ @45 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",1)~ + w9
++ @46 + w7
END 

IF ~~ w9
SAY @47
IF ~~ THEN EXIT 
END 

IF ~~ w10 /* Replace the creature code as appropriate */ 
SAY @48
IF ~~ THEN DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",9) EscapeArea()~ EXIT
END

IF ~~ w11 
SAY @49 
+ ~CheckStatGT(LastTalkedToBy(),15,CHR) PartyGoldGT(499)~ + @50 DO ~TakePartyGold(500)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),15,CHR)~ + @50 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",3)~ + w12
+ ~CheckStatGT(LastTalkedToBy(),13,CHR) PartyGoldGT(599)~ + @51 DO ~TakePartyGold(600)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),13,CHR)~ + @51 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",3)~ + w12
+ ~CheckStatGT(LastTalkedToBy(),9,CHR) PartyGoldGT(749)~ + @52 DO ~TakePartyGold(750)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),9,CHR)~ + @52 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",3)~ + w13
+ ~PartyGoldGT(2999)~ + @53 DO ~TakePartyGold(2000)~ + w10 
++ @45 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",3)~ + w9
++ @54 + w7
END 

IF ~~ w12 
SAY @55
+ ~CheckStatGT(LastTalkedToBy(),13,CHR) PartyGoldGT(699)~ + @56 DO ~TakePartyGold(700)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),13,CHR)~ + @56 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",4)~ + w13
+ ~CheckStatGT(LastTalkedToBy(),11,CHR) PartyGoldGT(799)~ + @57 DO ~TakePartyGold(800)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),11,CHR)~ + @57 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",4)~ + w13
+ ~PartyGoldGT(1499)~ + @53 DO ~TakePartyGold(1500)~ + w10 
++ @45 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",4)~ + w9
++ @58 + w7 
END

IF ~~ w13 
SAY @59
+ ~CheckStatGT(LastTalkedToBy(),11,CHR) PartyGoldGT(849)~ + @60 DO ~TakePartyGold(850)~ + w10
+ ~!CheckStatGT(LastTalkedToBy(),11,CHR)~ + @60 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",5)~ + w14
+ ~PartyGoldGT(999)~ + @53 DO ~TakePartyGold(1000)~ + w10
++ @45 DO ~SetGlobal("W_PackMuleWrangler","GLOBAL",5)~ + w9
++ @61 + w7
END 

IF ~~ w14 
SAY @62
+ ~PartyGoldGT(999)~ + @63 DO ~TakePartyGold(1000)~ + w10
++ @45 + w9 
++ @61 + w7 
END

IF ~GlobalGT("W_PackMuleWrangler","GLOBAL",0)~ THEN BEGIN w15
SAY @64 
+ ~Global("W_PackMuleWrangler","GLOBAL",1) PartyGoldGT(1999)~ + @65 DO ~TakePartyGold(2000)~ + w10
+ ~Global("W_PackMuleWrangler","GLOBAL",2) PartyGoldGT(1699)~ + @66 DO ~TakePartyGold(1700)~ + w10
+ ~Global("W_PackMuleWrangler","GLOBAL",3) PartyGoldGT(1499)~ + @67 DO ~TakePartyGold(1500)~ + w10
+ ~Global("W_PackMuleWrangler","GLOBAL",4) PartyGoldGT(999)~ + @68 DO ~TakePartyGold(1000)~ + w10
+ ~Global("W_PackMuleWrangler","GLOBAL",5) PartyGoldGT(799)~ + @69 DO ~TakePartyGold(800)~ + w10
++ @70 + w9 
END
