//--------丐帮开始--------//
//太祖拳法
function IsTaiZu takes nothing returns boolean
	return IsCertainWuGong(GetAttacker(),GetTriggerUnit(),'A0C9')
endfunction
function TaiZu_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function TaiZu_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=GetAttacker()
	local real shxishu=1.
	local real shanghai=0.
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(u,'A07S')>=1 then
		set shxishu=shxishu+.8
	endif
	if UnitHaveItem(u,'I097') then
	    set shxishu=shxishu*4
    endif
	set shanghai=ShangHaiGongShi(u,uc,10., 14.,shxishu,'A0C9')
    call AddSpecialEffectTargetUnitBJ( "overhead",uc, "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl" )
    call DestroyEffect( GetLastCreatedEffectBJ() )
    //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(shanghai)+", "+I2S(1+GetPlayerId(GetOwningPlayer(u))))
	call WuGongShangHai(u,uc,shanghai)
	if GetUnitAbilityLevel(u,'A07U')>=1 then
		call YDWEPolledWaitNull(0.50)
		call AddSpecialEffectTargetUnitBJ( "overhead",uc, "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl" )
    	call DestroyEffect( GetLastCreatedEffectBJ() )
		call WuGongShangHai(u,uc,shanghai)
    endif
	set u=null
    set uc=null
endfunction
function TaiZuQuan takes nothing returns nothing
    //local real angle=GetUnitFacing(GetAttacker())
    local group g=CreateGroup()
    local real r=300.
    set r=500.+40.*GetUnitAbilityLevel(GetAttacker(),'A0C9')
    if GetUnitAbilityLevel(GetAttacker(),'A0CA')>=1 then
	    set r=r*1.6
    endif
    //call knock_back(GetAttacker() , angle, 50.0 , .3 , 0.03 , path,shanghai)
    call WuGongShengChong(GetAttacker(),'A0C9',900.)
    call GroupEnumUnitsInRange(g,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),r,Condition(function TaiZu_Condition))
    call ForGroupBJ(g,function TaiZu_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    set g=null
endfunction
//丐帮心法
function IsGaiBang takes nothing returns boolean
	return (GetSpellAbilityId()=='A0DI')
endfunction
function FanWei_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_fanweidanwei))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function FanWei_Action takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(udg_fanweidanwei))]
	local real shanghai=LoadReal(YDHT,StringHash("范围"),StringHash("伤害"))
	call WuGongShangHai(u,GetEnumUnit(),shanghai)
	set u=null
endfunction
function FanWeiShangHai takes unit u,real range, real shanghai returns nothing
    local group g=CreateGroup()
    call SaveReal(YDHT,StringHash("范围"),StringHash("伤害"),shanghai)
    set udg_fanweidanwei=u
    call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),range,Condition(function FanWei_Condition))
    call ForGroupBJ(g,function FanWei_Action)
    call DestroyGroup(g)
    set g=null
endfunction
function QuWuGongJi_Action takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer w=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,w,0)
	local real angle=LoadReal(YDHT,w,1)
    local unit ut=LoadUnitHandle(YDHT,w,3)
    local integer j=LoadInteger(YDHT,w,4)
    local integer id=LoadInteger(YDHT,w,5)
    local integer jmax=30
    local real shxishu=RMinBJ(I2R(GetUnitLevel(u)),10.)
    local real shanghai=0.
    if UnitHaveItem(u,'I097') then
	    set shxishu=shxishu*4
    endif
    if id=='ndog' then
        set shanghai=ShangHaiGongShi(u,u,4,1.3,shxishu,'A0DI')
    elseif id=='uloc' then
        set shanghai=ShangHaiGongShi(u,u,1.6,6.7,shxishu,'A0DI')
    else
        set shanghai=ShangHaiGongShi(u,u,3.3,1.6,shxishu,'A0DI')
    endif
    if j<jmax then
        call SetUnitX(ut,CheckX(GetLocationX(LoadLocationHandle(YDHT,w,2))+Cos(angle)*32*j))
        call SetUnitY(ut,CheckY(GetLocationY(LoadLocationHandle(YDHT,w,2))+Sin(angle)*32*j))
        //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(CheckX(GetLocationX(loc)+Cos(angle)*10*j))+","+R2S(CheckY(GetLocationY(loc)+Sin(angle)*10*j)))
        call FanWeiShangHai(ut,300,shanghai)
        call SaveInteger(YDHT,w,4,j+1)
    else
        call KillUnit(ut)
        call RemoveUnit(ut)
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT,w)
    endif
    set t=null
    set u=null
    set ut=null
endfunction
function QuWuGongJi takes unit u,integer id returns nothing
    local real facing = GetUnitFacing(u)
    local real angle = facing*bj_DEGTORAD
    local location loc=GetUnitLoc(u)
    local timer t=CreateTimer()
    local integer w=GetHandleId(t)
    local unit ut=null
    call CreateNUnitsAtLoc(1,id,GetOwningPlayer(u),loc,facing)
    set ut=bj_lastCreatedUnit
    call SaveUnitHandle(YDHT,w,0,u)
    call SaveReal(YDHT,w,1,angle)
    call SaveLocationHandle(YDHT,w,2,loc)
    call SaveUnitHandle(YDHT,w,3,ut)
    call SaveInteger(YDHT,w,4,0)
    call SaveInteger(YDHT,w,5,id)
    call TimerStart(t,0.03,true,function QuWuGongJi_Action)
    set t=null
    set ut=null
    set loc=null
endfunction
function GaiBang_Action takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer w=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,w,0)
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer j=LoadInteger(YDHT,w,1)
	local integer jmax=100
	if j<jmax then
	    if UnitTypeNotNull(u,UNIT_TYPE_HERO)==true then
            call ModifyHeroStat(1,u,0,GetUnitAbilityLevel(u,'A0DI'))
        endif
        call SaveInteger(YDHT,w,1,j+1)
    else
        call ModifyHeroStat(1,u,1,100*GetUnitAbilityLevel(u,'A0DI'))
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT,w)
    endif
    set t=null
    set u=null
    set p=null
endfunction
function GaiBangXinFa takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local timer t=CreateTimer()
	local location loc= GetUnitLoc(u)
	call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
	call SaveInteger(YDHT,GetHandleId(t),1,0)
	call CreateNUnitsAtLoc(1,'e00X',GetOwningPlayer(u),loc,bj_UNIT_FACING)
    call UnitAddAbility(bj_lastCreatedUnit,'Arej')
    call IssueTargetOrder(bj_lastCreatedUnit,"rejuvination",u)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
    call ShowUnitHide(bj_lastCreatedUnit)
	call WuGongShengChong(u,'A0DI',300.)
	//打狗·驱狗
    if GetUnitAbilityLevel(u,'A07L')>=1 then
        call QuWuGongJi(u,'ndog')
    endif
    //降龙·驱龙
    if GetUnitAbilityLevel(u,'A07E')>=1 then
        call QuWuGongJi(u,'uloc')
    endif
	call TimerStart(t,0.1,true, function GaiBang_Action)
	call RemoveLocation(loc)
	set loc=null
	set u=null
	set t=null
endfunction
//铁布衫
globals
	integer array tiebucishu
endglobals
function IsTieBuShan takes nothing returns boolean
	return GetUnitAbilityLevel(GetTriggerUnit(),'A0CA')>=1
endfunction
function TieBuShan_Action takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local unit u=LoadUnitHandle(YDHT,GetHandleId(tm),0)
	local unit uc=LoadUnitHandle(YDHT,GetHandleId(tm),3)
	local integer cengxieliang=LoadInteger(YDHT,GetHandleId(tm),1)
	local integer cengjialiang=LoadInteger(YDHT,GetHandleId(tm),2)
	if udg_tiebushancengshu>=1 then
		set udg_tiebushancengshu=udg_tiebushancengshu-1
    endif
	call FlushChildHashtable(YDHT,GetHandleId(tm))
	call PauseTimer(tm)
	call DestroyTimer(tm)
	set tm=null
	set uc=null
	set u=null
endfunction
function TieBuShan takes nothing returns nothing
	local integer cengshu=15
	local unit u=GetTriggerUnit()
	local unit uc=GetAttacker()
	local integer cengxieliang=6000+1000*GetUnitAbilityLevel(u,'A0CA')
	local integer cengjialiang=100+30*GetUnitAbilityLevel(u,'A0CA')
	local timer tm=CreateTimer()
	local real time=20.
	local integer i=1
	if tiebucishu[1+GetPlayerId(GetOwningPlayer(u))]>=500 then
		set tiebucishu[1+GetPlayerId(GetOwningPlayer(u))]=tiebucishu[1+GetPlayerId(GetOwningPlayer(u))]-500
		call unitadditembyidswapped('I04T',u)
	else
		set tiebucishu[1+GetPlayerId(GetOwningPlayer(u))]=tiebucishu[1+GetPlayerId(GetOwningPlayer(u))]+1
	endif
	//set i=1
 //   loop
 //   exitwhen i>6
 //   if GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),i))== ITEM_TYPE_PURCHASABLE then
	//    set cengxieliang=cengxieliang/2
	//    set cengjialiang=cengjialiang/2
 //   endif
 //   set i=i+1
 //   endloop
 //   if GetUnitAbilityLevel(u,'A0DN')>=1 then
	//    set cengxieliang=cengxieliang-600
 //   endif
 //   if GetUnitAbilityLevel(u,'A070')>=1 then
	//    set cengjialiang=cengjialiang-20
 //   endif
    if danpo[1+GetPlayerId(GetOwningPlayer(u))]>=20 then
	    set time=time-10.
    endif
    if GetUnitAbilityLevel(u,'A083')>=1 then
	    set cengshu=cengshu+20
    endif
    set cengshu=cengshu-1+GetUnitAbilityLevel(u,'A0CA')
    if udg_tiebushancengshu<=cengshu-1 and GetRandomReal(1.,200)<20 then
	    call WuGongShengChong(u,'A0CA',2000.)
	    call WuGongShangHai(u,uc,ShangHaiGongShi(u,uc,20.,40.,udg_tiebushancengshu,'A0CA'))
	    call SetUnitDizzy(uc,4.+1.5*GetUnitAbilityLevel(u,'A0CA'),"Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
	    set udg_tiebushancengshu=udg_tiebushancengshu+1
        call SaveUnitHandle(YDHT,GetHandleId(tm),0,u)
        call SaveUnitHandle(YDHT,GetHandleId(tm),3,uc)
        call SaveInteger(YDHT,GetHandleId(tm),1,cengxieliang)
        call SaveInteger(YDHT,GetHandleId(tm),2,cengjialiang)
        call TimerStart(tm,time,false,function TieBuShan_Action)

    endif

	set u=null
	set uc=null
	set tm=null
endfunction
//夜叉棍法
function IsYeCha takes nothing returns boolean
	return GetSpellAbilityId()=='A0CB'
endfunction
function YeChaGun_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_yechadanwei)) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function YeChaGun_SH takes nothing returns nothing
	local real shanghai=0.
	local real shxishu=1.
	if GetUnitAbilityLevel(udg_yechadanwei,'A07P')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(udg_yechadanwei,'A07T')>=1 then
		set shxishu=shxishu+.8
	endif
	if GetUnitAbilityLevel(udg_yechadanwei,'A080')>=1 then
		set shxishu=shxishu+1.5
	endif
	if UnitHaveItem(udg_yechadanwei,'I097') then
	    set shxishu=shxishu*4
    endif
    set shanghai=ShangHaiGongShi(udg_yechadanwei,GetEnumUnit(),5.6,1.5,shxishu,'A0CB')
    call WuGongShangHai(udg_yechadanwei,GetEnumUnit(),shanghai)
    if GetUnitAbilityLevel(udg_yechadanwei,'A0DI')>=1 then
	     call SetUnitDizzy(GetEnumUnit(),2.,"Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
    endif
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",GetEnumUnit(),"overhead"))
endfunction
function YeChaGun_Action takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer p= GetHandleId(t)
    local unit u=LoadUnitHandle(YDHT,p,0)
    local unit ut=LoadUnitHandle(YDHT,p,1)
    local real Axx=LoadReal(YDHT,p,2)
    local real Ayy=LoadReal(YDHT,p,3)
    local real Cxx=LoadReal(YDHT,p,4)
    local real Cyy=LoadReal(YDHT,p,5)
    local real Bxx=LoadReal(YDHT,p,6)
    local real Byy=LoadReal(YDHT,p,7)
    local real a=LoadReal(YDHT,p,8)
    local real b=1-a
    local boolean firstpass=LoadBoolean(YDHT,p,9)
    local location loc=GetUnitLoc(ut)
    local group g=CreateGroup()
    call SetUnitX(ut,CheckX(Axx*a*a+Bxx*2*a*b+Cxx*b*b))
    call SetUnitY(ut,CheckY(Ayy*a*a+Byy*2*a*b+Cyy*b*b))
    set udg_yechadanwei=u
    call GroupEnumUnitsInRangeOfLoc(g,loc,150,Condition(function YeChaGun_Condition))
    call ForGroupBJ(g,function YeChaGun_SH)
    call GroupClear(g)
    call DestroyGroup(g)
    if firstpass then
	    set a=a-0.02
	else
	    set a=a+0.02
    endif
    call SaveReal(YDHT,p,8,a)
    call SaveReal(YDHT,p,2,GetUnitX(u))
    call SaveReal(YDHT,p,3,GetUnitY(u))
    if(a<0 and firstpass)then
	    call SetUnitFacing(ut,GetUnitFacing(ut)+180)
        call SaveBoolean(YDHT,p,9,false)
        call SaveReal(YDHT,p,6,Axx+300*Cos(Atan2(Cyy-Ayy,Cxx-Axx))-45)
        call SaveReal(YDHT,p,7,Ayy+300*Sin(Atan2(Cyy-Ayy,Cxx-Axx))-45)
    endif
    if(a>1 and firstpass==false)then
	    call KillUnit(ut)
	    call FlushChildHashtable(YDHT,p)
        call PauseTimer(t)
        call DestroyTimer(t)
    endif
    call RemoveLocation(loc)
    set loc=null
    set g=null
    set t=null
    set u=null
    set ut=null
endfunction
function YeChaGun takes nothing returns nothing
    local timer t= CreateTimer()
    local integer p= GetHandleId(t)
    local unit u= GetTriggerUnit()
    local real Axx= GetUnitX(u)
    local real Ayy= GetUnitY(u)
    local real Cxx=GetSpellTargetX()
    local real Cyy=GetSpellTargetY()
    local integer i= 0
    local real angle=0.
    local real a=1.
    call SaveUnitHandle(YDHT,p,0,u)
    call SaveUnitHandle(YDHT,p,1,CreateUnit(GetOwningPlayer(u), 'h00D', Axx , Ayy ,GetUnitFacing(u)))
    call SaveReal(YDHT,p,2,Axx)
    call SaveReal(YDHT,p,3,Ayy)
    call SaveReal(YDHT,p,4,Cxx)
    call SaveReal(YDHT,p,5,Cyy)
    call SaveReal(YDHT,p,6,Axx+300*Cos(Atan2(Cyy-Ayy,Cxx-Axx))+45)
    call SaveReal(YDHT,p,7,Ayy+300*Sin(Atan2(Cyy-Ayy,Cxx-Axx))+45)
    call SaveReal(YDHT,p,8,a)
    call SaveBoolean(YDHT,p,9,true)
    call WuGongShengChong(u,'A0CB',240.)
    call TimerStart(t, 0.03, true, function YeChaGun_Action)
    set u=null
    set t=null
endfunction
//疯魔杖法
function IsFengMoShe takes nothing returns boolean
	return GetUnitTypeId(GetAttacker())=='osp1' or GetUnitTypeId(GetAttacker())=='osp2' or GetUnitTypeId(GetAttacker())=='osp3'
endfunction
function FengMoShe takes nothing returns nothing
	local player p=GetOwningPlayer(GetAttacker())
	local integer i=1+GetPlayerId(p)
	local unit u=udg_hero[i]
	local unit uc=GetTriggerUnit()
	local real shanghai=0.
	local real shxishu=1.
    local real Maxsh=0.
    local real Minsh=0.
	if GetUnitTypeId(GetAttacker())=='osp1' then
		set shxishu=1.
	elseif GetUnitTypeId(GetAttacker())=='osp2' then
	    set shxishu=3.
	elseif GetUnitTypeId(GetAttacker())=='osp3' then
	    set shxishu=13.
	endif
	if UnitHaveItem(u,'I097') then
	    set shxishu=shxishu*4
    endif
	set shanghai=ShangHaiGongShi(u,uc,18.,30.,shxishu,'A0C8')
	call WuGongShangHai(u,uc,shanghai)
	set uc=null
	set u=null
	set p=null
endfunction
function IsFengMo takes nothing returns boolean
	return IsCertainWuGong(GetAttacker(),GetTriggerUnit(),'A0C8')
endfunction
function FengMoGun takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer id='osp1'
	local location loc1=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	if GetUnitAbilityLevel(u,'A089')>=1 then
		if GetUnitAbilityLevel(u,'A0D8')>=1 then
			set id='osp3'
		else
		    set id='osp2'
	    endif
	endif
	call CreateNUnitsAtLocFacingLocBJ(1,id,p,loc1,loc2)
	call UnitApplyTimedLifeBJ(3,'BTLF',bj_lastCreatedUnit)
    if GetUnitAbilityLevel(u,'A07U')>=1 then
	    call CreateNUnitsAtLocFacingLocBJ(1,id,p,loc1,loc2)
	    call UnitApplyTimedLifeBJ(3,'BTLF',bj_lastCreatedUnit)
    endif
    call WuGongShengChong(u,'A0C8',900.)
    call RemoveLocation(loc1)
    call RemoveLocation(loc2)
    set loc1=null
    set loc2=null
	set p=null
	set u=null
	set uc=null
endfunction
//--------丐帮结束--------//
