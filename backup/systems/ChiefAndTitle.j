//---------------------
// 掌门及称号系统
//---------------------

function getChiefOrTitle takes nothing returns nothing
    if UnitTypeNotNull(u,UNIT_TYPE_HERO) and udg_zhangmen[i]==false then
        if GetUnitAbilityLevel(u,'A0C7')>=6 and GetUnitAbilityLevel(u,'A0C2')>=6  and GetUnitAbilityLevel(u,'A0C5')>=6 and (GetUnitAbilityLevel(u,'A0C4')>=6 or GetUnitAbilityLevel(u,'A0C6')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：峨眉掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(1,u,0,170)
            call SetPlayerName(p,"〓峨眉掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=1
            if GetUnitAbilityLevel(u,'A07N')>=1 and UnitHaveItem(u,'I00B')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：芷若")
            	call ModifyHeroStat(0,u,0,480)
            	call SetPlayerName(p,"〓芷若〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A0C6')>=1 and UnitHaveItem(u,'I09D')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小东邪")
            	call ModifyHeroStat(1,u,0,360)
            	call SetPlayerName(p,"〓小东邪〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0C9')>=6 and GetUnitAbilityLevel(u,'A0CB')>=6  and GetUnitAbilityLevel(u,'A0C8')>=6 and (GetUnitAbilityLevel(u,'A0CA')>=6 or GetUnitAbilityLevel(u,'A0DI')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：丐帮帮主")
            call ModifyHeroStat(0,u,0,480)
            call SetPlayerName(p,"〓丐帮帮主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=2
            if GetUnitAbilityLevel(u,'A07L')>=1 and GetUnitAbilityLevel(u,'A07E')>=1 and UnitHaveItem(u,'I097')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：北丐")
            	call ModifyHeroStat(0,u,0,480)
            	call SetUnitAbilityLevel(u,'A07L',IMinBJ(GetUnitAbilityLevel(u,'A07L')+3,9))
            	call SetUnitAbilityLevel(u,'A07E',IMinBJ(GetUnitAbilityLevel(u,'A07E')+3,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07L'*5, GetUnitAbilityLevel(u, 'A07L'))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07E'*5, GetUnitAbilityLevel(u, 'A07E'))
            	call SetPlayerName(p,"〓北丐〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0CF')>=6 and GetUnitAbilityLevel(u,'A0DA')>=6  and GetUnitAbilityLevel(u,'A0CM')>=6 and (GetUnitAbilityLevel(u,'A0CH')>=6 or GetUnitAbilityLevel(u,'A0DE')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：全真掌教")
            call ModifyHeroStat(1,u,0,360)
            call SetPlayerName(p,"〓全真掌教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=3
            if GetUnitAbilityLevel(u,'A017')>=1 and GetUnitAbilityLevel(u,'A07U')>=1 and GetUnitAbilityLevel(u,'A0D1')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：老顽童")
            	call ModifyHeroStat(1,u,0,360)
            	call SetUnitAbilityLevel(u,'A017',9)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A017'*5, GetUnitAbilityLevel(u, 'A017'))
            	call SetPlayerName(p,"〓老顽童〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A06P')>=1 and GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0CH')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：中神通")
            	call ModifyHeroStat(1,u,0,300)
            	call SetUnitAbilityLevel(u,'A0CH',9)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0CH'*5, GetUnitAbilityLevel(u, 'A0CH'))
            	call SetPlayerName(p,"〓中神通〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0CI')>=6 and GetUnitAbilityLevel(u,'A0CJ')>=6  and GetUnitAbilityLevel(u,'A0CN')>=6 and (GetUnitAbilityLevel(u,'A0CK')>=6 or GetUnitAbilityLevel(u,'A0DH')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：血刀掌门")
            call ModifyHeroStat(2,u,0,1200)
            call SetPlayerName(p,"〓血刀掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=4
            if UnitHaveItem(u,'I098') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：血刀老祖")
            	call ModifyHeroStat(0,u,0,480)
            	call SetPlayerName(p,"〓血刀老祖〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07X')>=1 and GetUnitAbilityLevel(u,'A06J')>=1 and GetUnitAbilityLevel(u,'A071')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：空心菜")
            	call ModifyHeroStat(1,u,0,360)
            	call SetPlayerName(p,"〓空心菜〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A09E')>=6 and GetUnitAbilityLevel(u,'A09J')>=6  and GetUnitAbilityLevel(u,'A09M')>=6 and (GetUnitAbilityLevel(u,'A09T')>=6 or GetUnitAbilityLevel(u,'A09U')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：古墓掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(1,u,0,240)
            call SetPlayerName(p,"〓古墓掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=5
            if GetUnitAbilityLevel(u,'A07G')>=1 and UnitHaveItem(u,'I099') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神雕侠")
            	call ModifyHeroStat(0,u,0,480)
            	call SetUnitAbilityLevel(u,'A07G',IMinBJ(GetUnitAbilityLevel(u,'A07G')+3,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07G'*5, GetUnitAbilityLevel(u, 'A07G'))
            	call SetPlayerName(p,"〓神雕侠〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07U')>=1 and UnitHaveItem(u,'I09A') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小龙女")
            	call ModifyHeroStat(2,u,0,600)
            	call SetPlayerName(p,"〓小龙女〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07G')>=1 and GetUnitAbilityLevel(u,'A07U')>=1 and UnitHaveItem(u,'I09C') then
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神雕侠侣")
	        	call ModifyHeroStat(0,u,0,480)
            	call ModifyHeroStat(2,u,0,600)
            	call SetUnitAbilityLevel(u,'A07G',IMinBJ(GetUnitAbilityLevel(u,'A07G')+6,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07G'*5, GetUnitAbilityLevel(u, 'A07G'))
            	call SetPlayerName(p,"〓神雕侠侣〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07A')>=6 then
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：赤炼仙子")
	        	call SetPlayerName(p,"〓赤炼仙子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	        	call SetUnitAbilityLevel(u,'A07A',IMinBJ(GetUnitAbilityLevel(u,'A07A')+6,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07A'*5, GetUnitAbilityLevel(u, 'A07A'))
            	set chilian[i] = true
        	endif
        elseif GetUnitAbilityLevel(u,'A05G')>=6 and GetUnitAbilityLevel(u,'A000')>=6  and GetUnitAbilityLevel(u,'A05K')>=6 and (GetUnitAbilityLevel(u,'A05O')>=6 or GetUnitAbilityLevel(u,'S000')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：少林方丈")
            call ModifyHeroStat(0,u,0,170)
            call ModifyHeroStat(1,u,0,190)
            call ModifyHeroStat(2,u,0,480)
            call SetPlayerName(p,"〓少林方丈〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=6
            if GetUnitAbilityLevel(u,'A05O')>=1 and yishu[i]>=32 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：扫地神僧")
            	call ModifyHeroStat(1,u,0,720)
            	call SetPlayerName(p,"〓扫地神僧〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A04D')>=6 and GetUnitAbilityLevel(u,'A08S')>=6  and GetUnitAbilityLevel(u,'A08R')>=6 and (GetUnitAbilityLevel(u,'A08Q')>=6 or GetUnitAbilityLevel(u,'A08V')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：武当掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(2,u,0,600)
            call SetPlayerName(p,"〓武当掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=7
            if GetUnitAbilityLevel(u,'A0DN')>=1 and GetUnitAbilityLevel(u,'A09D')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：邋遢仙人")
            	call ModifyHeroStat(1,u,0,420)
            	call SetPlayerName(p,"〓邋遢仙人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0BP')>=6 and GetUnitAbilityLevel(u,'A0BS')>=6  and GetUnitAbilityLevel(u,'A0BQ')>=6 and (GetUnitAbilityLevel(u,'A0BT')>=6 or GetUnitAbilityLevel(u,'A0BV')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：星宿掌门")
            call ModifyHeroStat(0,u,0,360)
            call ModifyHeroStat(2,u,0,360)
            call SetPlayerName(p,"〓星宿掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=8
            if GetUnitAbilityLevel(u,'A07P')>=1 and GetUnitAbilityLevel(u,'A083')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：星宿老仙")
            	call ModifyHeroStat(1,u,0,600)
            	if (GetUnitAbilityLevel(u,'A0BT')>=6) then
            		call SetUnitAbilityLevel(u,'A0BT',9)
        		elseif (GetUnitAbilityLevel(u,'A0BV')>=6) then
            		call SetUnitAbilityLevel(u,'A0BV',9)
        		endif
            	call SetPlayerName(p,"〓星宿老仙〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A08W')>=6 and GetUnitAbilityLevel(u,'A08X')>=6  and GetUnitAbilityLevel(u,'A08Y')>=6 and (GetUnitAbilityLevel(u,'A037')>=6 or GetUnitAbilityLevel(u,'A091')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：华山掌门")
            call ModifyHeroStat(1,u,0,170)
            call ModifyHeroStat(2,u,0,290)
            call SetPlayerName(p,"〓华山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=9
            if GetUnitAbilityLevel(u,'A07T')>=1 and GetUnitAbilityLevel(u,'A07J')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：君子剑")
            	call ModifyHeroStat(0,u,0,600)
            	call SetPlayerName(p,"〓君子剑〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A01Z')>=6 and GetUnitAbilityLevel(u,'A021')>=6  and GetUnitAbilityLevel(u,'A0CD')>=6 and (GetUnitAbilityLevel(u,'A023')>=6 or GetUnitAbilityLevel(u,'A024')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：恒山掌门")
            call ModifyHeroStat(1,u,0,460)
            call SetPlayerName(p,"〓恒山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=10
        elseif GetUnitAbilityLevel(u,'A02B')>=6 and GetUnitAbilityLevel(u,'A02C')>=6  and GetUnitAbilityLevel(u,'A02F')>=6 and (GetUnitAbilityLevel(u,'A02G')>=6 or GetUnitAbilityLevel(u,'A02H')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：灵鹫宫主")
            call ModifyHeroStat(0,u,0,220)
            call ModifyHeroStat(1,u,0,220)
            call ModifyHeroStat(2,u,0,220)
            call SetPlayerName(p,"〓灵鹫宫主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=12
		elseif GetUnitAbilityLevel(u,'A08A')>=6 and GetUnitAbilityLevel(u,'A08B')>=6  and GetUnitAbilityLevel(u,'A08E')>=6 and (GetUnitAbilityLevel(u,'A08G')>=6 or GetUnitAbilityLevel(u,'A08H')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：泰山掌门")
            call ModifyHeroStat(0,u,0,320)
            call ModifyHeroStat(1,u,0,220)
            call ModifyHeroStat(2,u,0,120)
            call SetPlayerName(p,"〓泰山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=24
        elseif GetUnitAbilityLevel(u,'A02K')>=6 and GetUnitAbilityLevel(u,'A0CC')>=6  and GetUnitAbilityLevel(u,'A02M')>=6 and (GetUnitAbilityLevel(u,'A02R')>=6 or GetUnitAbilityLevel(u,'A02V')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：慕容龙城")
            call ModifyHeroStat(0,u,0,100)
            call ModifyHeroStat(1,u,0,280)
            call ModifyHeroStat(2,u,0,300)
            call SetPlayerName(p,"〓慕容龙城〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=13
        elseif GetUnitAbilityLevel(u,'A04M')>=6 and GetUnitAbilityLevel(u,'A04N')>=6  and GetUnitAbilityLevel(u,'A04P')>=6 and (GetUnitAbilityLevel(u,'A026')>=6 or GetUnitAbilityLevel(u,'A04R')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：衡山掌门")
            call ModifyHeroStat(0,u,0,350)
            call ModifyHeroStat(1,u,0,260)
            call ModifyHeroStat(2,u,0,100)
            call SetPlayerName(p,"〓衡山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=15
            if GetUnitAbilityLevel(u,'A04M')>=7 and GetUnitAbilityLevel(u,'A04N')>=7  and GetUnitAbilityLevel(u,'A04P')>=7 then
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：莫大先生")
	            call SetPlayerName(p,"〓莫大先生〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[20*(i-1)+L7[i]]!='AEfk')then
						if((L7[i]==wugongshu[i]))then
							call SetUnitAbilityLevel(u,'A04M',9)
							call SetUnitAbilityLevel(u,'A04N',9)
							call SetUnitAbilityLevel(u,'A04P',9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04M'*5, 9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04N'*5, 9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04P'*5, 9)
						endif
					else
						if GetUnitAbilityLevel(u, 'A026')>=6 then
							set idd = 'A04R'
						else
							set idd = 'A026'
						endif
						call UnitAddAbility(u, idd)
						call UnitMakeAbilityPermanent(u, true, idd)
						set I7[20*(i-1)+L7[i]] = idd
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
            endif
        elseif GetUnitAbilityLevel(u,'A04W')>=6 and GetUnitAbilityLevel(u,'A04Z')>=6  and GetUnitAbilityLevel(u,'A051')>=6 and (GetUnitAbilityLevel(u,'A057')>=6 or GetUnitAbilityLevel(u,'A059')>=6) then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神龙教主")
            call ModifyHeroStat(0,u,0,350)
            call ModifyHeroStat(2,u,0,200)
            call SetPlayerName(p,"〓神龙教主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=16
        elseif GetUnitAbilityLevel(u,'A056')>=6 and GetUnitAbilityLevel(u,'A054')>=6  and GetUnitAbilityLevel(u,'A04X')>=6 and (GetUnitAbilityLevel(u,'A057')>=6 or GetUnitAbilityLevel(u,'A059')>=6) then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：教主夫人")
            call ModifyHeroStat(0,u,0,200)
            call ModifyHeroStat(1,u,0,350)
            call SetPlayerName(p,"〓教主夫人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=17
        elseif GetUnitAbilityLevel(u,'A030')>=6 and GetUnitAbilityLevel(u,'A032')>=6  and GetUnitAbilityLevel(u,'A06R')>=6 and (GetUnitAbilityLevel(u,'A034')>=6 or GetUnitAbilityLevel(u,'A07W')>=4) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：明教教主")
            call ModifyHeroStat(0,u,0,210)
            call ModifyHeroStat(1,u,0,310)
            call ModifyHeroStat(2,u,0,160)
            call SetPlayerName(p,"〓明教教主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=14
            if GetUnitAbilityLevel(u,'A030')>=9 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：白眉鹰王")
	            call SetPlayerName(p,"〓白眉鹰王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call ModifyHeroStat(2,u,0,500)
            endif
            if GetUnitAbilityLevel(u,'A032')>=9 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：青翼幅王")
	            call SetPlayerName(p,"〓青翼幅王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call ModifyHeroStat(1,u,0,300)
            endif
            if GetUnitAbilityLevel(u,'A06R')>=9 and GetUnitAbilityLevel(u, 'A07M')>=3 and UnitHaveItem(u, 'I00D') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：金毛狮王")
	            call SetPlayerName(p,"〓金毛狮王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call SetUnitAbilityLevel(u,'A07M',IMinBJ(GetUnitAbilityLevel(u,'A07M')+6,9))
	            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07M'*5, GetUnitAbilityLevel(u, 'A07M'))
	            call ModifyHeroStat(0,u,0,300)
            endif
            if GetUnitAbilityLevel(u,'A07W')>=6 and GetUnitAbilityLevel(u, 'A0DN')>=1 and GetUnitAbilityLevel(u,'A08R')>=4 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：无忌")
	            call SetPlayerName(p,"〓无忌〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call SetUnitAbilityLevel(u,'A08R',IMinBJ(GetUnitAbilityLevel(u,'A08R')+3,9))
	            call SetUnitAbilityLevel(u,'A07W',7)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07W'*5, GetUnitAbilityLevel(u, 'A07W'))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A08R'*5, GetUnitAbilityLevel(u, 'A08R'))
	            call ModifyHeroStat(1,u,0,1000)
	            call ModifyHeroStat(2,u,0,500)
            endif
        elseif GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0D2')>=1  and GetUnitAbilityLevel(u,'A0D6')>=1 and GetUnitAbilityLevel(u,'A0D4')>=1 and GetUnitAbilityLevel(u,'A07N')>=4 and GetUnitAbilityLevel(u,'A0D3')>=4 and GetUnitAbilityLevel(u,'A0D1')>=4 then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：真·九阴真人")
            call SetPlayerName(p,"〓真·九阴真人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call SetUnitAbilityLevel(u,'A07N',IMinBJ(GetUnitAbilityLevel(u,'A07N')+3,9))
            call SetUnitAbilityLevel(u,'A0D3',IMinBJ(GetUnitAbilityLevel(u,'A0D3')+3,9))
            call SetUnitAbilityLevel(u,'A0D1',IMinBJ(GetUnitAbilityLevel(u,'A0D1')+3,9))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07N'*5, GetUnitAbilityLevel(u, 'A07N'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D3'*5, GetUnitAbilityLevel(u, 'A0D3'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D1'*5, GetUnitAbilityLevel(u, 'A0D1'))
            call ModifyHeroStat(1,u,0,2900)
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=11
        elseif GetUnitAbilityLevel(u,'A089')>=5 and GetUnitAbilityLevel(u,'A084')>=1  and GetUnitAbilityLevel(u,'A0D2')>=1 and UnitHaveItem(u,'I09B') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：西毒")
            call SetPlayerName(p,"〓西毒〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(0,u,0,600)
            call ModifyHeroStat(2,u,0,360)
            call unitadditembyidswapped('I070',u)
            call SetUnitAbilityLevel(u,'A089',IMinBJ(GetUnitAbilityLevel(u,'A089')+2,9))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A089'*5, GetUnitAbilityLevel(u, 'A089'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=19
		elseif GetUnitAbilityLevel(u,'A06H')>=5 and GetUnitAbilityLevel(u,'A018')>=5  and UnitHaveItem(u,'I09D') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：东邪")
            call SetPlayerName(p,"〓东邪〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(1,u,0,240)
            call ModifyHeroStat(2,u,0,300)
            call SetUnitAbilityLevel(u,'A06H',9)
            call SetUnitAbilityLevel(u,'A018',9)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A06H'*5, GetUnitAbilityLevel(u, 'A06H'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A018'*5, GetUnitAbilityLevel(u, 'A018'))
            call unitadditembyidswapped('I04Q',u)
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=22
        elseif GetUnitAbilityLevel(u,'A06P')>=5 and GetUnitAbilityLevel(u,'A0CH')>=3  and GetUnitAbilityLevel(u,'A0D4')>=1 and udg_runamen[i]!=5 then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：南帝")
            call SetPlayerName(p,"〓南帝〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(1,u,0,480)
            call ModifyHeroStat(2,u,0,600)
            call SetUnitAbilityLevel(u,'A06P',9)
            call SetUnitAbilityLevel(u,'A0CH',7)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A06P'*5, GetUnitAbilityLevel(u, 'A06P'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0CH'*5, GetUnitAbilityLevel(u, 'A0CH'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=23
        elseif GetUnitAbilityLevel(u,'A07N')>=5 and GetUnitAbilityLevel(u,'A0D1')>=5  and GetUnitAbilityLevel(u,'A0D3')>=5 and GetUnitAbilityLevel(u,'A07G')>=3 and (GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I' or GetUnitTypeId(u)=='O003' or GetUnitTypeId(u)=='O002') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：瑶琴")
            call SetPlayerName(p,"〓瑶琴〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call ModifyHeroStat(0,u,0,700)
            call ModifyHeroStat(1,u,0,200)
            call SetUnitAbilityLevel(u,'A0D1',9)
            call SetUnitAbilityLevel(u,'A0D3',7)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D1'*5, GetUnitAbilityLevel(u, 'A0D1'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D3'*5, GetUnitAbilityLevel(u, 'A0D3'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=18
            //自创武功命名为虾米神拳
        elseif zizhiwugong[i].name=="虾米神拳" and GetUnitAbilityLevel(u,'A036')>=1 and GetUnitAbilityLevel(u,'A07I')>=5 and udg_runamen[i] == 11 then
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小虾米")
            call SetPlayerName(p,"〓小虾米〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call ModifyHeroStat(0,u,0,600)
            call ModifyHeroStat(1,u,0,600)
            call ModifyHeroStat(2,u,0,600)
            call SetUnitAbilityLevel(u,'A07I',9)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07I'*5, GetUnitAbilityLevel(u, 'A07I'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=21
        endif
    endif
    if UnitTypeNotNull(u,UNIT_TYPE_HERO) and udg_whichzhangmen[i]==10 and GetUnitAbilityLevel(u,'A07F')>=1 and GetUnitAbilityLevel(u,'A09D')>=1 and  GetUnitAbilityLevel(u,'A07R')>=1 and  GetUnitAbilityLevel(u,'A08W')>=1 then
    	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：笑傲江湖")
        call SetPlayerName(p,"〓笑傲江湖〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        call ModifyHeroStat(0,u,0,480)
        call ModifyHeroStat(2,u,0,600)
        call SetUnitAbilityLevel(u,'A07F',IMinBJ(GetUnitAbilityLevel(u,'A07F')+3,9))
        call SetUnitAbilityLevel(u,'A08W',IMinBJ(GetUnitAbilityLevel(u,'A08W')+3,9))
        call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07F'*5, GetUnitAbilityLevel(u, 'A07F'))
        call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A08W'*5, GetUnitAbilityLevel(u, 'A08W'))
        set udg_whichzhangmen[i]=20
    endif
endfunction