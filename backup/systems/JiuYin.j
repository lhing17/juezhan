//==================九阴真经系统开始==================//
library JiuYin initializer JiuYin_Init
	//摧坚神抓和摧心掌
    function JiuYin_Condition takes nothing returns nothing
    	return(GetUnitAbilityLevel(GetAttacker(),'A0D1')>=1 or GetUnitAbilityLevel(GetAttacker(),'A0D3')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
    endfunction
    function CuiJian_Condition takes nothing returns boolean
        return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and IsUnitAliveBJ(GetFilterUnit())
    endfunction
    function CuiJian_Action takes nothing returns nothing
	    local unit u=GetAttacker()
	    local unit uc=GetEnumUnit()
	    local location loc=GetUnitLoc(loc)
	    local real shxishu=1.
	    local real shanghai=0.
        call DestroyEffect(AddSpecialEffectLocBJ(loc,"war3mapImported\\PhoenixAttack.mdx"))
        if GetUnitAbilityLevel(GetAttacker(),'A07S')>=1 then
	        set shxishu=shxishu+1.
        endif
        if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	        set shxishu=shxishu*20
        endif
        set shanghai=ShangHaiGongShi(u,uc,3.,3.,shxishu,'A0D1')
        call WuGongShangHai(u,uc,shanghai)
        if((GetUnitAbilityLevel(u,'A07N')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,'B008')==false))then
            call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc,bj_UNIT_FACING)
            call UnitAddAbility(bj_lastCreatedUnit,1093678412)
            call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call ShowUnitHide(bj_lastCreatedUnit)
            call CreateTextTagLocBJ("封穴",loc,0,12.,65.,55.,42.,0)
            call Nw(3.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
        endif
        call RemoveLocation(loc)
        set loc=null
        set u=null
        set uc=null
    endfunction
    function JiuYin_Action takes nothing returns nothing
	    local unit u=GetAttacker()
	    local unit uc=GetTriggerUnit()
	    local location loc=GetUnitLoc(u)
	    local player p=GetOwningPlayer(u)
	    local integer i=1+GetPlayerId(p)
        local real shanghai=0.
        local real shxishu=1.

	    //摧坚神抓
        if GetUnitAbilityLevel(GetAttacker(),'A0D1')>=1 then
            if GetRandomReal(.0,100.)<=15.+I2R(fuyuan[i])/5. then
                call ForGroupBJ(XuanGroupByLoc(500.,loc,Condition(function CuiJian_Condition)),function CuiJian_Action)
                call WuGongShengChong(GetAttacker(),'A0D1',2000.)
            endif
            call RemoveLocation(loc)
        //摧心掌
	    else
	        if GetRandomReal(.0,100.)<=15.+I2R(fuyuan[i])/5. then
		        if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	                set shxishu=shxishu*20
                endif
		        set shanghai=ShangHaiGongShi(u,ut,20,16,shxishu,'A0D3')
                call AddSpecialEffectTargetUnitBJ( "overhead", GetTriggerUnit(), "Abilities\\Spells\\Other\\Transmute\\GoldBottleMissile.mdl" )
                call DestroyEffect( GetLastCreatedEffectBJ() )
                call WuGongShangHai(u,ut,shanghai)
                call WuGongShengChong(u,'A0D3',1500.)
            endif
        endif
        set u=null
        set uc=null
        set loc=null
        set p=null
    endfunction
    function func_name takes nothing returns nothing

    endfunction


    function JiuYin_Init takes nothing returns nothing
        local trigger t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddCondition(t,Condition(function YiLiao_Condition))
        call TriggerAddAction(t,function YiLiao)
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(t,Condition(function JiuYin_Condition))
        call TriggerAddAction(t,function JiuYin_Action)
    endfunction
endlibrary
//==================九阴真经系统结束==================//
