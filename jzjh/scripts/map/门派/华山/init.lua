----------华山开始--------//
--冲灵剑法
function PD()
	return GetUnitAbilityLevel(GetAttacker(), 1093679191) >= 1 and GetRandomReal(0.0, 100.0) <= 26.0 + 2.0 * I2R(GetUnitAbilityLevel(GetAttacker(), 1093679191)) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function QD()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0 + I2R(jingmai[1 + GetPlayerId(GetOwningPlayer(u))]) / 20.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.8
	end
	DestroyEffect(AddSpecialEffectLocBJ(loc, "war3mapImported\\Mjolnir.mdx"))
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1113813619) == false then
		WanBuff(u, uc, 10)
	end
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454324) == false then
		WanBuff(u, uc, 7)
	end
	shanghai = ShangHaiGongShi(u, uc, 44, 50, shxishu, 1093679191)
	WuGongShangHai(u, uc, shanghai)
	WuGongShengChong(GetAttacker(), 1093679191, 400)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--夺命剑气诀
function SD()
	return GetEventDamage() == 0.43
end
function TD()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0 + GetUnitState(u, UNIT_STATE_MAX_MANA) / 200.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, uc, 7.0, 9.0, shxishu, 1093679192)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetRandomInt(1, 100) <= 20 and UnitHasBuffBJ(uc, 1113813619) == false then
		WanBuff(u, uc, 10)
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 and GetRandomInt(1, 100) <= 20 and UnitHasBuffBJ(uc, 1112437615) == false then
		WanBuff(u, uc, 2)
	end
	RemoveLocation(loc)
	WuGongShengChong(u, 1093679192, 36000.0)
	u = nil
	uc = nil
	loc = nil
end
--狂风快剑
function VD()
	return GetUnitAbilityLevel(GetAttacker(), 1093679193) ~= 0 and UnitHasBuffBJ(GetAttacker(), 1110454329) and GetRandomReal(0, 100) <= 20 + 2 * I2R(GetUnitAbilityLevel(GetAttacker(), 1093678933))
end
function WD()
	local u = GetAttacker()
	local p = GetOwningPlayer(u)
	local l__ut = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656882, p, loc, bj_UNIT_FACING)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 8.0)
	Yv(bj_lastCreatedUnit, u, 2.0, 1.0, 0.0, 10.0, 0.03)
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 then
		CreateNUnitsAtLoc(1, 1697656882, p, loc, bj_UNIT_FACING)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 8.0)
		Yv(bj_lastCreatedUnit, u, 2.0, 1.0, 0.0, 10.0, 0.03)
	end
	WuGongShengChong(u, 1093679193, 250.0)
	RemoveLocation(loc)
	u = nil
	l__ut = nil
	p = nil
	loc = nil
end
function YD()
	return GetEventDamage() == 0.44
end
function ZD()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.5
	end
	shanghai = ShangHaiGongShi(u, uc, 20, 20, shxishu, 1093679193)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--紫霞功
function Trig_arc_Conditions()
	return GetSpellAbilityId() == 1093677879
end
function arc_Actions2()
	local t = GetExpiredTimer()
	local i = LoadReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local u = LoadUnitHandle(YDHT, StringHash("unit"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local uc = LoadUnitHandle(YDHT, StringHash("unit1"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local l__ut = LoadUnitHandle(YDHT, StringHash("unit2"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	local x1 = GetUnitX(uc)
	local y1 = GetUnitY(uc)
	local k = LoadReal(YDHT, StringHash("realK"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local s = SquareRoot((x - x1) * (x - x1) + (y - y1) * (y - y1))
	local r = s / k
	local h = s * CosBJ(k * 3 + 30) * SinBJ(i * 3) / 2 + 50
	local r1 = i * (s - 2 * r) / 60 + r
	local x2 = x - r * CosBJ(YDWEAngleBetweenUnits(uc, u))
	local y2 = y - r * SinBJ(YDWEAngleBetweenUnits(uc, u))
	local xx3 = x2 + r1 * CosBJ(YDWEAngleBetweenUnits(uc, u) + i * LoadReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t))))) -- INLINED!!
	local yy3 = y2 + r1 * SinBJ(YDWEAngleBetweenUnits(uc, u) + i * LoadReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t))))) -- INLINED!!
	local shxishu = 1.0 + danpo[1 + GetPlayerId(GetOwningPlayer(u))] / 20.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.8
	end
	i = i + 1
	if i >= 60 or IsTerrainPathable(xx3, yy3, PATHING_TYPE_FLYABILITY) == true then
		-- 此处为伤害值
		shanghai = ShangHaiGongShi(u, uc, 10, 8, shxishu, 1093677879)
		WuGongShangHai(u, uc, shanghai)
		if GetRandomPercentageBJ() <= 20 and GetUnitAbilityLevel(u, 1093678928) >= 1 then
			WanBuff(u, uc, 12)
		end
		RemoveUnit(l__ut)
		PauseTimer(t)
		DestroyTimer(t)
	else
		SaveReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t))), i * 1.0) -- INLINED!!
		SetUnitX(l__ut, xx3)
		SetUnitY(l__ut, yy3)
		SetUnitFlyHeight(l__ut, h, 999999)
	end
	t = nil
	u = nil
	uc = nil
	l__ut = nil
end
function arc_Actions3()
	local t = GetExpiredTimer()
	local i = LoadReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local u = LoadUnitHandle(YDHT, StringHash("unit"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local uc = LoadUnitHandle(YDHT, StringHash("unit1"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local l__ut = LoadUnitHandle(YDHT, StringHash("unit2"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	local x1 = GetUnitX(uc)
	local y1 = GetUnitY(uc)
	local k = LoadReal(YDHT, StringHash("realK"), StringHash(I2S(GetHandleId(t)))) -- INLINED!!
	local s = SquareRoot((x - x1) * (x - x1) + (y - y1) * (y - y1))
	local r = s / 10 * k
	local h = s * CosBJ(k * 3) * SinBJ(i * 3) / 2 + 50
	local a = Atan2BJ(s / 2, r) / (LoadReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t)))) * -10) -- INLINED!!
	local r1 = SquareRoot(s / 2 * (s / 2) + r * r)
	local x2 = x - r1 * CosBJ(YDWEAngleBetweenUnits(uc, u) + Atan2BJ(r, s / 2) * LoadReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t)))) / 3) -- INLINED!!
	local y2 = y - r1 * SinBJ(YDWEAngleBetweenUnits(uc, u) + Atan2BJ(r, s / 2) * LoadReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t)))) / 3) -- INLINED!!
	local xx3 = x2 + r1 * CosBJ(Atan2BJ(y - y2, x - x2) - i * a)
	local yy3 = y2 + r1 * SinBJ(Atan2BJ(y - y2, x - x2) - i * a)
	local shxishu = 1.0 + danpo[1 + GetPlayerId(GetOwningPlayer(u))] / 20.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.8
	end
	i = i + 1
	if i >= 60 or IsTerrainPathable(xx3, yy3, PATHING_TYPE_FLYABILITY) == true then
		-- 此处为伤害值
		shanghai = ShangHaiGongShi(u, uc, 10, 8, shxishu, 1093677879)
		WuGongShangHai(u, uc, shanghai)
		if GetRandomPercentageBJ() <= 20 and GetUnitAbilityLevel(u, 1093678928) >= 1 then
			WanBuff(u, uc, 12)
		end
		UnitDamageTarget(u, uc, I2R(GetHeroStr(u, false)), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
		RemoveUnit(l__ut)
		PauseTimer(t)
		DestroyTimer(t)
	else
		SaveReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t))), i * 1.0) -- INLINED!!
		SetUnitX(l__ut, xx3)
		SetUnitY(l__ut, yy3)
		SetUnitFlyHeight(l__ut, h, 999999)
	end
	t = nil
	u = nil
	uc = nil
	l__ut = nil
end
function arc_Actions1()
	local tm = GetExpiredTimer()
	local t = CreateTimer()
	local u = LoadUnitHandle(YDHT, StringHash("unit"), StringHash(I2S(GetHandleId(tm)))) -- INLINED!!
	local uc = LoadUnitHandle(YDHT, StringHash("unit1"), StringHash(I2S(GetHandleId(tm)))) -- INLINED!!
	-- 修改创建单位ID 'e015'
	local l__ut = CreateUnit(GetOwningPlayer(u), 1697657141, GetUnitX(u), GetUnitY(u), 0)
	local i = LoadReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(tm)))) -- INLINED!!
	SaveUnitHandle(YDHT, StringHash("unit"), StringHash(I2S(GetHandleId(t))), u) -- INLINED!!
	SaveUnitHandle(YDHT, StringHash("unit1"), StringHash(I2S(GetHandleId(t))), uc) -- INLINED!!
	SaveUnitHandle(YDHT, StringHash("unit2"), StringHash(I2S(GetHandleId(t))), l__ut) -- INLINED!!
	SaveReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t))), 0 * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash("realK"), StringHash(I2S(GetHandleId(t))), GetRandomReal(1, 10) * 1.0) -- INLINED!!
	if GetRandomPercentageBJ() >= 50 then
		SaveReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t))), -3 * 1.0) -- INLINED!!
	else
		SaveReal(YDHT, StringHash("realJ"), StringHash(I2S(GetHandleId(t))), 3 * 1.0) -- INLINED!!
	end
	if GetRandomPercentageBJ() >= 50 then
		TimerStart(t, 0.02, TRUE, arc_Actions3)
	else
		TimerStart(t, 0.02, TRUE, arc_Actions2)
	end
	t = nil
	u = nil
	uc = nil
	l__ut = nil
	i = i + 1
	-- 此处为单位个数。现在为60(攻击轨道个数)
	if i >= 40 then
		PauseTimer(tm)
		DestroyTimer(tm)
	else
		SaveReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(tm))), i * 1.0) -- INLINED!!
	end
	tm = nil
end
function Trig_arc_Actions()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	WuGongShengChong(u, 1093677879, 160)
	SaveUnitHandle(YDHT, StringHash("unit"), StringHash(I2S(GetHandleId(t))), GetTriggerUnit()) -- INLINED!!
	SaveUnitHandle(YDHT, StringHash("unit1"), StringHash(I2S(GetHandleId(t))), GetSpellTargetUnit()) -- INLINED!!
	SaveReal(YDHT, StringHash("real"), StringHash(I2S(GetHandleId(t))), 0 * 1.0) -- INLINED!!
	TimerStart(t, 0.02, TRUE, arc_Actions1)
	t = nil
end
--===========================================================================
--function eE takes nothing returns boolean
--	return((GetSpellAbilityId()=='A037'))
--endfunction
--function fE takes nothing returns boolean
--	return((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))))
--endfunction
--function gE takes nothing returns nothing
--	call GroupAddUnit(Fd[(1+GetPlayerId(GetTriggerPlayer()))],GetEnumUnit())
--endfunction
--function hE takes nothing returns boolean
--	return((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))))
--endfunction
--function iE takes nothing returns nothing
--	call GroupAddUnit(Fd[(1+GetPlayerId(GetTriggerPlayer()))],GetEnumUnit())
--endfunction
--function jE takes nothing returns nothing
--	local unit u = GetTriggerUnit()
--	local player p = GetOwningPlayer(u)
--	local integer i = 1 + GetPlayerId(p)
--	local location loc = GetUnitLoc(u)
--	local integer j = 0
--	local string no1 = null
--	local string no2 = null
--	local string no3 = null
--	local string no4 = null
--	local string no5 = null
--	local string no6 = null
--	local string no7 = null
--	local integer num = 0
--	call PauseUnit(u,true)
--	call WuGongShengChong(GetTriggerUnit(),'A037',160.)
--	set cd[i]=true
--	set j =  GetRandomInt(1, 4)
--	if(j==1) then
--		set no1 = "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no1 = "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no1 = "|cff00ff66 ← "
--	else
--		set no1 = "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no2 = no1 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no2 = no1 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no2 = no1 + "|cff00ff66 ← "
--	else
--		set no2 = no1 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no3 = no2 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no3 = no2 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no3 = no2 + "|cff00ff66 ← "
--	else
--		set no3 = no2 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no4 = no3 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no4 = no3 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no4 = no3 + "|cff00ff66 ← "
--	else
--		set no4 = no3 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no5 = no4 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no5 = no4 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no5 = no4 + "|cff00ff66 ← "
--	else
--		set no5 = no4 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no6 = no5 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no6 = no5 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no6 = no5 + "|cff00ff66 ← "
--	else
--		set no6 = no5 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set j =  GetRandomInt(1, 4)
--	if(j==1)then
--		set no7 = no6 + "|cff00ff66 ↑ "
--	elseif(j==2)then
--		set no7 = no6 + "|cff00ff66 ↓ "
--	elseif(j==3)then
--		set no7 = no6 + "|cff00ff66 ← "
--	else
--		set no7 = no6 + "|cff00ff66 → "
--	endif
--	set num = num*10 + j
--	set Dd[i]=num
--	set Ed[i]=$F4240
--	call DisplayTimedTextToPlayer(p,0,0,30,"请按下列顺序输入键盘指令，则可以提高紫霞功的伤害倍数："+no7)
--	if((GetUnitAbilityLevel(u,1093678930)!=0))then
--		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.,loc,Condition(function hE)),function iE)
--	else
--		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,loc,Condition(function fE)),function gE)
--	endif
--	if((GetUnitAbilityLevel(u,'A07P')!=0))then
--		call SetUnitInvulnerable(u,true)
--		call YDWEPolledWaitNull(3.)
--		call SetUnitInvulnerable(u,false)
--	endif
--	call RemoveLocation(loc)
--	set u = null
--	set p = null
--	set loc = null
--endfunction
--function mE takes nothing returns boolean
--	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
--endfunction
--function nE takes nothing returns nothing
--	local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
--	local unit uc=GetEnumUnit()
--	local location loc=GetUnitLoc(uc)
--	local integer i=1+GetPlayerId(GetOwningPlayer(u))
--	local real shxishu=1.
--	local real shanghai=0.
--    if((GetUnitAbilityLevel(u,1093678932)!=0))then
--        set shxishu=shxishu+.6
--    endif
--    if((GetUnitAbilityLevel(u,'A07S')!=0))then
--        set shxishu=shxishu+.8
--    endif
--    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
--    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
--    call WuGongShangHai(u,uc,shanghai)
--    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
--        call WanBuff(u, uc, 12)
--    endif
--    call RemoveLocation(loc)
--    set u=null
--    set uc=null
--    set loc=null
--endfunction
--function oE takes nothing returns nothing
--	local player p = GetTriggerPlayer()
--	local integer i = 1 + GetPlayerId(p)
--	local unit u = udg_hero[i]
--	if((Ed[i]==1))then
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==1)then
--			set Gd[i]=Gd[i]+3
--			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	else
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==1)then
--			set Gd[i]=(Gd[i]+3)
--			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
--			set Ed[i]=(Ed[i]/$A)
--			set u = null
--			set p = null
--			return
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	endif
--	call ForGroupBJ(Fd[i],function nE)
--	set Gd[i]=.0
--	set cd[i]=false
--	set Dd[i]=0
--	set Ed[i]=0
--	call GroupClear(Fd[i])
--	call PauseUnit(u,false)
--	set u = null
--	set p = null
--endfunction
--function qE takes nothing returns boolean
--	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
--endfunction
--function rE takes nothing returns nothing
--    local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
--	local unit uc=GetEnumUnit()
--	local location loc=GetUnitLoc(uc)
--	local integer i=1+GetPlayerId(GetOwningPlayer(u))
--	local real shxishu=1.
--	local real shanghai=0.
--    if((GetUnitAbilityLevel(u,1093678932)!=0))then
--        set shxishu=shxishu+.6
--    endif
--    if((GetUnitAbilityLevel(u,'A07S')!=0))then
--        set shxishu=shxishu+.8
--    endif
--    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
--    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
--    call WuGongShangHai(u,uc,shanghai)
--    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
--        call WanBuff(u, uc, 12)
--    endif
--    call RemoveLocation(loc)
--    set u=null
--    set uc=null
--    set loc=null
--endfunction
--function sE takes nothing returns nothing
--	local player p = GetTriggerPlayer()
--	local integer i = 1 + GetPlayerId(p)
--	local unit u = udg_hero[i]
--	if((Ed[i]==1))then
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==2)then
--			set Gd[i]=Gd[i]+3
--			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	else
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==2)then
--			set Gd[i]=(Gd[i]+3)
--			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
--			set Ed[i]=(Ed[i]/$A)
--			set u = null
--			set p = null
--			return
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	endif
--	call ForGroupBJ(Fd[i],function nE)
--	set Gd[i]=.0
--	set cd[i]=false
--	set Dd[i]=0
--	set Ed[i]=0
--	call GroupClear(Fd[i])
--	call PauseUnit(u,false)
--	set u = null
--	set p = null
--endfunction
--function uE takes nothing returns boolean
--	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
--endfunction
--function vE takes nothing returns nothing
--    local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
--	local unit uc=GetEnumUnit()
--	local location loc=GetUnitLoc(uc)
--	local integer i=1+GetPlayerId(GetOwningPlayer(u))
--	local real shxishu=1.
--	local real shanghai=0.
--    if((GetUnitAbilityLevel(u,1093678932)!=0))then
--        set shxishu=shxishu+.6
--    endif
--    if((GetUnitAbilityLevel(u,'A07S')!=0))then
--        set shxishu=shxishu+.8
--    endif
--    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
--    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
--    call WuGongShangHai(u,uc,shanghai)
--    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
--        call WanBuff(u, uc, 12)
--    endif
--    call RemoveLocation(loc)
--    set u=null
--    set uc=null
--    set loc=null
--endfunction
--function wE takes nothing returns nothing
--	local player p = GetTriggerPlayer()
--	local integer i = 1 + GetPlayerId(p)
--	local unit u = udg_hero[i]
--	if((Ed[i]==1))then
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==3)then
--			set Gd[i]=Gd[i]+3
--			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	else
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==3)then
--			set Gd[i]=(Gd[i]+3)
--			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
--			set Ed[i]=(Ed[i]/$A)
--			set u = null
--			set p = null
--			return
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	endif
--	call ForGroupBJ(Fd[i],function nE)
--	set Gd[i]=.0
--	set cd[i]=false
--	set Dd[i]=0
--	set Ed[i]=0
--	call GroupClear(Fd[i])
--	call PauseUnit(u,false)
--	set u = null
--	set p = null
--endfunction
--function yE takes nothing returns boolean
--	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
--endfunction
--function zE takes nothing returns nothing
--	local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
--	local unit uc=GetEnumUnit()
--	local location loc=GetUnitLoc(uc)
--	local integer i=1+GetPlayerId(GetOwningPlayer(u))
--	local real shxishu=1.
--	local real shanghai=0.
--    if((GetUnitAbilityLevel(u,1093678932)!=0))then
--        set shxishu=shxishu+.6
--    endif
--    if((GetUnitAbilityLevel(u,'A07S')!=0))then
--        set shxishu=shxishu+.8
--    endif
--    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
--    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
--    call WuGongShangHai(u,uc,shanghai)
--    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
--        call WanBuff(u, uc, 12)
--    endif
--    call RemoveLocation(loc)
--    set u=null
--    set uc=null
--    set loc=null
--endfunction
--function AE takes nothing returns nothing
--	local player p = GetTriggerPlayer()
--	local integer i = 1 + GetPlayerId(p)
--	local unit u = udg_hero[i]
--	if((Ed[i]==1))then
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==4)then
--			set Gd[i]=Gd[i]+3
--			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	else
--		if(ModuloInteger(Dd[i]/Ed[i],$A)==4)then
--			set Gd[i]=(Gd[i]+3)
--			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
--			set Ed[i]=(Ed[i]/$A)
--			set u = null
--			set p = null
--			return
--		else
--			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
--		endif
--	endif
--	call ForGroupBJ(Fd[i],function nE)
--	set Gd[i]=.0
--	set cd[i]=false
--	set Dd[i]=0
--	set Ed[i]=0
--	call GroupClear(Fd[i])
--	call PauseUnit(u,false)
--	set u = null
--	set p = null
--endfunction
--混元功
function BE()
	return GetSpellAbilityId() == 1093679409 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function bE()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function CE()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.6
	end
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl"))
	RemoveLocation(loc)
	shanghai = ShangHaiGongShi(u, uc, 200.0, 300.0, shxishu, 1093679409)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
	loc = nil
end
function cE()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	local j = jingmai[i] // 5
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.0, loc, Condition(bE)), CE)
	WuGongShengChong(GetTriggerUnit(), 1093679409, 100.0)
	RemoveLocation(loc)
	juexuelingwu[i] = juexuelingwu[i] + j
	DisplayTextToPlayer(p, 0, 0, "绝学领悟力+" .. (I2S(j) or ""))
	YDWEPolledWaitNull(10.0)
	juexuelingwu[i] = juexuelingwu[i] - j
	DisplayTextToPlayer(p, 0, 0, "绝学领悟力-" .. (I2S(j) or ""))
	u = nil
	p = nil
	loc = nil
end
----------华山结束--------//
function HuaShan_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(PD))
	TriggerAddAction(t, QD)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(SD))
	TriggerAddAction(t, TD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(VD))
	TriggerAddAction(t, WD)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(YD))
	TriggerAddAction(t, ZD)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(Trig_arc_Conditions))
	TriggerAddAction(t, Trig_arc_Actions)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(BE))
	TriggerAddAction(t, cE)
end