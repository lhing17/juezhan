//--------华山开始--------//
//冲灵剑法
function PD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A08W')>=1)and(GetRandomReal(.0,100.)<=(26.+(2.*I2R(GetUnitAbilityLevel(GetAttacker(),'A08W')))))and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function QD takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(uc)
	local real shxishu=1.+I2R(jingmai[1+GetPlayerId(GetOwningPlayer(u))])/20.
	local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A06J')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.8
    endif
    call DestroyEffect(AddSpecialEffectLocBJ(loc,"war3mapImported\\Mjolnir.mdx"))
    if((GetUnitAbilityLevel(u,1093678930)!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1113813619)==false))then
        call WanBuff(u, uc, 10)
    endif
    if((GetUnitAbilityLevel(u,1093678935)!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454324)==false))then
        call WanBuff(u, uc, 7)
    endif
    set shanghai=ShangHaiGongShi(u,uc,44,50,shxishu,'A08W')
    call WuGongShangHai(u,uc,shanghai)
    call WuGongShengChong(GetAttacker(),'A08W',400)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//夺命剑气诀
function SD takes nothing returns boolean
return((GetEventDamage()==.43))
endfunction
function TD takes nothing returns nothing
    local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.+GetUnitState(u,UNIT_STATE_MAX_MANA)/200.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A06J')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.7
    endif
    set shanghai=ShangHaiGongShi(u,uc,7.,9.,shxishu,'A08X')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A07P')!=0)and(GetRandomInt(1,100)<=20)and(UnitHasBuffBJ(uc,1113813619)==false))then
        call WanBuff(u, uc, 10)
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0)and(GetRandomInt(1,100)<=20)and(UnitHasBuffBJ(uc,1112437615)==false))then
        call WanBuff(u, uc, 2)
    endif
    call RemoveLocation(loc)
    call WuGongShengChong(u,'A08X',36000.)
    set u=null
    set uc=null
    set loc=null
endfunction
//狂风快剑
function VD takes nothing returns boolean
	return(GetUnitAbilityLevel(GetAttacker(),'A08Y')!=0)and(UnitHasBuffBJ(GetAttacker(),1110454329))and(GetRandomReal(0,100)<=20+2*I2R(GetUnitAbilityLevel(GetAttacker(),'A07U')))
endfunction
function WD takes nothing returns nothing
	local unit u = GetAttacker()
	local player p = GetOwningPlayer(u)
	local unit ut = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,1697656882,p,loc,bj_UNIT_FACING)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',8.)
	call Yv(bj_lastCreatedUnit,u,2.,1.,.0,10.,.03)
	if((GetUnitAbilityLevel(u,'A06J')!=0))then
		call CreateNUnitsAtLoc(1,1697656882,p,loc,bj_UNIT_FACING)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',8.)
		call Yv(bj_lastCreatedUnit,u,2.,1.,.0,10.,.03)
	endif
	call WuGongShengChong(u,'A08Y',250.)
	call RemoveLocation(loc)
	set u = null
	set ut = null
	set p = null
	set loc = null
endfunction
function YD takes nothing returns boolean
	return((GetEventDamage()==.44))
endfunction
function ZD takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,1093678935)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.5
    endif
    set shanghai=ShangHaiGongShi(u,uc,20,20,shxishu,'A08Y')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//紫霞功
function Trig_arc_Conditions takes nothing returns boolean
    return  GetSpellAbilityId() == 'A037'
endfunction
function arc_Actions2 takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local real i = YDWEGetRealByString("real", I2S(YDWEGetTimerID(t)))
    local unit u =YDWEGetUnitByString("unit", I2S(YDWEGetTimerID(t)))
    local unit uc =YDWEGetUnitByString("unit1", I2S(YDWEGetTimerID(t)))
    local unit ut =YDWEGetUnitByString("unit2", I2S(YDWEGetTimerID(t)))
    local real x = GetUnitX(u)
    local real y = GetUnitY(u)
    local real x1 = GetUnitX(uc)
    local real y1 = GetUnitY(uc)
    local real k =YDWEGetRealByString("realK", I2S(YDWEGetTimerID(t)))
    local real s = SquareRoot(( x-x1)*(x-x1) +(y-y1)*(y-y1))
    local real r =s/k
    local real h =s*CosBJ(k*3+30)*SinBJ(i*3)/2+50
    local real r1 =i*(s-2*r)/60+r
    local real x2 = x - r*CosBJ(YDWEAngleBetweenUnits(uc, u))
    local real y2 = y - r*SinBJ(YDWEAngleBetweenUnits(uc, u))
    local real xx3 = x2 + r1*CosBJ(YDWEAngleBetweenUnits(uc, u)+i*YDWEGetRealByString("realJ", I2S(YDWEGetTimerID(t))))
    local real yy3 = y2 + r1*SinBJ(YDWEAngleBetweenUnits(uc, u)+i*YDWEGetRealByString("realJ", I2S(YDWEGetTimerID(t))))
    local real shxishu = 1.+danpo[1+GetPlayerId(GetOwningPlayer(u))]/20.
    local real shanghai = 0.
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.8
    endif
    set i = i+1
    if i>=60 or IsTerrainPathable(xx3, yy3, PATHING_TYPE_FLYABILITY) == true then
    // 此处为伤害值
		set shanghai = ShangHaiGongShi(u, uc, 10, 8, shxishu, 'A037')
		call WuGongShangHai(u, uc, shanghai)
		if GetRandomPercentageBJ()<=20 and GetUnitAbilityLevel(u, 'A07P')>=1 then
			call WanBuff(u, uc, 12)
		endif
        call RemoveUnit( ut )
        call PauseTimer(t)
        call DestroyTimer(t)

    else
        call YDWESaveRealByString( "real", I2S(YDWEGetTimerID(t)), i )
        call SetUnitX( ut, xx3 )
        call SetUnitY( ut, yy3 )
        call SetUnitFlyHeight( ut, h, 999999 )
    endif
    set t = null
    set u = null
    set uc = null
    set ut = null
endfunction

function arc_Actions3 takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local real i = YDWEGetRealByString("real", I2S(YDWEGetTimerID(t)))
    local unit u =YDWEGetUnitByString("unit", I2S(YDWEGetTimerID(t)))
    local unit uc =YDWEGetUnitByString("unit1", I2S(YDWEGetTimerID(t)))
    local unit ut =YDWEGetUnitByString("unit2", I2S(YDWEGetTimerID(t)))
    local real x = GetUnitX(u)
    local real y = GetUnitY(u)
    local real x1 = GetUnitX(uc)
    local real y1 = GetUnitY(uc)
    local real k =YDWEGetRealByString("realK", I2S(YDWEGetTimerID(t)))
    local real s = SquareRoot(( x-x1)*(x-x1) +(y-y1)*(y-y1))
    local real r =s/10*k
    local real h =s*CosBJ(k*3)*SinBJ(i*3)/2+50
    local real a =Atan2BJ(s/2, r)/(YDWEGetRealByString("realJ", I2S(YDWEGetTimerID(t)))*-10)
    local real r1 =SquareRoot(( s/2)*(s/2) +r*r)
    local real x2 = x - r1*CosBJ(YDWEAngleBetweenUnits(uc, u)+Atan2BJ(r, s/2)*YDWEGetRealByString("realJ", I2S(YDWEGetTimerID(t)))/3)
    local real y2 = y - r1*SinBJ(YDWEAngleBetweenUnits(uc, u)+Atan2BJ(r, s/2)*YDWEGetRealByString("realJ", I2S(YDWEGetTimerID(t)))/3)
    local real xx3 = x2 + r1*CosBJ(Atan2BJ((y-y2), (x-x2))-i*a)
    local real yy3 = y2 + r1*SinBJ(Atan2BJ((y-y2), (x-x2))-i*a)
    local real shxishu =  1.+danpo[1+GetPlayerId(GetOwningPlayer(u))]/20.
    local real shanghai = 0.
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.8
    endif
    set i = i+1
    if i>=60 or IsTerrainPathable(xx3, yy3, PATHING_TYPE_FLYABILITY) == true then
    // 此处为伤害值
    	set shanghai = ShangHaiGongShi(u, uc, 10, 8, shxishu, 'A037')
		call WuGongShangHai(u, uc, shanghai)
		if GetRandomPercentageBJ()<=20 and GetUnitAbilityLevel(u, 'A07P')>=1 then
			call WanBuff(u, uc, 12)
		endif
        call UnitDamageTarget( u, uc, I2R(GetHeroStr(u, false)), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
        call RemoveUnit( ut )
        call PauseTimer(t)
        call DestroyTimer(t)

    else
        call YDWESaveRealByString( "real", I2S(YDWEGetTimerID(t)), i )
        call SetUnitX( ut, xx3 )
        call SetUnitY( ut, yy3 )
        call SetUnitFlyHeight( ut, h, 999999 )
    endif
    set t = null
    set u = null
    set uc = null
    set ut = null
endfunction

function arc_Actions1 takes nothing returns nothing
    local timer tm = GetExpiredTimer()
    local timer t = CreateTimer()
    local unit u =YDWEGetUnitByString("unit", I2S(YDWEGetTimerID(tm)))
    local unit uc =YDWEGetUnitByString("unit1", I2S(YDWEGetTimerID(tm)))
    // 修改创建单位ID 'e015'
    local unit ut =CreateUnit( GetOwningPlayer(u), 'e015', GetUnitX(u), GetUnitY(u), 0 )
    local real i = YDWEGetRealByString("real", I2S(YDWEGetTimerID(tm)))
    call YDWESaveUnitByString( "unit", I2S(YDWEGetTimerID(t)), u )
    call YDWESaveUnitByString( "unit1", I2S(YDWEGetTimerID(t)),uc )
    call YDWESaveUnitByString( "unit2", I2S(YDWEGetTimerID(t)),ut)
    call YDWESaveRealByString( "real", I2S(YDWEGetTimerID(t)), 0 )
    call YDWESaveRealByString( "realK", I2S(YDWEGetTimerID(t)), GetRandomReal(1, 10) )
    if GetRandomPercentageBJ() >= 50  then
        call YDWESaveRealByString( "realJ", I2S(YDWEGetTimerID(t)), -3 )
    else
        call YDWESaveRealByString( "realJ", I2S(YDWEGetTimerID(t)), 3 )
    endif
    if GetRandomPercentageBJ() >= 50  then
        call TimerStart(t,0.02,TRUE,function arc_Actions3)
    else
        call TimerStart(t,0.02,TRUE,function arc_Actions2)
    endif

    set t = null
    set u = null
    set uc = null
    set ut = null
    set i = i+1
    // 此处为单位个数。现在为60(攻击轨道个数)
    if i>=40 then
        call PauseTimer(tm)
        call DestroyTimer(tm)
    else
         call YDWESaveRealByString( "real", I2S(YDWEGetTimerID(tm)), i )
endif
    set tm = null
endfunction

function Trig_arc_Actions takes nothing returns nothing
	local unit u = GetTriggerUnit()
    local timer t = CreateTimer()
    call WuGongShengChong(u, 'A037', 160)
    call YDWESaveUnitByString( "unit", I2S(YDWEGetTimerID(t)), GetTriggerUnit() )
    call YDWESaveUnitByString( "unit1", I2S(YDWEGetTimerID(t)),GetSpellTargetUnit() )
    call YDWESaveRealByString( "real", I2S(YDWEGetTimerID(t)), 0 )
    call TimerStart(t,0.02,TRUE,function arc_Actions1)
    set t = null
endfunction

//===========================================================================
//function eE takes nothing returns boolean
//	return((GetSpellAbilityId()=='A037'))
//endfunction
//function fE takes nothing returns boolean
//	return((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))))
//endfunction
//function gE takes nothing returns nothing
//	call GroupAddUnit(Fd[(1+GetPlayerId(GetTriggerPlayer()))],GetEnumUnit())
//endfunction
//function hE takes nothing returns boolean
//	return((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))))
//endfunction
//function iE takes nothing returns nothing
//	call GroupAddUnit(Fd[(1+GetPlayerId(GetTriggerPlayer()))],GetEnumUnit())
//endfunction
//function jE takes nothing returns nothing
//	local unit u = GetTriggerUnit()
//	local player p = GetOwningPlayer(u)
//	local integer i = 1 + GetPlayerId(p)
//	local location loc = GetUnitLoc(u)
//	local integer j = 0
//	local string no1 = null
//	local string no2 = null
//	local string no3 = null
//	local string no4 = null
//	local string no5 = null
//	local string no6 = null
//	local string no7 = null
//	local integer num = 0
//	call PauseUnit(u,true)
//	call WuGongShengChong(GetTriggerUnit(),'A037',160.)
//	set cd[i]=true
//	set j =  GetRandomInt(1, 4)
//	if(j==1) then
//		set no1 = "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no1 = "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no1 = "|cff00ff66 ← "
//	else
//		set no1 = "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no2 = no1 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no2 = no1 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no2 = no1 + "|cff00ff66 ← "
//	else
//		set no2 = no1 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no3 = no2 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no3 = no2 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no3 = no2 + "|cff00ff66 ← "
//	else
//		set no3 = no2 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no4 = no3 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no4 = no3 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no4 = no3 + "|cff00ff66 ← "
//	else
//		set no4 = no3 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no5 = no4 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no5 = no4 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no5 = no4 + "|cff00ff66 ← "
//	else
//		set no5 = no4 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no6 = no5 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no6 = no5 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no6 = no5 + "|cff00ff66 ← "
//	else
//		set no6 = no5 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set j =  GetRandomInt(1, 4)
//	if(j==1)then
//		set no7 = no6 + "|cff00ff66 ↑ "
//	elseif(j==2)then
//		set no7 = no6 + "|cff00ff66 ↓ "
//	elseif(j==3)then
//		set no7 = no6 + "|cff00ff66 ← "
//	else
//		set no7 = no6 + "|cff00ff66 → "
//	endif
//	set num = num*10 + j
//	set Dd[i]=num
//	set Ed[i]=$F4240
//	call DisplayTimedTextToPlayer(p,0,0,30,"请按下列顺序输入键盘指令，则可以提高紫霞功的伤害倍数："+no7)
//	if((GetUnitAbilityLevel(u,1093678930)!=0))then
//		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.,loc,Condition(function hE)),function iE)
//	else
//		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,loc,Condition(function fE)),function gE)
//	endif
//	if((GetUnitAbilityLevel(u,'A07P')!=0))then
//		call SetUnitInvulnerable(u,true)
//		call YDWEPolledWaitNull(3.)
//		call SetUnitInvulnerable(u,false)
//	endif
//	call RemoveLocation(loc)
//	set u = null
//	set p = null
//	set loc = null
//endfunction
//function mE takes nothing returns boolean
//	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
//endfunction
//function nE takes nothing returns nothing
//	local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
//	local unit uc=GetEnumUnit()
//	local location loc=GetUnitLoc(uc)
//	local integer i=1+GetPlayerId(GetOwningPlayer(u))
//	local real shxishu=1.
//	local real shanghai=0.
//    if((GetUnitAbilityLevel(u,1093678932)!=0))then
//        set shxishu=shxishu+.6
//    endif
//    if((GetUnitAbilityLevel(u,'A07S')!=0))then
//        set shxishu=shxishu+.8
//    endif
//    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
//    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
//    call WuGongShangHai(u,uc,shanghai)
//    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
//        call WanBuff(u, uc, 12)
//    endif
//    call RemoveLocation(loc)
//    set u=null
//    set uc=null
//    set loc=null
//endfunction
//function oE takes nothing returns nothing
//	local player p = GetTriggerPlayer()
//	local integer i = 1 + GetPlayerId(p)
//	local unit u = udg_hero[i]
//	if((Ed[i]==1))then
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==1)then
//			set Gd[i]=Gd[i]+3
//			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	else
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==1)then
//			set Gd[i]=(Gd[i]+3)
//			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
//			set Ed[i]=(Ed[i]/$A)
//			set u = null
//			set p = null
//			return
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	endif
//	call ForGroupBJ(Fd[i],function nE)
//	set Gd[i]=.0
//	set cd[i]=false
//	set Dd[i]=0
//	set Ed[i]=0
//	call GroupClear(Fd[i])
//	call PauseUnit(u,false)
//	set u = null
//	set p = null
//endfunction
//function qE takes nothing returns boolean
//	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
//endfunction
//function rE takes nothing returns nothing
//    local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
//	local unit uc=GetEnumUnit()
//	local location loc=GetUnitLoc(uc)
//	local integer i=1+GetPlayerId(GetOwningPlayer(u))
//	local real shxishu=1.
//	local real shanghai=0.
//    if((GetUnitAbilityLevel(u,1093678932)!=0))then
//        set shxishu=shxishu+.6
//    endif
//    if((GetUnitAbilityLevel(u,'A07S')!=0))then
//        set shxishu=shxishu+.8
//    endif
//    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
//    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
//    call WuGongShangHai(u,uc,shanghai)
//    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
//        call WanBuff(u, uc, 12)
//    endif
//    call RemoveLocation(loc)
//    set u=null
//    set uc=null
//    set loc=null
//endfunction
//function sE takes nothing returns nothing
//	local player p = GetTriggerPlayer()
//	local integer i = 1 + GetPlayerId(p)
//	local unit u = udg_hero[i]
//	if((Ed[i]==1))then
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==2)then
//			set Gd[i]=Gd[i]+3
//			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	else
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==2)then
//			set Gd[i]=(Gd[i]+3)
//			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
//			set Ed[i]=(Ed[i]/$A)
//			set u = null
//			set p = null
//			return
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	endif
//	call ForGroupBJ(Fd[i],function nE)
//	set Gd[i]=.0
//	set cd[i]=false
//	set Dd[i]=0
//	set Ed[i]=0
//	call GroupClear(Fd[i])
//	call PauseUnit(u,false)
//	set u = null
//	set p = null
//endfunction
//function uE takes nothing returns boolean
//	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
//endfunction
//function vE takes nothing returns nothing
//    local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
//	local unit uc=GetEnumUnit()
//	local location loc=GetUnitLoc(uc)
//	local integer i=1+GetPlayerId(GetOwningPlayer(u))
//	local real shxishu=1.
//	local real shanghai=0.
//    if((GetUnitAbilityLevel(u,1093678932)!=0))then
//        set shxishu=shxishu+.6
//    endif
//    if((GetUnitAbilityLevel(u,'A07S')!=0))then
//        set shxishu=shxishu+.8
//    endif
//    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
//    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
//    call WuGongShangHai(u,uc,shanghai)
//    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
//        call WanBuff(u, uc, 12)
//    endif
//    call RemoveLocation(loc)
//    set u=null
//    set uc=null
//    set loc=null
//endfunction
//function wE takes nothing returns nothing
//	local player p = GetTriggerPlayer()
//	local integer i = 1 + GetPlayerId(p)
//	local unit u = udg_hero[i]
//	if((Ed[i]==1))then
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==3)then
//			set Gd[i]=Gd[i]+3
//			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	else
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==3)then
//			set Gd[i]=(Gd[i]+3)
//			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
//			set Ed[i]=(Ed[i]/$A)
//			set u = null
//			set p = null
//			return
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	endif
//	call ForGroupBJ(Fd[i],function nE)
//	set Gd[i]=.0
//	set cd[i]=false
//	set Dd[i]=0
//	set Ed[i]=0
//	call GroupClear(Fd[i])
//	call PauseUnit(u,false)
//	set u = null
//	set p = null
//endfunction
//function yE takes nothing returns boolean
//	return((cd[(1+GetPlayerId(GetTriggerPlayer()))]))
//endfunction
//function zE takes nothing returns nothing
//	local unit u=udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
//	local unit uc=GetEnumUnit()
//	local location loc=GetUnitLoc(uc)
//	local integer i=1+GetPlayerId(GetOwningPlayer(u))
//	local real shxishu=1.
//	local real shanghai=0.
//    if((GetUnitAbilityLevel(u,1093678932)!=0))then
//        set shxishu=shxishu+.6
//    endif
//    if((GetUnitAbilityLevel(u,'A07S')!=0))then
//        set shxishu=shxishu+.8
//    endif
//    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
//    set shanghai=ShangHaiGongShi(u,uc,250+10*Gd[(1+GetPlayerId(GetTriggerPlayer()))],100.,shxishu,'A091')
//    call WuGongShangHai(u,uc,shanghai)
//    if((Ed[(1+GetPlayerId(GetTriggerPlayer()))]==1))then
//        call WanBuff(u, uc, 12)
//    endif
//    call RemoveLocation(loc)
//    set u=null
//    set uc=null
//    set loc=null
//endfunction
//function AE takes nothing returns nothing
//	local player p = GetTriggerPlayer()
//	local integer i = 1 + GetPlayerId(p)
//	local unit u = udg_hero[i]
//	if((Ed[i]==1))then
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==4)then
//			set Gd[i]=Gd[i]+3
//			call DisplayTextToPlayer(p,0,0,"伤害提高，技能开始释放")
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	else
//		if(ModuloInteger(Dd[i]/Ed[i],$A)==4)then
//			set Gd[i]=(Gd[i]+3)
//			call DisplayTextToPlayer(p,0,0,"伤害提高，请继续操作指令")
//			set Ed[i]=(Ed[i]/$A)
//			set u = null
//			set p = null
//			return
//		else
//			call DisplayTextToPlayer(p,0,0,"错误操作，技能开始释放")
//		endif
//	endif
//	call ForGroupBJ(Fd[i],function nE)
//	set Gd[i]=.0
//	set cd[i]=false
//	set Dd[i]=0
//	set Ed[i]=0
//	call GroupClear(Fd[i])
//	call PauseUnit(u,false)
//	set u = null
//	set p = null
//endfunction
//混元功
function BE takes nothing returns boolean
	return((GetSpellAbilityId()=='A091')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function bE takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitAliveBJ(GetFilterUnit())
endfunction
function CE takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
	if((GetUnitAbilityLevel(u,1093678930)!=0))then
        set shxishu=shxishu+.5
    endif
    if((GetUnitAbilityLevel(u,'A0DN')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.6
    endif
    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl"))
    call RemoveLocation(loc)
    set shanghai=ShangHaiGongShi(u,uc,200.,300.,shxishu,'A091')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
    set loc=null
endfunction
function cE takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	local integer j = jingmai[i]/5
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,loc,Condition(function bE)),function CE)
	call WuGongShengChong(GetTriggerUnit(),'A091',100.)
	call RemoveLocation(loc)
	set juexuelingwu[i]=juexuelingwu[i]+ j
	call DisplayTextToPlayer(p,0,0,"绝学领悟力+"+I2S(j))
	call YDWEPolledWaitNull(10.)
	set juexuelingwu[i]=juexuelingwu[i]- j
	call DisplayTextToPlayer(p,0,0,"绝学领悟力-"+I2S(j))
	set u = null
	set p = null
	set loc = null
endfunction
//--------华山结束--------//
function HuaShan_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function PD))
	call TriggerAddAction(t,function QD)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function SD))
	call TriggerAddAction(t,function TD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function VD))
	call TriggerAddAction(t,function WD)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function YD))
	call TriggerAddAction(t,function ZD)

	set t = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition( t, Condition( function Trig_arc_Conditions ) )
    call TriggerAddAction( t, function Trig_arc_Actions )
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function BE))
	call TriggerAddAction(t,function cE)
endfunction
