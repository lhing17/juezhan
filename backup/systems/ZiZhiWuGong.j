struct DaPei
	integer wugongid
	integer dapeixiaoguo
	real shxishu = 0.
	real r
	static method create takes integer wugongid, integer dapeixiaoguo returns DaPei
		local DaPei dpi
		set dpi = DaPei.allocate()
		set dpi.wugongid = wugongid
		set dpi.dapeixiaoguo = dapeixiaoguo
		if dapeixiaoguo == 1 then
			set dpi.r = GetRandomReal(0.7, 1.1)
		elseif dapeixiaoguo == 2 then
			set dpi.r = I2R(GetRandomInt(1, 13))
		elseif dapeixiaoguo == 3 then
			set dpi.r = GetRandomReal(0.9, 1.3)
		elseif dapeixiaoguo == 4 then
			set dpi.r = GetRandomReal(1.3, 2.0)
		endif
		return dpi
	endmethod
	method onDestroy takes nothing returns nothing
		set wugongid = 0
		set dapeixiaoguo = 0
		set shxishu = 0
	endmethod
	method XiaoGuo takes unit u, unit uc returns nothing
		if this.dapeixiaoguo != 2 then
			set this.shxishu = this.r
		else
			if GetRandomReal(1, 100)<=13 then
				call WanBuff(u, uc, R2I(this.r))
			endif
		endif
	endmethod
	method XiaoGuoShuoMing takes nothing returns string
		local string s = ""
		set s = s + "+" + GetAbilityName(wugongid) + "："
		if this.dapeixiaoguo != 2 then
			set s = s + "伤害+" + I2S(R2I(this.r * 100)) + "%"
		else
			if R2I(this.r) == 1 then
				set s = s + "几率造成内伤"
			elseif R2I(this.r) == 2 then
				set s = s + "几率造成走火入魔"
			elseif R2I(this.r) == 3 then
				set s = s + "几率造成流血"
			elseif R2I(this.r) == 4 then
				set s = s + "几率造成混乱"
			elseif R2I(this.r) == 5 then
				set s = s + "几率造成昏迷"
			elseif R2I(this.r) == 6 then
				set s = s + "几率造成重伤"
			elseif R2I(this.r) == 7 then
				set s = s + "几率造成血流不止"
			elseif R2I(this.r) == 8 then
				set s = s + "几率造成麻痹"
			elseif R2I(this.r) == 9 then
				set s = s + "几率造成破防"
			elseif R2I(this.r) == 10 then
				set s = s + "几率造成神经错乱"
			elseif R2I(this.r) == 11 then
				set s = s + "几率造成封穴"
			elseif R2I(this.r) == 12 then
				set s = s + "几率造成穴位全封"
			elseif R2I(this.r) == 13 then
				set s = s + "几率造成中毒"
			endif
		endif
		return s
	endmethod
endstruct
struct ZiZhiWuGong
	integer xishu
	integer range
	integer texiao
	integer dapeishu
	integer scrate //升重速率
	string name = "自创武功"
	static method create takes integer xishu, integer range, integer texiao, integer dapeishu, integer scrate returns ZiZhiWuGong
		local ZiZhiWuGong zz
		set zz = ZiZhiWuGong.allocate()
		set zz.xishu = xishu
		set zz.range = range
		set zz.texiao = texiao
		set zz.dapeishu = dapeishu
		set zz.scrate = scrate
		return zz
	endmethod
	method onDestroy takes nothing returns nothing
		set xishu = 0
		set range = 0
		set texiao = 0
		set dapeishu = 0
		set scrate = 0
	endmethod
endstruct

globals
	ZiZhiWuGong array zizhiwugong
	string array lh_texiao
	integer array wuxuedian
	DaPei array dapei
	boolean array zizhibool
	boolean array jiawuxue
endglobals
function IsZiZhi takes nothing returns boolean
	return (GetRandomReal(0.,100)<15+fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]/5) and (GetUnitAbilityLevel(GetAttacker(),'A036')>=1) and (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
endfunction

function ZiZhiShangHai_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function ZiZhiShangHai_Action takes nothing returns nothing
	local unit u = GetAttacker()
	local unit uc=GetEnumUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	local location loc = GetUnitLoc(u)
	local real shxishu = (1. + I2R(juexuelingwu[i])/3)
	local real shanghai=0.
	loop
		exitwhen j > zizhiwugong[i].dapeishu
		if GetUnitAbilityLevel(u, dapei[i*20+j].wugongid) >= 1 then
			call dapei[i*20+j].XiaoGuo(u, uc)
			//call BJDebugMsg(R2S(dapei[i*10+j].shxishu))
			set shxishu = shxishu + dapei[i*20+j].shxishu
		endif
		set j = j + 1
	endloop
	set shxishu = shxishu*(1. + 0.5 * I2R(zizhiwugong[i].xishu))
	set shanghai=ShangHaiGongShi(u,uc,25., 25.,shxishu,'A036')
	call CreateTextTagLocBJ(zizhiwugong[i].name,loc,0,14.,GetRandomReal(0., 100),GetRandomReal(0., 100),GetRandomReal(0., 100),.0)
	call Nw(3,bj_lastCreatedTextTag)
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag,50.,90)
	call AddSpecialEffectTargetUnitBJ( "overhead",uc, lh_texiao[zizhiwugong[i].texiao] )
	call DestroyEffect( GetLastCreatedEffectBJ() )
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set loc = null
	set uc=null
	set u = null
	set p =null
endfunction
function ZiZhi takes nothing returns nothing
	local group g=CreateGroup()
	local unit u = GetAttacker()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local ZiZhiWuGong zz = zizhiwugong[i]
	call WuGongShengChong(u,'A036',1000.-I2R(zz.scrate)*100.)
	call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),400.+100.*I2R(zz.range),Condition(function ZiZhiShangHai_Condition))
    call ForGroupBJ(g,function ZiZhiShangHai_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    set g=null
endfunction
function IsAllocateWuXueDian takes nothing returns boolean
	return (UnitTypeNotNull(GetTriggerUnit(), UNIT_TYPE_HERO) and (GetItemTypeId(GetManipulatedItem())=='I0BN' or GetItemTypeId(GetManipulatedItem())=='I0BI' or GetItemTypeId(GetManipulatedItem())=='I0BJ' or GetItemTypeId(GetManipulatedItem())=='I0BK' or GetItemTypeId(GetManipulatedItem())=='I0BL'))
endfunction
function AllocateWuXueDian takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem())=='I0BN' then
		if zizhibool[i] then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC少侠已有自创武功|r\n")
		else
			if xiuxing[i]<6 then
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC少侠等级到历练6之后再来吧|r\n")
			else
				set L7[i] = 1
				loop
					exitwhen L7[i] >= wugongshu[i]+1
					if (I7[(i-1)*20+L7[i]]!='AEfk')then
						if L7[i]==wugongshu[i] then
							call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC少侠，你学的武功太多了，遗忘一些再来自创吧|r\n")
							exitwhen true
						endif
					else
						call UnitAddAbility(u,'A036')
						set I7[(((i-1)*20)+L7[i])]='A036'
						call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"自创武功成功")
						set zizhibool[i] = true
						exitwhen true
					endif
					set L7[i] = L7[i] + 1
				endloop
			endif
		endif
	else
		if wuxuedian[i] >=1 then
			set wuxuedian[i] = wuxuedian[i] - 1
			if GetItemTypeId(GetManipulatedItem())=='I0BI' then
				set zizhiwugong[i].xishu = zizhiwugong[i].xishu +1
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至伤害系数|r\n")
			endif
			if GetItemTypeId(GetManipulatedItem())=='I0BJ' then
				set zizhiwugong[i].range = zizhiwugong[i].range +1
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至伤害范围|r\n")
			endif
			if GetItemTypeId(GetManipulatedItem())=='I0BK' then
				set zizhiwugong[i].dapeishu = zizhiwugong[i].dapeishu +1
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至武学搭配|r\n")
				if GetRandomInt(1, 10)<=7 then
					set dapei[i*20+zizhiwugong[i].dapeishu] = DaPei.create(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1, 18), 2), GetRandomInt(1, 2))
				else
					if GetRandomInt(1, 3)<=2 then
						set dapei[i*20+zizhiwugong[i].dapeishu] = DaPei.create(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19, 28), 2), 3)
					else
						set dapei[i*20+zizhiwugong[i].dapeishu] = DaPei.create(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(29, 41), 2), 4)
					endif
				endif
			endif
			if GetItemTypeId(GetManipulatedItem())=='I0BL' then
				set zizhiwugong[i].scrate = zizhiwugong[i].scrate +1
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至升重速率|r\n")
			endif
		else
			call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00自创武学点不足")
		endif
	endif
	set u = null
	set p = null
endfunction
function  ZiZhi_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	set lh_texiao[1] = "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl"
	set lh_texiao[2] = "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
	set lh_texiao[3] = "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"
	set lh_texiao[4] = "Abilities\\Spells\\Items\\OrbDarkness\\OrbDarkness.mdl"
	set lh_texiao[5] = "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"
	set lh_texiao[6] = "Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"
	set lh_texiao[7] = "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl"
	set lh_texiao[8] = "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"
	set lh_texiao[9] = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
	set lh_texiao[10] = "Abilities\\Spells\\Other\\Transmute\\GoldBottleMissile.mdl"
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsZiZhi))
	call TriggerAddAction(t,function ZiZhi)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsAllocateWuXueDian))
	call TriggerAddAction(t,function AllocateWuXueDian)
	set t = null
endfunction
