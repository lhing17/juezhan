

//-----------江湖内功和九阴武功开始-----------
//使用罗汉伏魔功
function uI takes nothing returns boolean
return GetKillingUnit()!=null and((GetUnitAbilityLevel(GetKillingUnit(),'A07O')>0))
endfunction
function vI takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set G9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(G9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((G9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=100))then
set G9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call YDWEGeneralBounsSystemUnitSetBonus(GetKillingUnit(),2,0,$A)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"防御+10")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//使用化功大法
function xI takes nothing returns boolean
	return((GetSpellAbilityId()=='A07P')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function yI takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function zI takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$3348E012,GetUnitLoc(GetEnumUnit()))
	call AddLightningLoc("DRAM",LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$3348E012))
	call Lw(2,bj_lastCreatedLightning)
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$45541105,(LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$45541105)+1))
endfunction
function AI takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i = GetUnitAbilityLevel(GetTriggerUnit(), 'A07P')
	if GetUnitAbilityLevel(GetTriggerUnit(), 'A0BQ') >= 1 then
		if UnitHaveItem(GetTriggerUnit(), 'I0AM') then
			call WuGongShengChong(GetTriggerUnit(), 'A07P', 150)
		else
			call WuGongShengChong(GetTriggerUnit(), 'A07P', 300)
		endif
	endif
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
	call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
	call SaveInteger(YDHT,id*cx,$45541105,0)
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(1000.,LoadLocationHandle(YDHT,id*cx,-$72C3E060),Condition(function yI)),function zI)
	call ModifyHeroStat(1,LoadUnitHandle(YDHT,id*cx,$59BEA0CB),0,(i*50*LoadInteger(YDHT,id*cx,$45541105)))
	call DisplayTimedTextToPlayer(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),0,0,5.,("内力提升 ： "+I2S((i*50*LoadInteger(YDHT,id*cx,$45541105)))))
	call YDWEWaitForLocalVariable(20.)
	call ModifyHeroStat(1,LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1,(i*50*LoadInteger(YDHT,id*cx,$45541105)))
	call YDWELocalVariableEnd()
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//使用吸星大法
function BI takes nothing returns boolean
return GetKillingUnit()!=null and((GetUnitAbilityLevel(GetKillingUnit(),1093678930)>0))
endfunction
function bI takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set H9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(H9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((H9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=$C8))then
set H9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call ModifyHeroStat(1,GetKillingUnit(),0,$A)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"内力+10")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//==================九阴真经系统开始==================//
	//摧坚神抓和摧心掌
    function JiuYin_Condition takes nothing returns boolean
    	return(GetUnitAbilityLevel(GetAttacker(),'A0D1')>=1 or GetUnitAbilityLevel(GetAttacker(),'A0D3')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
    endfunction
    function CuiJian_Condition takes nothing returns boolean
        return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and IsUnitAliveBJ(GetFilterUnit())
    endfunction
    function CuiJian_Action takes nothing returns nothing
	    local unit u=GetAttacker()
	    local unit uc=GetEnumUnit()
	    local location loc=GetUnitLoc(uc)
	    local real shxishu=1.
	    local real shanghai=0.
        call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
        if GetUnitAbilityLevel(GetAttacker(),'A07S')>=1 then
	        set shxishu=shxishu+1.
        endif
        if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	        set shxishu=shxishu*20
        endif
        set shanghai=ShangHaiGongShi(u,uc,30.,30.,shxishu,'A0D1')
        call WuGongShangHai(u,uc,shanghai)
        if((GetUnitAbilityLevel(u,'A07N')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,'B008')==false))then
            call WanBuff(u, uc, 11)
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
                call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.,loc,Condition(function CuiJian_Condition)),function CuiJian_Action)
                call WuGongShengChong(GetAttacker(),'A0D1',700.)
            endif
        endif
        //摧心掌
        if GetUnitAbilityLevel(GetAttacker(),'A0D3')>=1 then
	        if GetRandomReal(.0,100.)<=15.+I2R(fuyuan[i])/5. then
		        if GetUnitAbilityLevel(u,'A07S')>=1 then
	                set shxishu=shxishu+1.
                endif
		        if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	                set shxishu=shxishu*20
                endif
                if((GetUnitAbilityLevel(u,'A0D2')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,'Bcri')==false))then
                    call WanBuff(u, uc, 4)
                endif
                if((GetUnitAbilityLevel(u,'A0D6')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,1110454324)==false))then
                    call WanBuff(u, uc, 7)
                endif
		        set shanghai=ShangHaiGongShi(u,uc,80,64,shxishu,'A0D3')
                call AddSpecialEffectTargetUnitBJ( "overhead", GetTriggerUnit(),"Abilities\\Spells\\Items\\OrbDarkness\\OrbDarkness.mdl")
                call DestroyEffect( GetLastCreatedEffectBJ() )
                call WuGongShangHai(u,uc,shanghai)
                call WuGongShengChong(u,'A0D3',1050.)
            endif
        endif
        call RemoveLocation(loc)
        set u=null
        set uc=null
        set loc=null
        set p=null
    endfunction


function cI takes nothing returns boolean
return(GetUnitAbilityLevel(GetKillingUnit(),'A07S')>0 or GetUnitAbilityLevel(GetKillingUnit(),'A0D2')>0 or GetUnitAbilityLevel(GetKillingUnit(),'A0D6')>0)
endfunction
//九阴真经杀100怪
function DI takes nothing returns nothing
    local integer id=GetHandleId(GetTriggeringTrigger())
    local integer cx=LoadInteger(YDHT,id,-$3021938A)
    local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
    set cx=cx+3
    call SaveInteger(YDHT,id,-$3021938A,cx)
    call SaveInteger(YDHT,id,-$1317DA19,cx)
    call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
    set I9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(I9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
    if((I9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=100))then
        set I9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
        if GetUnitAbilityLevel(GetKillingUnit(),'A07S')>0 then
            call ModifyHeroStat(0,GetKillingUnit(),0,$A)
            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"招式伤害+10")
        endif
        if GetUnitAbilityLevel(GetKillingUnit(),'A0D2')>0 then
	        if GetRandomInt(1,2)==1 then
            	call ModifyHeroStat(0,GetKillingUnit(),1,$A)
            	call ModifyHeroStat(1,GetKillingUnit(),0,30)
            	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"招式伤害-10")
            	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"内力+30")
            else
            	call ModifyHeroStat(2,GetKillingUnit(),0,$A)
            	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"真实伤害+10")
        	endif
        endif
        if GetUnitAbilityLevel(GetKillingUnit(),'A0D6')>0 then
            if GetRandomInt(1,6)==1 then
	            set wuxing[i]=wuxing[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"悟性+1")
	        elseif GetRandomInt(1,5)==1 then
	            set gengu[i]=gengu[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"根骨+1")
	        elseif GetRandomInt(1,4)==1 then
	            set danpo[i]=danpo[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"胆魄+1")
	        elseif GetRandomInt(1,3)==1 then
	            set yishu[i]=yishu[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"医术+1")
	        elseif GetRandomInt(1,2)==1 then
	            set jingmai[i]=jingmai[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"经脉+1")
	        else
	            set fuyuan[i]=fuyuan[i]+1
	            call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"福缘+1")
            endif
            if GetRandomInt(1,5)<=3 then
                if GetRandomInt(1,6)==1 then
	                set wuxing[i]=wuxing[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"悟性-1")
	            elseif GetRandomInt(1,5)==1 then
	                set gengu[i]=gengu[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"根骨-1")
	            elseif GetRandomInt(1,4)==1 then
	                set danpo[i]=danpo[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"胆魄-1")
	            elseif GetRandomInt(1,3)==1 then
	                set yishu[i]=yishu[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"医术-1")
	            elseif GetRandomInt(1,2)==1 then
	                set jingmai[i]=jingmai[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"经脉-1")
	            else
	                set fuyuan[i]=fuyuan[i]-1
	                call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"福缘-1")
                endif
            endif


        endif
    endif
    call FlushChildHashtable(YDHT,id*cx)
endfunction
//==================九阴真经系统结束==================//
//双手互搏
function FI takes nothing returns boolean
return((GetSpellAbilityId()=='A07U')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function GI takes nothing returns nothing
call UnitResetCooldown(GetTriggerUnit())
endfunction
//使用九阳神功
function II takes nothing returns boolean
return GetKillingUnit()!=null and ((GetUnitAbilityLevel(GetKillingUnit(),'A0DN')>0))
endfunction
function lI takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set l9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(l9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((l9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=100))then
set l9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"生命值提高2000")
call unitadditembyidswapped('I04T',GetKillingUnit())
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//-----------江湖内功和九阴武功结束-----------
