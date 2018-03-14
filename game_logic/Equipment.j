//---------------------------------
// 武器和装备相关
//---------------------------------

//鸟拿东西显示附加属性
function Zy takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)==false)and(GetItemUserData(GetManipulatedItem())>0))
endfunction
function dz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33附加属性：|r")
	if (ii2==1) then
		set j = j + ii3*300
	elseif (ii2==2) then
		set l = l + ii3*40
	elseif (ii2==3) then
		set m = m + ii3*40
	elseif (ii2==4) then
		set n = n + ii3*25
	elseif (ii2==5) then
		set o = o + ii3*25
	endif
	if (ii4==1) then
		set j = j + ii5*300
	elseif (ii4==2) then
		set l = l + ii5*40
	elseif (ii4==3) then
		set m = m + ii5*40
	elseif (ii4==4) then
		set n = n + ii5*25
	elseif (ii4==5) then
		set o = o + ii5*25
	endif
	if(j>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
	endif
	if(l>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
	endif
	if(m>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
	endif
	if(n>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
	endif
	if(o>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
	endif
	call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
	call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
	if(ii7==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii7==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii7==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii7==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii7==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii7==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii8==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii8==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii8==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii8==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii8==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii8==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii9==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii9==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii9==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii9==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii9==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii9==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii1==1)then
		call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得青龙套件")
	elseif(ii1==2)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得朱雀套件")
	elseif(ii1==3)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得玄武套件")
	elseif(ii1==4)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得白虎套件")
	endif
	set u = null
	set p = null
	set it =null
endfunction
//英雄拿上东西显示附加属性
function fz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function gz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	local integer q = 0
	if(GetItemUserData(it)>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33获得附加属性：|r")
		if (ii2==1) then
			set j = j + ii3*300
		elseif (ii2==2) then
			set l = l + ii3*40
		elseif (ii2==3) then
			set m = m + ii3*40
		elseif (ii2==4) then
			set n = n + ii3*25
		elseif (ii2==5) then
			set o = o + ii3*25
		endif
		if (ii4==1) then
			set j = j + ii5*300
		elseif (ii4==2) then
			set l = l + ii5*40
		elseif (ii4==3) then
			set m = m + ii5*40
		elseif (ii4==4) then
			set n = n + ii5*25
		elseif (ii4==5) then
			set o = o + ii5*25
		endif
		if(j>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
			call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,j)
		endif
		if(l>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
			call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,l)
		endif
		if(m>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
			call ModifyHeroStat(0,u,0,m)
		endif
		if(n>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
			call ModifyHeroStat(1,u,0,n)
		endif
		if(o>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
			call ModifyHeroStat(2,u,0,o)
		endif
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
		if(ii7==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii7==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii7==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii7==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii7==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii7==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii8==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii8==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii8==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii8==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii8==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii8==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii9==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii9==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii9==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii9==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii9==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii9==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii1==1)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得青龙套件")
		elseif(ii1==2)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得朱雀套件")
		elseif(ii1==3)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得玄武套件")
		elseif(ii1==4)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得白虎套件")
		endif
		set k7=1
		loop
		exitwhen k7>6
		if (GetItemUserData(UnitItemInSlotBJ(u,k7))/$5F5E100==ii1 and UnitItemInSlotBJ(u,k7)!=GetManipulatedItem())then
			set q = q+1
		endif
		set k7=k7+1
		endloop
		if(q==2)then
			if(ii1==1)then
				call ModifyHeroStat(0,u,0,$C8)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				set udg_baojilv[i]=(udg_baojilv[i]+.04)
				call UnitAddAbility(u,1093677106)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,1000)
				set gengu[i]=(gengu[i]+2)
				set wuxing[i]=(wuxing[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐青龙套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF招式伤害+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF暴击率+4%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF攻击速度+50%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF攻击+1000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF根骨+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF悟性+1")
			elseif(ii1==2)then
				call ModifyHeroStat(1,u,0,$96)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				set udg_baojishanghai[i]=(udg_baojishanghai[i]+.5)
				set shaguaihufui[i]=(shaguaihufui[i]+1000.)
				call UnitAddAbility(u,1093677107)
				set yishu[i]=(yishu[i]+1)
				set jingmai[i]=(jingmai[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐朱雀套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF内力+150")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF暴击伤害+50%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF杀怪回复+1000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF法术回复+10")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF医术+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF经脉+2")
			elseif(ii1==3)then
				call ModifyHeroStat(0,u,0,$96)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				call UnitAddAbility(u,1093677108)
				call UnitAddAbility(u,1093677109)
				call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,$C8)
				set wuxing[i]=(wuxing[i]+2)
				set danpo[i]=(danpo[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐玄武套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF招式伤害+150")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF气血+30000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF气血回复+600")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF防御+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF悟性+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF胆魄+1")
			elseif(ii1==4)then
				call ModifyHeroStat(1,u,0,$C8)
				call ModifyHeroStat(2,u,0,100)
				call UnitAddAbility(u,1093677110)
				set juexuelingwu[i]=(juexuelingwu[i]+2)
				set fuyuan[i]=(fuyuan[i]+2)
				set danpo[i]=(danpo[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐白虎套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF内力+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF真实伤害+100")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF移动速度最大化")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF福缘+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF胆魄+1")
			endif
		else
			if(ii1==1)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得青龙套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==2)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得朱雀套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==3)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得玄武套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==4)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得白虎套件，（已收集到"+(I2S(q+1))+"件）"))
			endif
		endif
	endif
	set u = null
	set p = null
	set it =null
endfunction
function iz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function jz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer i = 1+GetPlayerId(p)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	local integer q = 0
	if (GetItemUserData(it)>0) then
		call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33失去附加属性：|r")
		if (ii2==1) then
			set j = j + ii3*300
		elseif (ii2==2) then
			set l = l + ii3*40
		elseif (ii2==3) then
			set m = m + ii3*40
		elseif (ii2==4) then
			set n = n + ii3*25
		elseif (ii2==5) then
			set o = o + ii3*25
		endif
		if (ii4==1) then
			set j = j + ii5*300
		elseif (ii4==2) then
			set l = l + ii5*40
		elseif (ii4==3) then
			set m = m + ii5*40
		elseif (ii4==4) then
			set n = n + ii5*25
		elseif (ii4==5) then
			set o = o + ii5*25
		endif
		if(j>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
			call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,j)
		endif
		if(l>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
			call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,l)
		endif
		if(m>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
			call ModifyHeroStat(0,u,1,m)
		endif
		if(n>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
			call ModifyHeroStat(1,u,1,n)
		endif
		if(o>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
			call ModifyHeroStat(2,u,1,o)
		endif
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
		if(ii7==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii7==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii7==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii7==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii7==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii7==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		if(ii8==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii8==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii8==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii8==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii8==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii8==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		if (ii9==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii9==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii9==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii9==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii9==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii9==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		set k7=1
		loop
			exitwhen k7>6
			if (GetItemUserData(UnitItemInSlotBJ(u,k7))/$5F5E100==ii1 and UnitItemInSlotBJ(u,k7)!=GetManipulatedItem())then
				set q = q+1
			endif
			set k7=k7+1
		endloop
		if(q==2)then
			if (ii1==1) then
				call ModifyHeroStat(0,u,1,$C8)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				set udg_baojilv[i]=(udg_baojilv[i]-.04)
				call UnitRemoveAbility(u,1093677106)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,1000)
				set gengu[i]=(gengu[i]-2)
				set wuxing[i]=(wuxing[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去青龙套装")
			elseif (ii1==2) then
				call ModifyHeroStat(1,u,1,$96)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				set udg_baojishanghai[i]=(udg_baojishanghai[i]-.5)
				set shaguaihufui[i]=(shaguaihufui[i]-1000.)
				call UnitRemoveAbility(u,1093677107)
				set yishu[i]=(yishu[i]-1)
				set jingmai[i]=(jingmai[i]-2)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去朱雀套装")
			elseif (ii1==3) then
				call ModifyHeroStat(0,u,1,$96)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				call UnitRemoveAbility(u,1093677108)
				call UnitRemoveAbility(u,1093677109)
				call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,$C8)
				set wuxing[i]=(wuxing[i]-2)
				set danpo[i]=(danpo[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去玄武套装")
			elseif (ii1==4) then
				call ModifyHeroStat(1,u,1,$C8)
				call ModifyHeroStat(2,u,1,100)
				call UnitRemoveAbility(u,1093677110)
				set juexuelingwu[i]=(juexuelingwu[i]-2)
				set fuyuan[i]=(fuyuan[i]-2)
				set danpo[i]=(danpo[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去白虎套装")
			endif
		endif
	endif
	set u = null
	set p = null
	set it =null
endfunction



//穿上装备
function mz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_CHARGED)))
endfunction
function nz takes nothing returns nothing
	local integer i=(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	local integer id=GetItemTypeId(GetManipulatedItem())
	local integer j = 1
	loop
		exitwhen j >= 30
		if id == shopweapon[j].id then  //在smelt_weapon里
			call shopweapon[j].PickUpWeapon(GetTriggerUnit(), GetManipulatedItem())
			exitwhen true
		endif
		set j = j + 1
	endloop
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,R2I(LoadReal(YDHT,id,StringHash("攻击力"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,R2I(LoadReal(YDHT,id,StringHash("防御"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),1,0,R2I(LoadReal(YDHT,id,StringHash("法力上限"))))
	call ModifyHeroStat(0,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害"))))
	call ModifyHeroStat(1,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力"))))
	call ModifyHeroStat(2,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害"))))
	set udg_baojishanghai[i]=(udg_baojishanghai[i]+LoadReal(YDHT,id,StringHash("暴击伤害"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击伤害")))
	set udg_baojilv[i]=(udg_baojilv[i]+LoadReal(YDHT,id,StringHash("暴击率"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击率")))
	set juexuelingwu[i]=juexuelingwu[i]+R2I(LoadReal(YDHT,id,StringHash("绝学领悟")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("绝学领悟")))
	set gengu[i]=gengu[i]+R2I(LoadReal(YDHT,id,StringHash("根骨")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("根骨")))
	set danpo[i]=danpo[i]+R2I(LoadReal(YDHT,id,StringHash("胆魄")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("胆魄")))
	set wuxing[i]=wuxing[i]+R2I(LoadReal(YDHT,id,StringHash("悟性")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("悟性")))
	set yishu[i]=yishu[i]+R2I(LoadReal(YDHT,id,StringHash("医术")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("医术")))
	set jingmai[i]=jingmai[i]+R2I(LoadReal(YDHT,id,StringHash("经脉")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("经脉")))
	set fuyuan[i]=fuyuan[i]+R2I(LoadReal(YDHT,id,StringHash("福缘")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("福缘")))
	set shanghaihuifu[i]=shanghaihuifu[i]+LoadReal(YDHT,id,StringHash("伤害回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("伤害回复"))
	set shaguaihufui[i]=shaguaihufui[i]+LoadReal(YDHT,id,StringHash("杀怪回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("杀怪回复"))
	set shengminghuifu[i]=shengminghuifu[i]+LoadReal(YDHT,id,StringHash("生命回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("生命回复"))
	set falihuifu[i]=falihuifu[i]+LoadReal(YDHT,id,StringHash("法力回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("法力回复"))
endfunction
//脱下装备
function pz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_CHARGED)))
endfunction
function qz takes nothing returns nothing
	local integer i=(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	local integer id=GetItemTypeId(GetManipulatedItem())
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,1,R2I(LoadReal(YDHT,id,StringHash("攻击力"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,1,R2I(LoadReal(YDHT,id,StringHash("防御"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),1,1,R2I(LoadReal(YDHT,id,StringHash("法力上限"))))
	call ModifyHeroStat(0,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害"))))
	call ModifyHeroStat(1,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力"))))
	call ModifyHeroStat(2,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害"))))
	set udg_baojishanghai[i]=(udg_baojishanghai[i]-LoadReal(YDHT,id,StringHash("暴击伤害"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击伤害")))
	set udg_baojilv[i]=(udg_baojilv[i]-LoadReal(YDHT,id,StringHash("暴击率"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击率")))
	set juexuelingwu[i]=juexuelingwu[i]-R2I(LoadReal(YDHT,id,StringHash("绝学领悟")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("绝学领悟")))
	set gengu[i]=gengu[i]-R2I(LoadReal(YDHT,id,StringHash("根骨")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("根骨")))
	set danpo[i]=danpo[i]-R2I(LoadReal(YDHT,id,StringHash("胆魄")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("胆魄")))
	set wuxing[i]=wuxing[i]-R2I(LoadReal(YDHT,id,StringHash("悟性")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("悟性")))
	set yishu[i]=yishu[i]-R2I(LoadReal(YDHT,id,StringHash("医术")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("医术")))
	set jingmai[i]=jingmai[i]-R2I(LoadReal(YDHT,id,StringHash("经脉")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("经脉")))
	set fuyuan[i]=fuyuan[i]-R2I(LoadReal(YDHT,id,StringHash("福缘")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("福缘")))
	set shanghaihuifu[i]=shanghaihuifu[i]-LoadReal(YDHT,id,StringHash("伤害回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("伤害回复"))
	set shaguaihufui[i]=shaguaihufui[i]-LoadReal(YDHT,id,StringHash("杀怪回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("杀怪回复"))
	set shengminghuifu[i]=shengminghuifu[i]-LoadReal(YDHT,id,StringHash("生命回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("生命回复"))
	set falihuifu[i]=falihuifu[i]-LoadReal(YDHT,id,StringHash("法力回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("法力回复"))
endfunction

//江湖忠
function UnitHaveJueZhanBa takes nothing returns boolean
	return((UnitHaveItem(GetAttacker(),'I08V')))
endfunction
function JueZhanBaXiaoGuo takes nothing returns nothing
	local unit u = GetTriggerUnit()
	if((ModuloInteger(GetUnitPointValue(u),100)==0))then
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.1*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.05*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	else
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	endif
	set u = null
endfunction
//决战霸
function UnitHaveJiangHuZhong takes nothing returns boolean
	return((UnitHaveItem(GetTriggerUnit(),'I090')))
endfunction
function JiangHuZhongXiaoGuo takes nothing returns nothing
local unit u = GetAttacker()
	if((ModuloInteger(GetUnitPointValue(u),100)==0))then
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.1*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.05*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	else
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	endif
	set u = null
endfunction
//穿武器或衣服
function Mz takes nothing returns boolean
	return(((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE))and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function ItemChongFu takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	set E8=1
	set udg_wuqishu[i]=0
	set udg_yifushu[i]=0
	loop
		exitwhen E8>6
		if (GetItemType(UnitItemInSlotBJ(u,E8))==ITEM_TYPE_ARTIFACT) then
			set udg_wuqishu[i]=udg_wuqishu[i]+1
		endif
		if (GetItemType(UnitItemInSlotBJ(u,E8))==ITEM_TYPE_PURCHASABLE) then
			set udg_yifushu[i]=udg_yifushu[i]+1
		endif
		if((GetItemType(UnitItemInSlotBJ(u,E8))==GetItemType(GetManipulatedItem()))and(UnitItemInSlotBJ(u,E8)!=GetManipulatedItem()) and Ce[i]!=7) then
			call UnitRemoveItemSwapped(UnitItemInSlotBJ(u,E8),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000非丫鬟角色最多只能携带一件武器和衣服")
		endif
		set E8=E8+1
	endloop
	if Ce[i]==7 and udg_junzhu[i]==false then
		if GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT and udg_wuqishu[i]>=3 then
			call UnitRemoveItemSwapped(GetManipulatedItem(),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000丫鬟最多只能携带两件武器")
		endif
		if GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE and udg_yifushu[i]>=3 then
			call UnitRemoveItemSwapped(GetManipulatedItem(),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000丫鬟最多只能穿两件衣服")
		endif
	endif
	set u = null
	set p = null
endfunction
//-------套装系统开始--------
function Pz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemLevel(GetManipulatedItem())==3)or(GetItemLevel(GetManipulatedItem())==6)))
endfunction
function Qz takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if((F8[i]==false)and(UnitHaveItem(u,'I01L'))and(UnitHaveItem(u,'I01M')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※精钢套装※|R\n|CFFB2FF00招式伤害+150\n暴击率+4%\n暴击伤害+30%\n杀怪回复+500\n根骨+1\n胆魄+1|R")
		set F8[i]=true
		call ModifyHeroStat(0,u,0,$96)
		set udg_baojilv[i]=(udg_baojilv[i]+.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+.3)
		set shaguaihufui[i]=(shaguaihufui[i]+500.)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((XNKL[i]==false)and(UnitHaveItem(u,'I0A8'))and(UnitHaveItem(u,'I0A9')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※新年快乐套装※|R\n|CFFB2FF00全属性+1000\n全性格属性+5|R")
		set XNKL[i]=true
		call ModifyHeroStat(0,u,0,1000)
		call ModifyHeroStat(1,u,0,1000)
		call ModifyHeroStat(2,u,0,1000)
		set jingmai[i]=(jingmai[i]+5)
		set fuyuan[i]=(fuyuan[i]+5)
		set wuxing[i]=(wuxing[i]+5)
		set yishu[i]=(yishu[i]+5)
		set gengu[i]=(gengu[i]+5)
		set danpo[i]=(danpo[i]+5)
	endif
	if((H8[i]==false)and(UnitHaveItem(u,1227895118))and(UnitHaveItem(u,1227895119))and(UnitHaveItem(u,1227895120)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※七星套装※|R\n|CFFB2FF00招式伤害+200\n魔法上限+15\n法力恢复+5\n气血+10000\n每秒恢复+130\n医术+1\n悟性+1|R")
		set H8[i]=true
		call ModifyHeroStat(0,u,0,$C8)
		call YDWEGeneralBounsSystemUnitSetBonus(u,1,0,15)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$2710)
		call UnitAddAbility(u,1093678424)
		call UnitAddAbility(u,1093678425)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
	endif
	if((I8[i]==false)and(UnitHaveItem(u,'I01Q'))and(UnitHaveItem(u,'I01R')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※破军套装※|R\n|CFFB2FF00攻击速度+30%\n气血+10000\n每秒回复+400\n防御+30\n胆魄+1\n福缘+1")
		set I8[i]=true
		call UnitAddAbility(u,1093678426)
		call UnitAddAbility(u,1093678640)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$2710)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,30)
		set danpo[i]=(danpo[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
	endif
	if((l8[i]==false)and(UnitHaveItem(u,'I00X'))and(UnitHaveItem(u,'I00Y')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※绝恋套装※|R\n|CFFB2FF00招式伤害+150\n真实伤害+100\n绝学领悟力+1\n气血+15000\n每秒回复+300\n伤害回复+300\n全性格属性+1")
		set l8[i]=true
		call ModifyHeroStat(0,u,0,$96)
		call ModifyHeroStat(2,u,0,100)
		set juexuelingwu[i]=(juexuelingwu[i]+1)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$3A98)
		call UnitAddAbility(u,1093678641)
		set shanghaihuifu[i]=(shanghaihuifu[i]+300.)
		set jingmai[i]=(jingmai[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((G8[i]==false)and(UnitHaveItem(u,'I00Z'))and(UnitHaveItem(u,'I010')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※倾城套装※|R\n|CFFB2FF00防御+170\n绝学领悟力+1\n暴击率+4%\n暴击伤害+30%\n杀怪回复+600\n全性格属性+1")
		set G8[i]=true
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,$AA)
		set juexuelingwu[i]=(juexuelingwu[i]+1)
		set udg_baojilv[i]=(udg_baojilv[i]+.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+.3)
		set shaguaihufui[i]=(shaguaihufui[i]+600.)
		set jingmai[i]=(jingmai[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((Ee[i]==false)and(UnitHaveItem(u,'I08V'))and(UnitHaveItem(u,'I08W'))and(UnitHaveItem(u,'I08X')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※江湖套装※|R\n|CFFB2FF00内力+300\n真实伤害+200\n暴击伤害+150%\n法力恢复+10\n暴击率+20%\n绝学领悟力+4\n全性格属性+3\n武功伤害+60%")
		set Ee[i]=true
		call ModifyHeroStat(1,u,0,300)
		call ModifyHeroStat(2,u,0,$C8)
		call UnitAddAbility(u,1093681741)
		set udg_baojilv[i]=(udg_baojilv[i]+.2)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+1.5)
		set juexuelingwu[i]=(juexuelingwu[i]+4)
		set jingmai[i]=(jingmai[i]+3)
		set fuyuan[i]=(fuyuan[i]+3)
		set wuxing[i]=(wuxing[i]+3)
		set yishu[i]=(yishu[i]+3)
		set gengu[i]=(gengu[i]+3)
		set danpo[i]=(danpo[i]+3)
		set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]+.6)
	endif
	if((De[i]==false)and(UnitHaveItem(u,'I090'))and(UnitHaveItem(u,'I08Z'))and(UnitHaveItem(u,'I08Y')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※决战套装※|R\n|CFFB2FF00招式伤害+1000\n伤害回复+600\n气血+100000\n每秒恢复+1000\n防御+1000\n绝学领悟力+4\n全性格属性+3\n伤害吸收+30%")
		set De[i]=true
		call ModifyHeroStat(0,u,0,1000)
		set shanghaihuifu[i]=(shanghaihuifu[i]+600.)
		call UnitAddAbility(u,1093681742)
		call UnitAddAbility(u,1093681743)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,1000)
		set juexuelingwu[i]=(juexuelingwu[i]+4)
		set jingmai[i]=(jingmai[i]+3)
		set fuyuan[i]=(fuyuan[i]+3)
		set wuxing[i]=(wuxing[i]+3)
		set yishu[i]=(yishu[i]+3)
		set gengu[i]=(gengu[i]+3)
		set danpo[i]=(danpo[i]+3)
		set udg_shanghaixishou[i]=(udg_shanghaixishou[i]+.3)
	endif
	set u = null
	set p = null
endfunction
//失去套装
function Sz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemLevel(GetManipulatedItem())==3)or(GetItemLevel(GetManipulatedItem())==6)))
endfunction
function Tz takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	call YDWEPolledWaitNull(.01)
	if((F8[i])and((UnitHaveItem(u,'I01L')==false)or(UnitHaveItem(u,'I01M')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去精钢套装属性|R")
		set F8[i]=false
		call ModifyHeroStat(0,u,1,$96)
		set udg_baojilv[i]=(udg_baojilv[i]-.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-.3)
		set shaguaihufui[i]=(shaguaihufui[i]-500.)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((XNKL[i])and((UnitHaveItem(u,'I0A8')==false)or(UnitHaveItem(u,'I0A9')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去新年快乐套装属性|R")
		set XNKL[i]=false
		call ModifyHeroStat(0,u,1,1000)
		call ModifyHeroStat(1,u,1,1000)
		call ModifyHeroStat(2,u,1,1000)
		set jingmai[i]=(jingmai[i]-5)
		set fuyuan[i]=(fuyuan[i]-5)
		set wuxing[i]=(wuxing[i]-5)
		set yishu[i]=(yishu[i]-5)
		set gengu[i]=(gengu[i]-5)
		set danpo[i]=(danpo[i]-5)
	endif
	if((H8[i])and((UnitHaveItem(u,1227895118)==false)or(UnitHaveItem(u,1227895119)==false)or(UnitHaveItem(u,1227895120)==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去七星套装属性|R")
		set H8[i]=false
		call ModifyHeroStat(0,u,1,$C8)
		call YDWEGeneralBounsSystemUnitSetBonus(u,1,1,15)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$2710)
		call UnitRemoveAbility(u,1093678424)
		call UnitRemoveAbility(u,1093678425)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
	endif
	if((I8[i])and((UnitHaveItem(u,'I01Q')==false)or(UnitHaveItem(u,'I01R')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去破军套装属性|R")
		set I8[i]=false
		call UnitRemoveAbility(u,1093678426)
		call UnitRemoveAbility(u,1093678640)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$2710)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,30)
		set danpo[i]=(danpo[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
	endif
	if((l8[i])and((UnitHaveItem(u,'I00X')==false)or(UnitHaveItem(u,'I00Y')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去绝恋套装属性|R")
		set l8[i]=false
		call ModifyHeroStat(0,u,1,$96)
		call ModifyHeroStat(2,u,1,100)
		set juexuelingwu[i]=(juexuelingwu[i]-1)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$3A98)
		call UnitRemoveAbility(u,1093678641)
		set shanghaihuifu[i]=(shanghaihuifu[i]-300.)
		set jingmai[i]=(jingmai[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((G8[i])and((UnitHaveItem(u,'I00Z')==false)or(UnitHaveItem(u,'I010')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去倾城套装属性|R")
		set G8[i]=false
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,$AA)
		set juexuelingwu[i]=(juexuelingwu[i]-1)
		set udg_baojilv[i]=(udg_baojilv[i]-.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-.3)
		set shaguaihufui[i]=(shaguaihufui[i]-600.)
		set jingmai[i]=(jingmai[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((Ee[i])and((UnitHaveItem(u,'I08V')==false)or(UnitHaveItem(u,'I08W')==false)or(UnitHaveItem(u,'I08X')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去江湖套装属性|R")
		set Ee[i]=false
		call ModifyHeroStat(1,u,1,300)
		call ModifyHeroStat(2,u,1,$C8)
		call UnitRemoveAbility(u,1093681741)
		set udg_baojilv[i]=(udg_baojilv[i]-.2)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-1.5)
		set juexuelingwu[i]=(juexuelingwu[i]-4)
		set jingmai[i]=(jingmai[i]-3)
		set fuyuan[i]=(fuyuan[i]-3)
		set wuxing[i]=(wuxing[i]-3)
		set yishu[i]=(yishu[i]-3)
		set gengu[i]=(gengu[i]-3)
		set danpo[i]=(danpo[i]-3)
		set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]-.6)
	endif
	if((De[i])and((UnitHaveItem(u,'I090')==false)or(UnitHaveItem(u,'I08Z')==false)or(UnitHaveItem(u,'I08Y')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去决战套装属性|R")
		set De[i]=false
		call ModifyHeroStat(0,u,1,1000)
		set shanghaihuifu[i]=(shanghaihuifu[i]-600.)
		call UnitRemoveAbility(u,1093681742)
		call UnitRemoveAbility(u,1093681743)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,1000)
		set juexuelingwu[i]=(juexuelingwu[i]-4)
		set jingmai[i]=(jingmai[i]-3)
		set fuyuan[i]=(fuyuan[i]-3)
		set wuxing[i]=(wuxing[i]-3)
		set yishu[i]=(yishu[i]-3)
		set gengu[i]=(gengu[i]-3)
		set danpo[i]=(danpo[i]-3)
		set udg_shanghaixishou[i]=(udg_shanghaixishou[i]-.3)
	endif
	set u = null
	set p = null
endfunction
//镇妖升级
function DoHaveZhenYao takes unit uc, unit ut returns boolean
	local unit u = udg_hero[(1+GetPlayerId(GetOwningPlayer(uc)))]
	if (uc == null or GetUnitTypeId(ut)=='n000' or GetUnitPointValue(ut)==10) then
		return false
	else
		if UnitHaveItem(u, 'I02S') or UnitHaveItem(u, 'I02M') or UnitHaveItem(u, 'I02Q') or UnitHaveItem(u, 'I02R') then
			return true
		endif
	endif
	return false
endfunction
function Vz takes nothing returns boolean
	return DoHaveZhenYao(GetKillingUnit(),GetTriggerUnit())
endfunction
function ZhenYaoLevelUp takes unit u, integer id, integer id2, integer value returns nothing
	local integer i = 0
	call SetWidgetLife(FetchUnitItem(u,id),GetWidgetLife(FetchUnitItem(u,id))-1)
	if UnitHaveItem(u, id) then
		if(500000.-GetWidgetLife(FetchUnitItem(u,id))<I2R(value))then
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"成长值："+(I2S(R2I(500000.-GetWidgetLife(FetchUnitItem(u,id))))+" / "+I2S(value)))
		else
			set i = GetItemUserData(FetchUnitItem(u,id))
			call RemoveItem(FetchUnitItem(u,id))
			call createitemloc(id2,v7[9])
			call SetItemUserData(bj_lastCreatedItem,i)
			call UnitAddItem(u,bj_lastCreatedItem)
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFF33FF00恭喜养武等级获得提升")
		endif
	endif
endfunction
function Wz takes nothing returns nothing
	local unit u = udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]
	call ZhenYaoLevelUp(u, 'I02S', 'I02M', 200)
	call ZhenYaoLevelUp(u, 'I02M', 'I02Q', 500)
	call ZhenYaoLevelUp(u, 'I02Q', 'I02R', 800)
	call ZhenYaoLevelUp(u, 'I02R', 'I02P', 1200)
endfunction
//-------镶嵌宝石系统开始-------//
function IsXiangQian takes item it, unit u returns boolean
	if GetItemTypeId(it)=='I05R' or GetItemTypeId(it)=='I05Q' or GetItemTypeId(it)=='I05M' or GetItemTypeId(it)=='I05O' or GetItemTypeId(it)=='I05P' or GetItemTypeId(it)=='I05N' then
		if Ce[1+GetPlayerId(GetOwningPlayer(u))]!=2 then
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00你不是锻造师，不可以镶嵌宝石")
			call AdjustPlayerStateBJ(20000,GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
			return false
	    else
	        return true
        endif
    endif
    return false
endfunction
function kA takes nothing returns boolean
	return IsXiangQian(GetManipulatedItem(), GetTriggerUnit())
endfunction
function XiangQian takes unit u, item it, item it2, integer id, integer i returns nothing
	local player p = GetOwningPlayer(u)
	local integer ii1 = ModuloInteger(GetItemUserData(it)/1000, 10)
	local integer ii2 = ModuloInteger(GetItemUserData(it)/100, 10)
	local integer ii3 = ModuloInteger(GetItemUserData(it)/10, 10)
	if GetItemTypeId(it2)==id then
		if (ii1==0) then
			call AdjustPlayerStateBJ(20000,p,PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你的第一格物品无法镶嵌宝石")
		else
			call SetItemPositionLoc(it,v7[9])
			if (ii2==0) then
				call SetItemUserData(it,GetItemUserData(it)+100*i-1000)
			else
				if (ii3==0) then
					call SetItemUserData(it,GetItemUserData(it)+10*i-1000)
				else
					call SetItemUserData(it,GetItemUserData(it)+1*i-1000)
				endif
			endif
			call UnitAddItem(u,it)
		endif
	endif
	set p = null
endfunction
function mA takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local item it = UnitItemInSlotBJ(u,1)
	call XiangQian(u, it, GetManipulatedItem(), 'I05M', 1)
	call XiangQian(u, it, GetManipulatedItem(), 'I05P', 2)
	call XiangQian(u, it, GetManipulatedItem(), 'I05O', 3)
	call XiangQian(u, it, GetManipulatedItem(), 'I05Q', 4)
	call XiangQian(u, it, GetManipulatedItem(), 'I05R', 5)
	call XiangQian(u, it, GetManipulatedItem(), 'I05N', 6)
	set u = null
	set it = null
endfunction
//-------镶嵌宝石系统结束-------//

function Equipment_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
//鸟拿东西显示附加属性
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function Zy))
	call TriggerAddAction(t,function dz)
	//英雄拿东西显示附加属性
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function fz))
	call TriggerAddAction(t,function gz)
	//英雄放下东西显示失去附加属性
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(t,Condition(function iz))
	call TriggerAddAction(t,function jz)
	//英雄穿上装备
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function mz))
	call TriggerAddAction(t,function nz)
	//英雄脱下装备
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(t,Condition(function pz))
	call TriggerAddAction(t,function qz)
	//只能穿一件衣服或武器的判断
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function Mz))
	call TriggerAddAction(t,function ItemChongFu)
	//集齐套装
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function Pz))
	call TriggerAddAction(t,function Qz)
	//失去套装
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(t,Condition(function Sz))
	call TriggerAddAction(t,function Tz)
	//镇妖升级
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function Vz))
	call TriggerAddAction(t,function Wz)
	//镶嵌宝石系统
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function kA))
	call TriggerAddAction(t,function mA)	
	set t = null
endfunction
