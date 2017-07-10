
//万花剑法 3级技
function IsWanHua takes nothing returns boolean
	return GetSpellAbilityId()=='A021'
endfunction
function WanHuaJian takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local location loc=GetUnitLoc(u)
	local location array loc2
	local integer i=0
	call WuGongShengChong(GetTriggerUnit(),'A021',350)
	set i = 1
	loop
		exitwhen i > 6
		set loc2[i]=pu(loc,200,60*i)
		call CreateNUnitsAtLoc(1,'h00G',GetOwningPlayer(GetTriggerUnit()),loc2[i],bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A022')
		if GetUnitAbilityLevel(u,'A023')>=1 then
			call IncUnitAbilityLevel(bj_lastCreatedUnit,'A022')
		endif
		call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0208,loc2[i])
		call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,10.)
		call RemoveLocation(loc2[i])
		set loc2[i]=null
		set i = i + 1
	endloop
	call RemoveLocation(loc)
	set u=null
	set loc=null
endfunction
function IsWanHuaMaJia takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='h00G' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))
endfunction
function WanHuaMaJia takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local unit uc=GetTriggerUnit()
	local real shxishu=1
    local real shanghai=0.
    local location loc2=GetUnitLoc(uc)
    if GetUnitAbilityLevel(u,'A024')>=1 then
		set shxishu=shxishu+0.8
	endif
	if GetUnitAbilityLevel(u,'A07J')>=1 then
		set shxishu=shxishu+1.2
	endif
	if GetUnitAbilityLevel(u,'A09D')>=1 then
		set shxishu=shxishu+2
	endif
	if GetUnitAbilityLevel(u,'A07T')>=1 and UnitHasBuffBJ(uc,'BHbn')==false and GetRandomInt(1,100)<=30 then
		call CreateNUnitsAtLoc(1,'e00X',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,'A025')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D0206,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call ShowUnitHide(bj_lastCreatedUnit)
        call CreateTextTagLocBJ("放逐",loc2,0,12.,65.,55.,42.,0)
        call Nw(1.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    set shanghai=ShangHaiGongShi(u,uc,2.,2.,shxishu,'A021')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//拂尘功 8级技
function IsFuChen takes nothing returns boolean
	return GetSpellAbilityId()=='A01Z'
endfunction
function FuChenGong takes nothing returns nothing
	local location loc=GetSpellTargetLoc()
	local unit u=null
	call WuGongShengChong(GetTriggerUnit(),'A01Z',250)
	call CreateNUnitsAtLoc(1,'h00F',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
	set u=bj_lastCreatedUnit
	call ShowUnitHide(u)
	call UnitAddAbility(u,'A020')
	if GetUnitAbilityLevel(GetTriggerUnit(),'A07T')>=1 then
		call IncUnitAbilityLevel(u,'A020')
	endif
	if GetUnitAbilityLevel(GetTriggerUnit(),'A024')>=1 then
		call IncUnitAbilityLevel(u,'A020')
	endif
	call IssuePointOrderByIdLoc(u,$D0079,loc)
	call UnitApplyTimedLife(u,1112045413,10.)
	call RemoveLocation(loc)
	set u=null
	set loc=null
endfunction
function IsFuChenMaJia takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='h00F' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))
endfunction
function FuChenMaJia takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local unit uc=GetTriggerUnit()
	local real shxishu=1
    local real shanghai=0.
    local real r1=GetRandomReal(1.,12.)*6.
    if GetUnitAbilityLevel(u,'A07J')>=1 then
		set shxishu=shxishu+1
	endif
	if GetUnitAbilityLevel(u,'A023')>=1 then
		set shxishu=shxishu+0.8
	endif
	if GetUnitAbilityLevel(u,'A07F')>=1 then
		set shxishu=shxishu+1.1
	endif
    set shanghai=ShangHaiGongShi(u,uc,r1,r1,shxishu,'A01Z')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//北岳剑诀 15级技
function IsTianShan takes nothing returns boolean
	return(GetUnitAbilityLevel(GetTriggerUnit(),'A0CD')>=1) and GetSpellAbilityId()!='A05R' and GetSpellAbilityId()!='AIha'
endfunction
function TianShan_Condition takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function TianShanZhang takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=null
	local location loc=GetUnitLoc(u)
	local location loc2=null
	local group g=CreateGroup()
	local real r=1.0
	if GetUnitAbilityLevel(u,'A07F')>=1 then
		set r=2.0
	endif
	call WuGongShengChong(u,'A0CD',500)
	call GroupEnumUnitsInRangeOfLoc(g,loc,700,function TianShan_Condition)
	set uc=GroupPickRandomUnit(g)
	if uc!=null then
		call SetWidgetLife(uc,GetWidgetLife(uc)*(0.94-0.015*GetUnitAbilityLevel(u,'A0CD')*r))
		call DestroyEffect(AddSpecialEffectTargetUnitBJ( "overhead", uc,"Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
		set loc2=GetUnitLoc(uc)
		if GetUnitAbilityLevel(u,'A07T')>=1 then
			call CreateNUnitsAtLoc(1,'e00X',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
            call UnitAddAbility(bj_lastCreatedUnit,'A0D5')
            call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call ShowUnitHide(bj_lastCreatedUnit)
            call CreateTextTagLocBJ("封穴",loc2,0,12.,65.,55.,42.,0)
            call Nw(1.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
        endif
        if(GetUnitAbilityLevel(u,'A024')!=0) then
        	call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,1093678901)
        	call IssueTargetOrderById(bj_lastCreatedUnit,$D022F,uc)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        	call CreateTextTagLocBJ("流血",loc2,60.,12.,65.,55.,42.,0)
        	call Nw(3.,bj_lastCreatedTextTag)
        	call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    	endif
    	if (GetUnitAbilityLevel(u,'A023')!=0) then
	    	call WanBuff(u, uc, 9)
    	endif
    	call RemoveLocation(loc2)
	endif
	if GetUnitAbilityLevel(u,'A09D')>=1 then
		set uc=GroupPickRandomUnit(g)
		if uc!=null then
			call SetWidgetLife(uc,GetWidgetLife(uc)*(0.94-0.015*GetUnitAbilityLevel(u,'A0CD')*r))
			call DestroyEffect(AddSpecialEffectTargetUnitBJ( "overhead", uc,"Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
		endif
	endif
	call RemoveLocation(loc)
	call DestroyGroup(g)
	set u=null
	set uc=null
	set loc=null
	set loc2=null
	set g=null
endfunction
//慈悲心法 25级技
function IsCiBei takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='ohwd'
endfunction
function CiBei_Condition takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function CiBei_Action takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	local unit uc=GetEnumUnit()
	local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(u)
    local location loc2=GetUnitLoc(uc)
    if GetUnitAbilityLevel(u,'A080')>=1 then
		set shxishu=shxishu+2
	endif
	if GetUnitAbilityLevel(u,'A09D')>=1 then
		set shxishu=shxishu+2
	endif
    set shanghai=ShangHaiGongShi(u,uc,100.,50.,shxishu,'A023')
    call WuGongShangHai(u,uc,shanghai)
    call DestroyEffect(AddSpecialEffectTargetUnitBJ( "overhead", uc,"Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
    if GetUnitAbilityLevel(u,'A07T')>=1 and GetRandomInt(1,100)<=30 then
		call CreateNUnitsAtLoc(1,'e00X',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,'A0D5')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call ShowUnitHide(bj_lastCreatedUnit)
        call CreateTextTagLocBJ("封穴",loc2,0,12.,65.,55.,42.,0)
        call Nw(1.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    if GetUnitAbilityLevel(u,'A07S')>=1 then
        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,'A0DF')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,u)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,3.)
    endif
    if GetUnitAbilityLevel(u,'A07F')>=1 and GetRandomInt(1,100)<=30 then
   		call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,'A019')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D00B5,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call CreateTextTagLocBJ("破防",loc,60.,12.,65.,55.,42.,0)
        call Nw(3.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    call RemoveLocation(loc2)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc2=null
    set loc=null
endfunction
function CiBeiXinFa takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	local location loc=GetUnitLoc(GetTriggerUnit())
	local group g=CreateGroup()
	call WuGongShengChong(u,'A023',100)
	call GroupEnumUnitsInRangeOfLoc(g,loc,600,function CiBei_Condition)
	call ForGroupBJ(g,function CiBei_Action)
	call DestroyGroup(g)
	call RemoveLocation(loc)
	set u=null
	set g=null
	set loc=null
endfunction
//菩萨印 25级技
function IsPuSa takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A024')>=1
endfunction
function PuSaYin takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local real shxishu=1.
    local real shanghai=0.
    local integer level=0
    if GetUnitAbilityLevel(u,'A07T')>=1 then
		set shxishu=shxishu+0.8
	endif
	if GetUnitAbilityLevel(u,'A07P')>=1 then
		set shxishu=shxishu+0.7
	endif
	if GetRandomInt(1,100)<15+fuyuan[i]/5 then
		set shanghai=ShangHaiGongShi(u,uc,80.,40.,shxishu,'A024')
   		call WuGongShangHai(u,uc,shanghai)
   		call WuGongShengChong(u,'A024',700)
   		if GetUnitAbilityLevel(u,'A09D')>=1 and GetRandomInt(1,100)<=20 then
   			set level=GetUnitAbilityLevel(u,'A024')
	    	call UnitRemoveAbility(u,'A024')
	    	call UnitAddAbility(u,'A024')
	    	call SetUnitAbilityLevel(u,'A024',level)
    	endif
	endif
	set u=null
	set uc=null
	set p=null
endfunction
function HengShan_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsFuChen))
    call TriggerAddAction(t,function FuChenGong)
	set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsFuChenMaJia))
    call TriggerAddAction(t, function FuChenMaJia)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsWanHua))
    call TriggerAddAction(t,function WanHuaJian)
    set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsWanHuaMaJia))
    call TriggerAddAction(t, function WanHuaMaJia)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsTianShan))
    call TriggerAddAction(t,function TianShanZhang)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function IsCiBei))
    call TriggerAddAction(t,function CiBeiXinFa)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsPuSa))
    call TriggerAddAction(t,function PuSaYin)
	set t =null
endfunction
