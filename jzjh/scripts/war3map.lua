require 'map.static.destructables'

--globals from DzAPI:
LIBRARY_DzAPI = true
--endglobals from DzAPI
--globals from MaxSpeed:
LIBRARY_MaxSpeed = true
MaxSpeed___USE_TABLE = true
MaxSpeed___NEW_TABLE = true
-- Vexorian's Table or Bribe's (NEW)
MaxSpeed___TEST_MODE = false
MaxSpeed___PERIOD = 0.03125
MaxSpeed___MAX_SPEED = 2088.0
-- 最大速度限定，超出视为传送。
MaxSpeed___MIN_SPEED = 500.0
-- 判定的最小距离，此项过小或速度过大会使原地打转几率增加，超出则没有加速效果。
-- 测试最大为500刚出头，与522还有些差距
--endglobals from MaxSpeed
--globals from UniMissileSystem3D:
LIBRARY_UniMissileSystem3D = true
UniMissileSystem3D__SP = _array_(0.0)
UniMissileSystem3D__RA = _array_(0.0)
UniMissileSystem3D__DM = _array_(0.0)
UniMissileSystem3D__DI = _array_(0.0)
UniMissileSystem3D__AN = _array_(0.0)
UniMissileSystem3D__ANZ = _array_(0.0)
UniMissileSystem3D__HE = _array_(0.0)
UniMissileSystem3D__HEMax = _array_(0.0)
UniMissileSystem3D__SH = _array_(0.0)
UniMissileSystem3D__US = _array_(0.0)
UniMissileSystem3D__MX = _array_(0.0)
UniMissileSystem3D__MY = _array_(0.0)
UniMissileSystem3D__MZ = _array_(0.0)
UniMissileSystem3D__ARC = _array_(0.0)
UniMissileSystem3D__HP = _array_(0.0)
UniMissileSystem3D__OF = _array_(0.0)
UniMissileSystem3D__OS = _array_(0.0)
UniMissileSystem3D__TIM = _array_(0.0)
UniMissileSystem3D__LT = _array_(0.0)
UniMissileSystem3D__SZ = _array_(0.0)
UniMissileSystem3D__RI = _array_(0.0)
UniMissileSystem3D__R01 = _array_(0.0)
UniMissileSystem3D__R02 = _array_(0.0)
UniMissileSystem3D__MGra = _array_(0.0)
UniMissileSystem3D__LOC = _array_(0.0)
UniMissileSystem3D__OH = _array_(0.0)
UniMissileSystem3D__Gravity = 0.4
UniMissileSystem3D__MU = _array_()
UniMissileSystem3D__MT = _array_()
UniMissileSystem3D__DamageUnit = nil
UniMissileSystem3D__EF = _array_()
UniMissileSystem3D__EFL = _array_()
UniMissileSystem3D__ACC = _array_(0.0)
UniMissileSystem3D__MaxS = _array_(0.0)
UniMissileSystem3D__SPX = _array_(0.0)
UniMissileSystem3D__SPY = _array_(0.0)
UniMissileSystem3D__LastX = _array_(0.0)
UniMissileSystem3D__LastY = _array_(0.0)
UniMissileSystem3D__MKs = _array_(0.0)
UniMissileSystem3D__IN = _array_(0)
UniMissileSystem3D__Top = -1
UniMissileSystem3D__TIMOut = 0.03
UniMissileSystem3D__DamageGroup = nil
UniMissileSystem3D__TIMr = nil
UniMissileSystem3D__HeroLoc = nil
UniMissileSystem3D__MLoc = _array_()
UniMissileSystem3D__LastOwner = _array_()
MissileTimerPause = false
UniMissileSystem3D__map_max_X = nil
UniMissileSystem3D__map_max_Y = nil
UniMissileSystem3D__map_min_X = nil
UniMissileSystem3D__map_min_Y = nil
--endglobals from UniMissileSystem3D
--globals from WuQiQiHeSystem:
LIBRARY_WuQiQiHeSystem = true
--endglobals from WuQiQiHeSystem
--globals from YDTriggerSaveLoadSystem:
LIBRARY_YDTriggerSaveLoadSystem = true
YDHT = nil
YDLOC = nil
--endglobals from YDTriggerSaveLoadSystem
--globals from YDWEBase:
LIBRARY_YDWEBase = true
--ȫ�ֹ�ϣ�� 
bj_AllString = ".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
--全局系统变量
bj_lastAbilityCastingUnit = nil
bj_lastAbilityTargetUnit = nil
bj_lastPoolAbstractedUnit = nil
bj_lastCreatedUnitPool = nil
bj_lastPoolAbstractedItem = nil
bj_lastCreatedItemPool = nil
bj_lastSetAttackType = ATTACK_TYPE_NORMAL
bj_lastSetDamageType = DAMAGE_TYPE_NORMAL
bj_lastSetWeaponType = WEAPON_TYPE_WHOKNOWS
yd_MapMaxX = 0
yd_MapMinX = 0
yd_MapMaxY = 0
yd_MapMinY = 0
YDWEBase__yd_PlayerColor = _array_()
YDWEBase__AbilityCastingOverEventQueue = _array_()
YDWEBase__AbilityCastingOverEventType = _array_(0)
YDWEBase__AbilityCastingOverEventNumber = 0
--endglobals from YDWEBase
--globals from YDWEGeneralBounsSystem:
LIBRARY_YDWEGeneralBounsSystem = true
YDWEGeneralBounsSystem__ABILITY_COUNT = _array_(0)
YDWEGeneralBounsSystem__ABILITY_NUM = _array_(0)
YDWEGeneralBounsSystem__BonusAbilitys = _array_(0)
YDWEGeneralBounsSystem__PowersOf2 = _array_(0)
YDWEGeneralBounsSystem__PRELOAD_DUMMY_UNIT = 1752196449
YDWEGeneralBounsSystem__YDWEBONUS_MyChar = _array_(0)
YDWEGeneralBounsSystem__PRELOAD_ABILITYS = true
YDWEGeneralBounsSystem__BONUS_TYPES = 4
YDWEGeneralBounsSystem__MaxBonus = _array_(0)
YDWEGeneralBounsSystem__MinBonus = _array_(0)
YDWEGeneralBounsSystem__Units = _array_()
YDWEGeneralBounsSystem__UnitCount = 0
--endglobals from YDWEGeneralBounsSystem
--globals from YDWEGetUnitsInRangeOfLocMatchingNull:
LIBRARY_YDWEGetUnitsInRangeOfLocMatchingNull = true
yd_NullTempGroup = nil
--endglobals from YDWEGetUnitsInRangeOfLocMatchingNull
--globals from YDWELogarithm:
LIBRARY_YDWELogarithm = true
YDWELogarithm__base = _array_(0.0)
--endglobals from YDWELogarithm
--globals from YDWEPolledWaitNull:
LIBRARY_YDWEPolledWaitNull = true
--endglobals from YDWEPolledWaitNull
--globals from YDWEStringHash:
LIBRARY_YDWEStringHash = true
--endglobals from YDWEStringHash
--globals from YDWESync:
LIBRARY_YDWESync = true
YDWESync__m_gc = nil
YDWESync__m_mutex_state = false
--endglobals from YDWESync
--globals from YDWETriggerEvent:
LIBRARY_YDWETriggerEvent = true
yd_DamageEventTrigger = nil
YDWETriggerEvent__DamageEventQueue = _array_()
YDWETriggerEvent__DamageEventNumber = 0

bj_lastMovedItemInItemSlot = nil

YDWETriggerEvent__MoveItemEventTrigger = nil
YDWETriggerEvent__MoveItemEventQueue = _array_()
YDWETriggerEvent__MoveItemEventNumber = 0
--endglobals from YDWETriggerEvent
--globals from YDWETriggerRegisterLeaveRectSimpleNull:
LIBRARY_YDWETriggerRegisterLeaveRectSimpleNull = true
yd_NullTempRegion = nil
--endglobals from YDWETriggerRegisterLeaveRectSimpleNull
--globals from YDWEUnitHasItemOfTypeBJNull:
LIBRARY_YDWEUnitHasItemOfTypeBJNull = true
--endglobals from YDWEUnitHasItemOfTypeBJNull
--globals from YDWEJumpTimer:
LIBRARY_YDWEJumpTimer = true
--��Ծϵͳ���ȼ�
MoveMoreLevel_JumpTimer = 3
--endglobals from YDWEJumpTimer
--globals from YDWELocalVariable:
LIBRARY_YDWELocalVariable = true
--endglobals from YDWELocalVariable
--globals from YDWEPreloadSL:
LIBRARY_YDWEPreloadSL = true
--/
--/ ÿ�����ռ�õĿռ�[500*id, 500*(id-1))
--/ �±�Խ��û�н��м�飬�ƺ�û�����Ҫ��˭Ҫ���ó���500...��ȥ����- -
--/ 
YDWEPreloadSL__Code = _array_(0)
YDWEPreloadSL__CodeHI = _array_(0)
YDWEPreloadSL__CodeLO = _array_(0)
bj_lastLoadPreloadSLResult = nil
udg_YDWE_PreloadSL_List = _array_()
udg_YDWE_PreloadSL_CurrentDir = ""
--endglobals from YDWEPreloadSL
--globals from YDWEStringFormula:
LIBRARY_YDWEStringFormula = true
bj_lastCombinedItem = nil
YDWEStringFormula__ItemCombineEventQueue = _array_()
YDWEStringFormula__ItemCombineEventNumber = 0
YDWEStringFormula__MAX_INSTANCES = 8100
YDWEStringFormula__SEGMENT_LENGTH = 4
YDWEStringFormula__FormulaData = 0
--endglobals from YDWEStringFormula
--globals from YDWETimerPattern:
LIBRARY_YDWETimerPattern = true
YDWETimerPattern__Bexpr = nil
YDWETimerPattern__Area = nil
YDWETimerPattern__tmp_data = nil
YDWETimerPattern__yd_loc = Location(0.0, 0.0)
--endglobals from YDWETimerPattern
--globals from YDWETimerSystem:
LIBRARY_YDWETimerSystem = true
YDWETimerSystem__CurrentTime = nil
YDWETimerSystem__CurrentIndex = nil
YDWETimerSystem__TaskListHead = nil
YDWETimerSystem__TaskListIdleHead = nil
YDWETimerSystem__TaskListIdleMax = nil
YDWETimerSystem__TaskListIdle = _array_(0)
YDWETimerSystem__TaskListNext = _array_(0)
YDWETimerSystem__TaskListTime = _array_(0)
YDWETimerSystem__TaskListProc = _array_()
YDWETimerSystem__fnRemoveUnit = nil
YDWETimerSystem__fnDestroyTimer = nil
YDWETimerSystem__fnRemoveItem = nil
YDWETimerSystem__fnDestroyEffect = nil
YDWETimerSystem__fnDestroyLightning = nil
YDWETimerSystem__fnRunTrigger = nil
YDWETimerSystem__Timer = nil
YDWETimerSystem__TimerHandle = nil
YDWETimerSystem__TimerSystem_RunIndex = 0
--endglobals from YDWETimerSystem
-- User-defined
udg_UG_ResidualImage = nil
udg_A_Unit = nil
udg_A_Unit2 = nil
udg_A_PlayerHero = _array_()
udg_Player_Hero = _array_()
udg_Unit_B = _array_()
udg_A_UG = nil
udg_A_Piont = nil
udg_A_Piont2 = nil
udg_A_Angle = 0
udg_A_Ang = 0
udg_A_Ang_2 = 0
udg_A_hurt = 0
udg_A_num = 0
udg_x = 0
udg_y = 0
udg_Player = _array_()
udg_A_Int = 0
udg_Number_player = 0
udg_MeiJuJiFen = _array_(0)
udg_kurongsharen = _array_(0)
udg_HuanZhuangCD = _array_(false)
-- Generated
gg_trg_import_lua = nil
gg_trg____________________001 = nil
gg_trg____________________004 = nil
gg_trg____________________005 = nil
gg_trg____________________002 = nil
gg_trg____________________003 = nil
gg_trg___________________u = nil
gg_trg_____________u = nil
gg_trg_ChangeClothes = nil
gg_trg_QinLongKongHe = nil
gg_trg_YaoWangShenPian = nil
gg_trg_KuRongShenGong = nil
gg_trg_KuRongShenGong_2 = nil
gg_trg_KuRongShenGong_3 = nil
gg_trg_ShuiShangPiao = nil
gg_trg_SH = nil
gg_trg_AM_1 = nil
gg_trg_AM_2 = nil
gg_unit_N008_0054 = nil
gg_unit_N007_0055 = nil
gg_unit_n00M_0131 = nil
gg_unit_nvl2_0005 = nil
gg_unit_N00I_0116 = nil
gg_unit_n00E_0066 = nil
gg_unit_n00N_0132 = nil

-- 江湖、绝学、绝内的最大武功种类数
MAX_WU_GONG_NUM = 56
MAX_BAN_LV_NUM = 14
wuhun = DialogCreate()
chuansong = DialogCreate()
wuhun1 = _array_()
chuansong1 = _array_()
udg_JTX = _array_()
ceshi = false
ceshizongshanghai = nil
jiuyangTimer1 = nil
jiuyangTimer2 = nil
jiuyangTimer3 = nil
jiuyangTimerDialog1 = nil
jiuyangTimerDialog2 = nil
jiuyangTimerDialog3 = nil
defeatStealer = nil
defeatSeeker = nil
xunwu = _array_(0)
yangshou = _array_(0)
udg_yangshou = _array_(0)
newbeeTaskId = _array_(0)
jingyao_dialog = _array_()
jingyao_button1 = _array_()
jingyao_button2 = _array_()
jingyao_button3 = _array_()
jingyao_button4 = _array_()
jingyao_button5 = _array_()
jingyao_button6 = _array_()
jingyao_button7 = _array_()
jingyao_button8 = _array_()
jingyao_button9 = _array_()
jingyao_button10 = _array_()
jingyao_button11 = _array_()
jingyao_button_cancel = _array_()
yongdanshu = _array_(0)
--===============najitest===============
unitnumber_lh = 0
createdunitnumber_lh = 0
StringList_naji = nil
Sdummy_naji = _array_()
Ttest_naji = _array_()
Ptest_naji = nil
Ihandle_naji = nil
Ibm_naji = nil
Itrigger_naji = nil
Iquest_naji = nil
Iweather_naji = nil
Bfog_naji = nil
Bpause_naji = nil
Bxy_naji = nil
Bid_naji = nil
Bir_naji = nil
Bcamera_naji = _array_(false)
Bpn_naji = nil
Bddm_naji = nil
Dnaji_naji = _array_()
Button_naji = _array_()
Rhandle_naji = nil
Rdummy_naji = nil
Rcamera_naji = _array_(0.0)
Rworld_naji = nil
Gcd_naji = _array_()
Guw_naji = nil
Gms_naji = nil
Q_naji = _array_()
Tcamera_naji = nil
Tbm_naji = _array_()
Weather_naji = _array_()
--===============najitest===============
tiebucishu = _array_(0)
isproducing = _array_(false)
gg_trg_Number14_0 = nil
gg_trg_Number14_1 = nil
udg_zhemeieff = nil
shenghuoling_1 = nil
shenghuoling_2 = nil
shenghuoling_3 = nil
ling1zhuan = nil
ling2zhuan = nil
ling3zhuan = nil
udg_xiantiandanwei = nil
tiaozhanduixiang = _array_(0)
menpaiwuqi = _array_(0)
udg_tiaoxuedao = _array_(false)
udg_tiaodugu = _array_(false)
udg_tiaodamo = _array_(false)
tiaozhanwho = DialogCreate()
b_dugu = nil
b_xuedaozu = nil
b_ronglianlaozu = nil
b_zhucong = nil
b_damozushi = nil
b_cancel = nil
udg_tiaozhanguai = nil
zizhiwugong = _array_(0)
lh_texiao = _array_()
wuxuedian = _array_(0)
dapei = _array_(0)
zizhibool = _array_(false)
jiawuxue = _array_(false)
shopweapon = _array_(0)
udg_shenxingpoyin = _array_(0.0)
udg_shenxingfuzhu = _array_()
udg_miaoshoufuzhu = _array_()
guixihuixie = _array_(0.0)
udg_qinglong = nil
udg_baihu = nil
udg_xuanwu = nil
udg_zhuque = nil
udg_ql = false
udg_bh = false
udg_xw = false
udg_zq = false
udg_qlover = false
udg_bhover = false
udg_xwover = false
udg_zqover = false
udg_loadql = _array_(false)
yd_NullTempItem = nil
w = nil
z = nil
A = nil
B = nil
C = nil
D = nil
H = 0
I = 0
l = 0
J = 0
udg_sixiangdanwei = nil
udg_xuezhandanwei = nil
udg_fanweidanwei = nil
udg_fomiedanwei = nil
udg_yechadanwei = nil
udg_miejuedanwei = nil
wugongshu = _array_(0)
udg_whichzhangmen = _array_(0)
udg_zhemei = _array_(0)
udg_zhangmen = _array_(false)
chilian = _array_(false)
udg_tiebushancengshu = 0
udg_nandu = 0
udg_shifoufomie = false
udg_teshushijian = false
udg_shengchun = false
udg_yunyangxianshen = false
udg_sutong = false
taohuakai = false
udg_index = nil
udg_index0 = nil
udg_index1 = nil
udg_index2 = nil
udg_index3 = nil
udg_index4 = nil
udg_nan = nil
udg_nan0 = nil
udg_nan1 = nil
udg_nan2 = nil
udg_nan3 = nil
udg_nan4 = nil
udg_nan5 = nil
udg_gudongA = 0
udg_gudongB = 0
udg_gudongC = 0
udg_gudongD = 0
udg_xinggeA = _array_(0)
udg_xinggeB = _array_(0)

udg_jianghu = _array_(0)
udg_juexue = _array_(0)
udg_juenei = _array_(0)
udg_canzhang = _array_(0)
udg_diershi = _array_(0)
aidacishu = _array_(0)
udg_wuqishu = _array_(0)
udg_yifushu = _array_(0)
K = _array_()
L = _array_(0)
M = 0
O = 16
P = _array_(0)
Q = _array_(0)
S = _array_(0)
T = _array_(0)
U = 1752196449
V = _array_(0)
W = true
X = _array_(0)
Y = _array_(0)
udg_shuxing = _array_(0)
Z = nil
d4 = nil
e4 = nil
udg_shanghaidanweizu = nil
f4 = nil
g4 = _array_()
h4 = 0
i4 = nil
k4 = _array_()
m4 = 0
nn4 = nil
o4 = CreateTimer()
p4 = nil
q4 = nil
r4 = nil
s4 = nil
t4 = nil
u4 = _array_(0)
v4 = _array_(0)
w4 = _array_(0)
x4 = _array_()
qiuhun = _array_(0)
zhaoyangguo = _array_(0)
linganran = _array_(0)
touxiao = _array_(0)
bihai = _array_(0)
y4 = nil
z4 = nil
A4 = nil
a4 = nil
B4 = nil
b4 = nil
C4 = nil
c4 = nil
D4 = 0
juexuelingwu = _array_(0)
udg_baojishanghai = _array_(0.0)
udg_baojilv = _array_(0.0)
shanghaihuifu = _array_(0.0)
shaguaihufui = _array_(0.0)
shengminghuifu = _array_(0.0)
falihuifu = _array_(0.0)
udg_lilianxishu = _array_(0.0)
udg_loc1 = nil
K4 = _array_()
L4 = _array_()
udg_hashero = _array_(false)
udg_baoji = _array_(false)
udg_yiwang = _array_(false)
udg_hero = _array_()
O4 = 0
P4 = _array_()
Q4 = nil
R4 = _array_()
S4 = _array_()
T4 = _array_()
U4 = _array_()
V4 = _array_()
W4 = _array_()
X4 = _array_()
Y4 = _array_(0)
wuxing = _array_(0)
jingmai = _array_(0)
gengu = _array_(0)
fuyuan = _array_(0)
danpo = _array_(0)
yishu = _array_(0)
i7 = nil
udg_runamen = _array_(0)
k7 = 0
m7 = _array_()
nn7 = 0
o7 = 0
udg_counter1 = 0
q7 = _array_(0)
r7 = _array_()
s7 = 0
udg_boshu = 0
u7 = _array_(0)
v7 = _array_()
w7 = nil
x7 = 0
y7 = _array_(0)
z7 = _array_()
A7 = _array_()
ShiFouShuaGuai = false
B7 = 0
b7 = _array_()
C7 = _array_()
c7 = 0
D7 = _array_(0.0)
E7 = _array_()
F7 = _array_(0)
G7 = _array_(0)
H7 = 0
I7 = _array_(0)
l7 = _array_()
J7 = _array_()
J78 = _array_()
J79 = _array_()
J710 = _array_()
J711 = _array_()
K7 = _array_()
udg_menpaineigong = nil
L7 = _array_(0)
MM7 = 0
N7 = 0
P7 = _array_(0)
udg_revivetimer = _array_()
R7 = _array_()
S7 = _array_(0)
T7 = 0
U7 = 0
udg_MaxDamage = _array_(0.0)
udg_menpainame = _array_()
X7 = _array_(0)
Y7 = _array_(0)
Z7 = _array_(0)
d8 = _array_(0)
e8 = _array_(0)
shengwang = _array_(0)
g8 = _array_(0)
h8 = _array_(0)
i8 = _array_(0)
j8 = _array_(0)
k8 = _array_()
udg_boss = _array_()
m8 = _array_(false)
o8 = _array_(false)
p8 = _array_()
q8 = _array_(0)
r8 = _array_()
s8 = nil
t8 = false

v8 = _array_()
w8 = _array_()
x8 = _array_()
y8 = _array_()
z8 = _array_()
A8 = _array_()
a8 = _array_()
B8 = _array_()
b8 = _array_(false)
C8 = _array_(false)
c8 = _array_(false)
D8 = _array_()
E8 = 0
F8 = _array_(false)
XNKL = _array_(false)
G8 = _array_(false)
H8 = _array_(false)
I8 = _array_(false)
l8 = _array_(false)
J8 = _array_(0)
K8 = _array_(0)
xiuxing = _array_(0)
MM8 = _array_(0)
N8 = _array_(0)
O8 = _array_(0)
P8 = _array_(0)
Q8 = _array_(0)
R8 = _array_(0)
S8 = _array_(0)
udg_blgg = _array_(0)
udg_blwx = _array_(0)
udg_bljm = _array_(0)
udg_blfy = _array_(0)
udg_bldp = _array_(0)
udg_blys = _array_(0)
udg_jdds = _array_(0)
udg_ldds = _array_(0)
udg_xbds = _array_(0)
udg_bqds = _array_(0)
udg_dzds = _array_(0)
udg_jwjs = _array_(0)
udg_jddsbool = _array_(false)
udg_lddsbool = _array_(false)
udg_xbdsbool = _array_(false)
udg_bqdsbool = _array_(false)
udg_dzdsbool = _array_(false)
udg_jwjsbool = _array_(false)
udg_junzhu = _array_(false)
Z8 = _array_(false)
d9 = _array_(false)
e9 = _array_(false)
f9 = _array_()
g9 = _array_()
h9 = _array_(false)
i9 = _array_(0)
j9 = nil
k9 = nil
m9 = 0
n9 = 0
o9 = _array_()
p9 = 0
q9 = _array_()
r9 = nil
s9 = nil
t9 = _array_()
u9 = 0
v9 = _array_(false)
w9 = _array_(false)
x9 = _array_(false)
y9 = _array_(false)
z9 = _array_(0)
A9 = _array_(0)
a9 = _array_()
B9 = _array_()
b9 = _array_()
C9 = nil
c9 = nil
D9 = nil
E9 = _array_()
F9 = 0
G9 = _array_(0)
H9 = _array_(0)
I9 = _array_(0)
l9 = _array_(0)
udg_baolv = _array_(0)
J9 = _array_()
qiankun2hao = _array_()
qiankun3hao = _array_()
udg_shanghaijiacheng = _array_(0.0)
udg_shanghaixishou = _array_(0.0)
MM9 = _array_(0)
udg_jueneishxs = _array_(0.0)
udg_jueneishjc = _array_(0.0)
udg_jueneiminjie = _array_(0)
udg_jueneijxlw = _array_(0)
udg_jueneibaojilv = _array_(0.0)
S9 = 0
T9 = _array_(false)
LLguaiA = _array_(0)
LLguaiE = _array_(0)
LLguaiB = _array_(0)
LLguaiC = _array_(0)
LLguaiD = _array_(0)
LLguaiF = _array_(0)
LLguaiG = _array_(0)
Z9 = _array_()
dd = _array_()
ed = _array_(false)
fd = _array_()
gd = _array_()
hd = false
jd = _array_(0)
kd = _array_(0)
gudong = _array_(0)
nd = _array_(0)
od = _array_(0)
pd = _array_(0)
qd = _array_(0)
rd = _array_(0)
ud = _array_(0)
vd = _array_()
wugongxiuwei = _array_(0)
xd = _array_(0)
yd = _array_(0)
zd = 0
Ad = _array_(false)
ad = 0
Bd = _array_(false)
bd = _array_()
Cd = _array_(0)
cd = _array_(false)
Dd = _array_(0)
Ed = _array_(0)
Fd = _array_()
Gd = _array_(0.0)
Hd = _array_()
Id = _array_(0)
ld = _array_(0)
Jd = _array_(0)
JYd = _array_(0)
Kd = _array_(0)
Ld = _array_(0)
Md = _array_(0)
Nd = _array_(0)
Od = _array_(0)
Pd = _array_(0)
Qd = _array_(0)
Rd = _array_(false)
Sd = _array_(0)
Td = _array_(0)
Ud = _array_(0)
Vd = _array_(0)
Wd = _array_(0)
jiuazi = _array_(0)
Xd = 0
Yd = 0
Zd = 0
de = false
ee = _array_()
shoujiajf = _array_(0)
ge = _array_(false)
he = _array_(false)
ie = 0
je = _array_()
ke = _array_()
me = _array_()
ne = _array_()
oe = _array_()
pe = _array_()
qe = _array_()
re = _array_()
rre = _array_()
re9 = _array_()
re10 = _array_()
re11 = _array_()
se = _array_()
te = _array_(0)
ue = 5
ve = _array_(0)
xe = _array_(0)
ye = _array_(0)
ze = _array_(0)
Ae = _array_(0)
ae = 0
YaoCao = _array_(0)
ShiPin = _array_(0)
ZhuangBei = _array_(0)
Ce = _array_(0)
ce = _array_(0)
De = _array_(false)
Ee = _array_(false)
Fe = nil
udg_jail = nil
udg_yizhan = nil
udg_xuanmenpai = nil
udg_tiaozhanqu = nil
Ge = nil
He = nil
Ie = nil
le = nil
Je = nil
Ke = nil
Le = nil
Me = nil
Ne = nil
Oe = nil
Pe = nil
botong = nil
Qe = nil
Re = nil
Se = nil
Te = nil
Ue = nil
Ve = nil
We = nil
Xe = nil
Ye = nil
Ze = nil
df = nil
lh_r = nil
ef = nil
ff = nil
gf = nil
hf = nil
jf = nil
kf = nil
mf = nil
nf = nil
of = nil
pf = nil
qf = nil
rf = nil
sf = nil
tf = nil
uf = nil
vf = nil
wf = nil
xf = nil
yf = nil
zf = nil
Af = nil
af = nil
Bf = nil
bf = nil
Cf = nil
cf = nil
Df = nil
Ef = nil
Ff = nil
Gf = nil
Hf = nil
If = nil
lf = nil
Jf = nil
Kf = nil
Lf = nil
Mf = nil
Nf = nil
Of = nil
Pf = nil
Qf = nil
Rf = nil
Sf = nil
Tf = nil
Uf = nil
Vf = nil
Wf = nil
Xf = nil
Yf = nil
Zf = nil
dg = nil
eg = nil
fg = nil
gg = nil
hg = nil
ig = nil
jg = nil
kg = nil
mg = nil
ng = nil
og = nil
pg = nil
qg = nil
rg = nil
sg = nil
tg = nil
ug = nil
vg = nil
wg = nil
xg = nil
yg = nil
zg = nil
Ag = nil
ag = nil
Bg = nil
bg = nil
Cg = nil
cg = nil
Dg = nil
Eg = nil
Fg = nil
Gg = nil
Hg = nil
Ig = nil
lg = nil
Jg = nil
Kg = nil
Lg = nil
Mg = nil
Ng = nil
Og = nil
Pg = nil
Qg = nil
Rg = nil
Sg = nil
Ug = nil
Vg = nil
Wg = nil
Xg = nil
Yg = nil
Zg = nil
dh = nil
eh = nil
fh = nil
gh = nil
hh = nil
udg_liuqiu = nil
jh = nil
kh = nil
mh = nil
nh = nil
oh = nil
ph = nil
qh = nil
rh = nil
sh = nil
th = nil
uh = nil
vh = nil
wh = nil
xh = "war3mapImported\\yanmenguanqian4.mp3"
yh = "war3mapImported\\wulindahui3.mp3"
zh = "Sound\\Music\\mp3Music\\War2IntroMusic.mp3"
Ah = nil
ah = nil
Bh = nil
bh = nil
Ch = nil
Dh = nil
Eh = nil
Fh = nil
Gh = nil
Hh = nil
Ih = nil
lh = nil
Jh = nil
Kh = nil
Lh = nil
Mh = nil
Nh = nil
Oh = nil
Ph = nil
Rh = nil
Sh = nil
Th = nil
Uh = nil
Vh = nil
Wh = nil
Xh = nil
Yh = nil
Zh = nil
di = nil
fi = nil
gi = nil
hi = nil
ii = nil
ji = nil
ki = nil
mi = nil
ni = nil
oi = nil
pi = nil
ri = nil
si = nil
ti = nil
ui = nil
vi = nil
wi = nil
xi = nil
yi = nil
Ci = nil
ci = nil
Di = nil
Ei = nil
Fi = nil
Gi = nil
Hi = nil
Ii = nil
Mi = nil
Ni = nil
Oi = nil
Qi = nil
Ri = nil
Si = nil
Ti = nil
Ui = nil
Vi = nil
Wi = nil
Xi = nil
Yi = nil
Zi = nil
dj = nil
ej = nil
fj = nil
gj = nil
hj = nil
ij = nil
jj = nil
mj = nil
nj = nil
oj = nil
pj = nil
qj = nil
rj = nil
sj = nil
tj = nil
uj = nil
vj = nil
wj = nil
xj = nil
yj = nil
zj = nil
Aj = nil
aj = nil
Bj = nil
bj = nil
Cj = nil
cj = nil
Dj = nil
Ej = nil
Fj = nil
Gj = nil
Hj = nil
Ij = nil
lj = nil
Jj = nil
Kj = nil
Lj = nil
Mj = nil
Nj = nil
Oj = nil
Pj = nil
Qj = nil
Rj = nil
Sj = nil
Tj = nil
Uj = nil
Vj = nil
Wj = nil
Xj = nil
Yj = nil
Zj = nil
dk = nil
ek = nil
fk = nil
gk = nil
hk = nil
ik = nil
jk = nil
kk = nil
mk = nil
nk = nil
ok = nil
pk = nil
qk = nil
rk = nil
sk = nil
tk = nil
uk = nil
vk = nil
wk = nil
xk = nil
yk = nil
zk = nil
Ak = nil
ak = nil
Bk = nil
bk = nil
Ck = nil
ck = nil
Dk = nil
Ek = nil
Fk = nil
Gk = nil
Hk = nil
Ik = nil
lk = nil
Jk = nil
Kk = nil
Lk = nil
Mk = nil
Nk = nil
Ok = nil
Pk = nil
Qk = nil
Rk = nil
Sk = nil
Tk = nil
Uk = nil
Vk = nil
Wk = nil
Xk = nil
Yk = nil
Zk = nil
dm = nil
em = nil
fm = nil
gm = nil
hm = nil
im = nil
jm = nil
km = nil
mm = nil
nm = nil
om = nil
pm = nil
qm = nil
rm = nil
sm = nil
um = nil
vm = nil
wm = nil
xm = nil
ym = nil
zm = nil
Am = nil
am = nil
Bm = nil
bm = nil
Cm = nil
cm = nil
Dm = nil
Em = nil
Fm = nil
Gm = nil
Hm = nil
Im = nil
lm = nil
Jm = nil
Km = nil
Lm = nil
Mm = nil
Nm = nil
Om = nil
Pm = nil
Qm = nil
Rm = nil
Sm = nil
Tm = nil
Um = nil
Vm = nil
Wm = nil
Xm = nil
Ym = nil
Zm = nil
dn = nil
en = nil
fn = nil
gn = nil
hn = nil
in_ = nil
jn = nil
kn = nil
mn = nil
nn = nil
on = nil
pn = nil
qn = nil
sn = nil
tn = nil
un = nil
vn = nil
wn = nil
xn = nil
yn = nil
zn = nil
An = nil
an = nil
Bn = nil
bn = nil
Cn = nil
cn = nil
Dn = nil
En = nil
Fn = nil
Gn = nil
Hn = nil
In = nil
Jn = nil
On = nil
Pn = nil
Qn = nil
Rn = nil
Sn = nil
Un = nil
Ao = nil
ao = nil
Bo = nil
bo = nil
Co = nil
co = nil
Do = nil
Eo = nil
Fo = nil
Go = nil
Ho = nil
Io = nil
lo = nil
Jo = nil
Ko = nil
Lo = nil
Mo = nil
No = nil
Oo = nil
Po = nil
Qo = nil
Ro = nil
So = nil
To = nil
Uo = nil
Vo = nil
Wo = nil
Yo = nil
Zo = nil
dp = nil
ep = nil
fp = nil
gp = nil
hp = nil
jp = nil
kp = nil
mp = nil
np = nil
op = nil
pp = nil
qp = nil
sp = nil
tp = nil
vp = nil
wp = nil
xp = nil
yp = nil
zp = nil
Ap = nil
ap = nil
Bp = nil
bp = nil
Cp = nil
cp = nil
Dp = nil
Ep = nil
Fp = nil
Gp = nil
Hp = nil
Ip = nil
lp = nil
Jp = nil
Kp = nil
Lp = nil
Mp = nil
Np = nil
Op = nil
Pp = nil
Qp = nil
Rp = nil
Sp = nil
Tp = nil
Up = nil
Vp = nil
Wp = nil
Xp = nil
Yp = nil
Zp = nil
dq = nil
eq = nil
fq = nil
gq = nil
hq = nil
iq = nil
jq = nil
kq = nil
mq = nil
nq = nil
oq = nil
pq = nil
qq = nil
rq = nil
sq = nil
tq = nil
uq = nil
vq = nil
xq = nil
Xq = nil
Yq = nil
Zq = nil
dr = nil
er = nil
fr = nil
gr = nil
hr = nil
ir = nil
jr = nil
kr = nil
mr = nil
nr = nil
pr = nil
qr = nil
rr = nil
sr = nil
tr = nil
ur = nil
vr = nil
wr = nil
xr = nil
yr = nil
zr = nil
Ar = nil
ar = nil
Br = nil
br = nil
Cr = nil
cr = nil
Dr = nil
Er = nil
Fr = nil
Gr = nil
Hr = nil
Ir = nil
lr = nil
Jr = nil
Kr = nil
Lr = nil
Mr = nil
Nr = nil
Pr = nil
Qr = nil
Rr = nil
Sr = nil
Tr = nil
Ur = nil
Vr = nil
Wr = nil
Xr = nil
Yr = nil
Zr = nil
ds = nil
es = nil
fs = nil
gs = nil
hs = nil
is = nil
js = nil
ks = nil
ms = nil
ns = nil
oss = nil
ps = nil
qs = nil
rs = nil
ss = nil
ts = nil
us = nil
vs = nil
cs = nil
Ds = nil
Es = nil
Fs = nil
Gs = nil
Hs = nil
Is = nil
ls = nil
Js = nil
Ks = nil
Ls = nil
udg_ZhengPaiWL = nil
Ns = nil
Os = nil
Ps = nil
Qs = nil
Rs = nil
LanXin = nil
XuanJin = nil
Ss = nil
Ts = nil
Us = nil
Vs = nil
Ws = nil
Xs = nil
Ys = nil
Zs = nil
ft = nil
gt = nil
ht = nil
jt = nil
kt = nil
nt = nil
ot = nil
ut = nil
vt = nil
xt = nil
yt = nil
zt = nil
At = nil
Bt = nil
Ct = nil
ct = nil
Dt = nil
Et = nil
Ft = nil
Gt = nil
Ht = nil
It = nil
Jt = nil
Kt = 0
Lt = 0
Mt = _array_(0)
Nt = _array_(0)
Ot = 0
Pt = _array_()
Qt = _array_()
Rt = _array_(0.0)
St = _array_(0.0)
Tt = _array_(0.0)
Ut = _array_(0.0)
Vt = _array_(0.0)
Wt = _array_(0.0)
Xt = _array_(0.0)
Yt = _array_(0.0)
Zt = _array_(0.0)
fu = 0.0
gu = 0.0
ju = nil
vipbanlv = _array_()

l__library_init = nil

--JASSHelper struct globals:
si__ModSpeed = 1
s__ModSpeed_tm = CreateTimer()
s__ModSpeed_instanceMaxCount = 0
s__ModSpeed_prev = _array_(0)
s__ModSpeed_next = _array_(0)
s__ModSpeed_u = _array_()
s__ModSpeed_lastX = _array_(0.0)
s__ModSpeed_lastY = _array_(0.0)
s__ModSpeed_speed = _array_(0.0)
s__ModSpeed_lead = _array_(false)
s__ModSpeed_x = nil
s__ModSpeed_y = nil
s__ModSpeed_dx = nil
s__ModSpeed_dy = nil
s__ModSpeed_dist = nil
s__ModSpeed_rate = nil
si__YDWEStringFormula__Inventory = 2
si__YDWEStringFormula__Inventory_F = 0
si__YDWEStringFormula__Inventory_I = 0
si__YDWEStringFormula__Inventory_V = _array_(0)
si__YDWEStringFormula__StringTable = 3
si__YDWEStringFormula__ItemIdMatrix = 4
s__YDWEStringFormula__ItemIdMatrix_Data = nil
s__YDWEStringFormula__ItemIdMatrix_Total = 1
s__YDWEStringFormula__ItemIdMatrix_itemId = _array_(0)
s__YDWEStringFormula__ItemIdMatrix_keyStr = _array_()
s__YDWEStringFormula__ItemIdMatrix_keyLen = _array_(0)
si__YDWEStringFormula__FormulaMatrix = 5
s__YDWEStringFormula__FormulaMatrix_Data = nil
s__YDWEStringFormula__FormulaMatrix_Total = 1
s__YDWEStringFormula__FormulaMatrix_formula = _array_()
s__YDWEStringFormula__FormulaMatrix_segmLen = _array_(0)
s__YDWEStringFormula__FormulaMatrix_model = _array_()
s__YDWEStringFormula__FormulaMatrix_message = _array_()
s__YDWEStringFormula__FormulaMatrix_chance = _array_(0)
s__YDWEStringFormula__FormulaMatrix_delete = _array_(false)
si__YDWEStringFormula__Sorting = 6
si__YDWEStringFormula__Sorting_F = 0
si__YDWEStringFormula__Sorting_I = 0
si__YDWEStringFormula__Sorting_V = _array_(0)
s___YDWEStringFormula__Sorting_stack = _array_(0)
s___YDWEStringFormula__Sorting_stack_size = 8
s__YDWEStringFormula__Sorting_stack = _array_(0)
s___YDWEStringFormula__Sorting_count = _array_(0)
s___YDWEStringFormula__Sorting_count_size = 8
s__YDWEStringFormula__Sorting_count = _array_(0)
s__YDWEStringFormula__Sorting_total = _array_(0)
s__YDWEStringFormula__Sorting_char = _array_()
si__YDWETimerPattern__YDVector3 = 9
si__YDWETimerPattern__YDVector3_F = 0
si__YDWETimerPattern__YDVector3_I = 0
si__YDWETimerPattern__YDVector3_V = _array_(0)
s__YDWETimerPattern__YDVector3_x = _array_(0.0)
s__YDWETimerPattern__YDVector3_y = _array_(0.0)
s__YDWETimerPattern__YDVector3_z = _array_(0.0)
si__YDWETimerPattern__Thread = 10
si__YDWETimerPattern__Thread_F = 0
si__YDWETimerPattern__Thread_I = 0
si__YDWETimerPattern__Thread_V = _array_(0)
s__YDWETimerPattern__Thread_des = _array_(0)
s__YDWETimerPattern__Thread_pos = _array_(0)
s__YDWETimerPattern__Thread_vel = _array_(0)
s__YDWETimerPattern__Thread_caster = _array_()
s__YDWETimerPattern__Thread_source = _array_()
s__YDWETimerPattern__Thread_target = _array_()
s__YDWETimerPattern__Thread_obj = _array_()
s__YDWETimerPattern__Thread_ac = _array_(0.0)
s__YDWETimerPattern__Thread_bc = _array_(0.0)
s__YDWETimerPattern__Thread_dist = _array_(0.0)
s__YDWETimerPattern__Thread_step = _array_(0.0)
s__YDWETimerPattern__Thread_amount = _array_(0.0)
s__YDWETimerPattern__Thread_switch = _array_(0)
s__YDWETimerPattern__Thread_follow = _array_(0)
s__YDWETimerPattern__Thread_unitid = _array_(0)
s__YDWETimerPattern__Thread_skills = _array_(0)
s__YDWETimerPattern__Thread_order = _array_(0)
s__YDWETimerPattern__Thread_level = _array_(0)
s__YDWETimerPattern__Thread_dsfx = _array_()
s__YDWETimerPattern__Thread_gsfx = _array_()
s__YDWETimerPattern__Thread_wsfx = _array_()
s__YDWETimerPattern__Thread_part = _array_()
s__YDWETimerPattern__Thread_recycle = _array_(false)
s__YDWETimerPattern__Thread_killdest = _array_(false)
s__YDWETimerPattern__Thread_volume = _array_(false)
s__YDWETimerPattern__Thread_g = _array_()
s__YDWETimerPattern__Thread_t = _array_()
si__YDWETimerPattern__Parabola = 11
si__YDWETimerPattern__Linear = 12
si__YDWETimerPattern__Deceleration = 13
si__DaPei = 14
si__DaPei_F = 0
si__DaPei_I = 0
si__DaPei_V = _array_(0)
s__DaPei_wugongid = _array_(0)
s__DaPei_dapeixiaoguo = _array_(0)
s__DaPei_shxishu = _array_(0.0)
s__DaPei_r = _array_(0.0)
si__ZiZhiWuGong = 15
si__ZiZhiWuGong_F = 0
si__ZiZhiWuGong_I = 0
si__ZiZhiWuGong_V = _array_(0)
s__ZiZhiWuGong_xishu = _array_(0)
s__ZiZhiWuGong_range = _array_(0)
s__ZiZhiWuGong_texiao = _array_(0)
s__ZiZhiWuGong_dapeishu = _array_(0)
s__ZiZhiWuGong_scrate = _array_(0)
s__ZiZhiWuGong_name = _array_()
si__ShopWeapon = 16
si__ShopWeapon_F = 0
si__ShopWeapon_I = 0
si__ShopWeapon_V = _array_(0)
s__ShopWeapon_min_xiuxing = _array_(0)
s__ShopWeapon_id = _array_(0)
s__ShopWeapon_zhuanshu = _array_(false)
si__YDWEStringFormula__Inventory_type = _array_(0)
st__YDWEStringFormula__Inventory_onDestroy = _array_()
si__YDWETimerPattern__Thread_type = _array_(0)
st__YDWETimerPattern__Thread_onDestroy = _array_()
st__YDWEStringFormula__Sorting_onDestroy = nil
st__DaPei_onDestroy = nil
st__DaPei_XiaoGuoShuoMing = nil
st__ZiZhiWuGong_create = nil
st__ZiZhiWuGong_onDestroy = nil
st__ShopWeapon_onDestroy = nil
st__ShopWeapon_PickUpWeapon = nil
st___prototype16 = _array_()
f__arg_integer1 = nil
f__arg_integer2 = nil
f__arg_integer3 = nil
f__arg_integer4 = nil
f__arg_integer5 = nil
f__arg_unit1 = nil
f__arg_item1 = nil
f__arg_real1 = nil
f__arg_this = nil
f__result_string = nil
f__result_integer = nil


DzAPI_Map_SaveServerValue = _native_'DzAPI_Map_SaveServerValue'
DzAPI_Map_GetServerValue = _native_'DzAPI_Map_GetServerValue'
DzAPI_Map_Ladder_SetStat = _native_'DzAPI_Map_Ladder_SetStat'
DzAPI_Map_IsRPGLadder = _native_'DzAPI_Map_IsRPGLadder'
DzAPI_Map_GetGameStartTime = _native_'DzAPI_Map_GetGameStartTime'
DzAPI_Map_Stat_SetStat = _native_'DzAPI_Map_Stat_SetStat'
DzAPI_Map_GetMatchType = _native_'DzAPI_Map_GetMatchType'
DzAPI_Map_Ladder_SetPlayerStat = _native_'DzAPI_Map_Ladder_SetPlayerStat'
DzAPI_Map_GetServerValueErrorCode = _native_'DzAPI_Map_GetServerValueErrorCode'
DzAPI_Map_GetLadderLevel = _native_'DzAPI_Map_GetLadderLevel'
DzAPI_Map_IsRedVIP = _native_'DzAPI_Map_IsRedVIP'
DzAPI_Map_IsBlueVIP = _native_'DzAPI_Map_IsBlueVIP'
DzAPI_Map_GetLadderRank = _native_'DzAPI_Map_GetLadderRank'
DzAPI_Map_GetMapLevelRank = _native_'DzAPI_Map_GetMapLevelRank'
DzAPI_Map_GetGuildName = _native_'DzAPI_Map_GetGuildName'
DzAPI_Map_GetGuildRole = _native_'DzAPI_Map_GetGuildRole'
DzAPI_Map_IsRPGLobby = _native_'DzAPI_Map_IsRPGLobby'
DzAPI_Map_GetMapLevel = _native_'DzAPI_Map_GetMapLevel'
DzAPI_Map_MissionComplete = _native_'DzAPI_Map_MissionComplete'
DzAPI_Map_GetActivityData = _native_'DzAPI_Map_GetActivityData'
DzAPI_Map_GetMapConfig = _native_'DzAPI_Map_GetMapConfig'
DzAPI_Map_HasMallItem = _native_'DzAPI_Map_HasMallItem'
DzAPI_Map_SavePublicArchive = _native_'DzAPI_Map_SavePublicArchive'
DzAPI_Map_GetPublicArchive = _native_'DzAPI_Map_GetPublicArchive'
DzAPI_Map_UseConsumablesItem = _native_'DzAPI_Map_UseConsumablesItem'
DzAPI_Map_OrpgTrigger = _native_'DzAPI_Map_OrpgTrigger'
DzAPI_Map_GetServerArchiveDrop = _native_'DzAPI_Map_GetServerArchiveDrop'
DzAPI_Map_GetServerArchiveEquip = _native_'DzAPI_Map_GetServerArchiveEquip'


--Generated method caller for ShopWeapon.onDestroy
function sc__ShopWeapon_onDestroy(this)
	s__ShopWeapon_min_xiuxing[this] = 0
	s__ShopWeapon_id[this] = 0
end

--Generated method caller for ShopWeapon.PickUpWeapon
function sc__ShopWeapon_PickUpWeapon(this, u, it)
	f__arg_this = this
	f__arg_unit1 = u
	f__arg_item1 = it
	TriggerEvaluate(st__ShopWeapon_PickUpWeapon)
end

--Generated allocator of ShopWeapon
function s__ShopWeapon__allocate()
	local this = si__ShopWeapon_F
	if this ~= 0 then
		si__ShopWeapon_F = si__ShopWeapon_V[this]
	else
		si__ShopWeapon_I = si__ShopWeapon_I + 1
		this = si__ShopWeapon_I
	end
	if this > 8190 then
		return 0
	end

	s__ShopWeapon_zhuanshu[this] = false
	si__ShopWeapon_V[this] = -1
	return this
end

--Generated destructor of ShopWeapon
function sc__ShopWeapon_deallocate(this)
	if this == nil then
		return
	elseif si__ShopWeapon_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__ShopWeapon_onDestroy)
	si__ShopWeapon_V[this] = si__ShopWeapon_F
	si__ShopWeapon_F = this
end

--Generated method caller for ZiZhiWuGong.create
function sc__ZiZhiWuGong_create(xishu, range, texiao, dapeishu, scrate)
	f__arg_integer1 = xishu
	f__arg_integer2 = range
	f__arg_integer3 = texiao
	f__arg_integer4 = dapeishu
	f__arg_integer5 = scrate
	TriggerEvaluate(st__ZiZhiWuGong_create)
	return f__result_integer
end

--Generated method caller for ZiZhiWuGong.onDestroy
function sc__ZiZhiWuGong_onDestroy(this)
	s__ZiZhiWuGong_xishu[this] = 0
	s__ZiZhiWuGong_range[this] = 0
	s__ZiZhiWuGong_texiao[this] = 0
	s__ZiZhiWuGong_dapeishu[this] = 0
	s__ZiZhiWuGong_scrate[this] = 0
end

--Generated allocator of ZiZhiWuGong
function s__ZiZhiWuGong__allocate()
	local this = si__ZiZhiWuGong_F
	if this ~= 0 then
		si__ZiZhiWuGong_F = si__ZiZhiWuGong_V[this]
	else
		si__ZiZhiWuGong_I = si__ZiZhiWuGong_I + 1
		this = si__ZiZhiWuGong_I
	end
	if this > 8190 then
		return 0
	end

	s__ZiZhiWuGong_name[this] = "自创武功"
	si__ZiZhiWuGong_V[this] = -1
	return this
end

--Generated destructor of ZiZhiWuGong
function sc__ZiZhiWuGong_deallocate(this)
	if this == nil then
		return
	elseif si__ZiZhiWuGong_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__ZiZhiWuGong_onDestroy)
	si__ZiZhiWuGong_V[this] = si__ZiZhiWuGong_F
	si__ZiZhiWuGong_F = this
end

--Generated method caller for DaPei.onDestroy
function sc__DaPei_onDestroy(this)
	s__DaPei_wugongid[this] = 0
	s__DaPei_dapeixiaoguo[this] = 0
	s__DaPei_shxishu[this] = 0
end

--Generated method caller for DaPei.XiaoGuoShuoMing
function sc__DaPei_XiaoGuoShuoMing(this)
	local s = ""
	s = (s or "") .. "+" .. (GetAbilityName(s__DaPei_wugongid[this]) or "") .. "："
	if s__DaPei_dapeixiaoguo[this] ~= 2 then
		s = (s or "") .. "伤害+" .. (I2S(R2I(s__DaPei_r[this] * 100)) or "") .. "%"
	else
		if R2I(s__DaPei_r[this]) == 1 then
			s = (s or "") .. "几率造成内伤"
		elseif R2I(s__DaPei_r[this]) == 2 then
			s = (s or "") .. "几率造成走火入魔"
		elseif R2I(s__DaPei_r[this]) == 3 then
			s = (s or "") .. "几率造成流血"
		elseif R2I(s__DaPei_r[this]) == 4 then
			s = (s or "") .. "几率造成混乱"
		elseif R2I(s__DaPei_r[this]) == 5 then
			s = (s or "") .. "几率造成昏迷"
		elseif R2I(s__DaPei_r[this]) == 6 then
			s = (s or "") .. "几率造成重伤"
		elseif R2I(s__DaPei_r[this]) == 7 then
			s = (s or "") .. "几率造成血流不止"
		elseif R2I(s__DaPei_r[this]) == 8 then
			s = (s or "") .. "几率造成麻痹"
		elseif R2I(s__DaPei_r[this]) == 9 then
			s = (s or "") .. "几率造成破防"
		elseif R2I(s__DaPei_r[this]) == 10 then
			s = (s or "") .. "几率造成神经错乱"
		elseif R2I(s__DaPei_r[this]) == 11 then
			s = (s or "") .. "几率造成封穴"
		elseif R2I(s__DaPei_r[this]) == 12 then
			s = (s or "") .. "几率造成穴位全封"
		elseif R2I(s__DaPei_r[this]) == 13 then
			s = (s or "") .. "几率造成中毒"
		end
	end
	return s
end

--Generated allocator of DaPei
function s__DaPei__allocate()
	local this = si__DaPei_F
	if this ~= 0 then
		si__DaPei_F = si__DaPei_V[this]
	else
		si__DaPei_I = si__DaPei_I + 1
		this = si__DaPei_I
	end
	if this > 8190 then
		return 0
	end

	s__DaPei_shxishu[this] = 0.0
	si__DaPei_V[this] = -1
	return this
end

--Generated destructor of DaPei
function sc__DaPei_deallocate(this)
	if this == nil then
		return
	elseif si__DaPei_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__DaPei_onDestroy)
	si__DaPei_V[this] = si__DaPei_F
	si__DaPei_F = this
end

--Generated method caller for YDWEStringFormula__Inventory.onDestroy
function sc__YDWEStringFormula__Inventory_onDestroy(this)
	f__arg_this = this
	TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[2])
end

--Generated allocator of YDWEStringFormula__Inventory
function s__YDWEStringFormula__Inventory__allocate()
	local this = si__YDWEStringFormula__Inventory_F
	if this ~= 0 then
		si__YDWEStringFormula__Inventory_F = si__YDWEStringFormula__Inventory_V[this]
	else
		si__YDWEStringFormula__Inventory_I = si__YDWEStringFormula__Inventory_I + 1
		this = si__YDWEStringFormula__Inventory_I
	end
	if this > 8190 then
		return 0
	end

	si__YDWEStringFormula__Inventory_type[this] = 2
	si__YDWEStringFormula__Inventory_V[this] = -1
	return this
end

--Generated destructor of YDWEStringFormula__Inventory
function sc__YDWEStringFormula__Inventory_deallocate(this)
	if this == nil then
		return
	elseif si__YDWEStringFormula__Inventory_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[si__YDWEStringFormula__Inventory_type[this]])
	si__YDWEStringFormula__Inventory_V[this] = si__YDWEStringFormula__Inventory_F
	si__YDWEStringFormula__Inventory_F = this
end

--Generated allocator of YDWEStringFormula__StringTable
function s__YDWEStringFormula__StringTable__allocate()
	local this = s__YDWEStringFormula__Inventory__allocate()
	local kthis
	if this == 0 then
		return 0
	end
	si__YDWEStringFormula__Inventory_type[this] = 3
	kthis = this

	return this
end


--Generated method caller for YDWETimerPattern__Thread.onDestroy
function sc__YDWETimerPattern__Thread_onDestroy(this)
	f__arg_this = this
	TriggerEvaluate(st__YDWETimerPattern__Thread_onDestroy[10])
end

--Generated allocator of YDWETimerPattern__Thread
function s__YDWETimerPattern__Thread__allocate()
	local this = si__YDWETimerPattern__Thread_F
	if this ~= 0 then
		si__YDWETimerPattern__Thread_F = si__YDWETimerPattern__Thread_V[this]
	else
		si__YDWETimerPattern__Thread_I = si__YDWETimerPattern__Thread_I + 1
		this = si__YDWETimerPattern__Thread_I
	end
	if this > 8190 then
		return 0
	end

	si__YDWETimerPattern__Thread_type[this] = 10
	si__YDWETimerPattern__Thread_V[this] = -1
	return this
end

--Generated destructor of YDWETimerPattern__Thread
function sc__YDWETimerPattern__Thread_deallocate(this)
	if this == nil then
		return
	elseif si__YDWETimerPattern__Thread_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__YDWETimerPattern__Thread_onDestroy[si__YDWETimerPattern__Thread_type[this]])
	si__YDWETimerPattern__Thread_V[this] = si__YDWETimerPattern__Thread_F
	si__YDWETimerPattern__Thread_F = this
end

--Generated allocator of YDWETimerPattern__YDVector3
function s__YDWETimerPattern__YDVector3__allocate()
	local this = si__YDWETimerPattern__YDVector3_F
	if this ~= 0 then
		si__YDWETimerPattern__YDVector3_F = si__YDWETimerPattern__YDVector3_V[this]
	else
		si__YDWETimerPattern__YDVector3_I = si__YDWETimerPattern__YDVector3_I + 1
		this = si__YDWETimerPattern__YDVector3_I
	end
	if this > 8190 then
		return 0
	end

	si__YDWETimerPattern__YDVector3_V[this] = -1
	return this
end

--Generated destructor of YDWETimerPattern__YDVector3
function s__YDWETimerPattern__YDVector3_deallocate(this)
	if this == nil then
		return
	elseif si__YDWETimerPattern__YDVector3_V[this] ~= -1 then
		return
	end
	si__YDWETimerPattern__YDVector3_V[this] = si__YDWETimerPattern__YDVector3_F
	si__YDWETimerPattern__YDVector3_F = this
end

--Generated method caller for YDWEStringFormula__Sorting.onDestroy
function sc__YDWEStringFormula__Sorting_onDestroy(this)
	local i = 0
	for _ in _loop_() do
		if i == s___YDWEStringFormula__Sorting_stack_size then break end
		s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = 0
		s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = 0
		i = i + 1
	end
	s__YDWEStringFormula__Sorting_char[this] = ""
end

--Generated allocator of YDWEStringFormula__Sorting
function s__YDWEStringFormula__Sorting__allocate()
	local this = si__YDWEStringFormula__Sorting_F
	if this ~= 0 then
		si__YDWEStringFormula__Sorting_F = si__YDWEStringFormula__Sorting_V[this]
	else
		si__YDWEStringFormula__Sorting_I = si__YDWEStringFormula__Sorting_I + 1
		this = si__YDWEStringFormula__Sorting_I
	end
	if this > 1022 then
		return 0
	end
	s__YDWEStringFormula__Sorting_stack[this] = (this - 1) * 8
	s__YDWEStringFormula__Sorting_count[this] = (this - 1) * 8
	s__YDWEStringFormula__Sorting_total[this] = 7
	si__YDWEStringFormula__Sorting_V[this] = -1
	return this
end

--Generated destructor of YDWEStringFormula__Sorting
function sc__YDWEStringFormula__Sorting_deallocate(this)
	if this == nil then
		return
	elseif si__YDWEStringFormula__Sorting_V[this] ~= -1 then
		return
	end
	f__arg_this = this
	TriggerEvaluate(st__YDWEStringFormula__Sorting_onDestroy)
	si__YDWEStringFormula__Sorting_V[this] = si__YDWEStringFormula__Sorting_F
	si__YDWEStringFormula__Sorting_F = this
end

--Generated allocator of YDWETimerPattern__Deceleration
function s__YDWETimerPattern__Deceleration__allocate()
	local this = s__YDWETimerPattern__Thread__allocate()
	local kthis
	if this == 0 then
		return 0
	end
	si__YDWETimerPattern__Thread_type[this] = 13
	kthis = this

	return this
end


--Generated allocator of YDWETimerPattern__Parabola
function s__YDWETimerPattern__Parabola__allocate()
	local this = s__YDWETimerPattern__Thread__allocate()
	local kthis
	if this == 0 then
		return 0
	end
	si__YDWETimerPattern__Thread_type[this] = 11
	kthis = this

	return this
end


--Generated allocator of YDWETimerPattern__Linear
function s__YDWETimerPattern__Linear__allocate()
	local this = s__YDWETimerPattern__Thread__allocate()
	local kthis
	if this == 0 then
		return 0
	end
	si__YDWETimerPattern__Thread_type[this] = 12
	kthis = this

	return this
end

function sc___prototype16_execute(i, a1, a2)
	f__arg_unit1 = a1
	f__arg_real1 = a2

	TriggerExecute(st___prototype16[i])
end
function sc___prototype16_evaluate(i, a1, a2)
	f__arg_unit1 = a1
	f__arg_real1 = a2

	TriggerEvaluate(st___prototype16[i])

end
function h__SetUnitMoveSpeed(a0, a1)
	--hook: SetUnitMoveSpeedEx
	sc___prototype16_evaluate(1, a0, a1)
	SetUnitMoveSpeed(a0, a1)
end

--library DzAPI:




























function GetPlayerServerValueSuccess(whichPlayer)
	if DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 then
		return true
	else
		return false
	end
end
function DzAPI_Map_StoreInteger(whichPlayer, key, value)
	key = "I" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredInteger(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreReal(whichPlayer, key, value)
	key = "R" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredReal(whichPlayer, key)
	local value
	key = "R" .. (key or "")
	value = S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreBoolean(whichPlayer, key, value)
	key = "B" .. (key or "")
	if value then
		DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
	else
		DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
	end
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredBoolean(whichPlayer, key)
	local value
	key = "B" .. (key or "")
	key = DzAPI_Map_GetServerValue(whichPlayer, key)
	if key == "1" then
		value = true
	else
		value = false
	end
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreString(whichPlayer, key, value)
	key = "S" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, value)
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredString(whichPlayer, key)
	return DzAPI_Map_GetServerValue(whichPlayer, "S" .. (key or ""))
end
function DzAPI_Map_GetStoredUnitType(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_GetStoredAbilityId(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_FlushStoredMission(whichPlayer, key)
	DzAPI_Map_SaveServerValue(whichPlayer, key, nil)
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_Ladder_SubmitIntegerData(whichPlayer, key, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
end
function DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, value)
	if value == 0 then
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	end
end
function DzAPI_Map_Stat_SubmitUnitData(whichPlayer, key, value)
	DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, GetUnitTypeId(value))
end
function DzAPI_Map_Ladder_SubmitAblityIdData(whichPlayer, key, value)
	if value == 0 then
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	end
end
function DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, value)
	local l__S
	if value == 0 then
		l__S = "0"
	else
		l__S = I2S(value)
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, l__S)
	end
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
	l__S = nil
	whichPlayer = nil
end
function DzAPI_Map_Ladder_SubmitItemData(whichPlayer, key, value)
	DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, GetItemTypeId(value))
end
function DzAPI_Map_Ladder_SubmitBooleanData(whichPlayer, key, value)
	if value then
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
	end
end
function DzAPI_Map_Ladder_SubmitTitle(whichPlayer, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
end
function DzAPI_Map_Ladder_SubmitPlayerRank(whichPlayer, value)
	DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
end
function DzAPI_Map_Ladder_SubmitPlayerExtraExp(whichPlayer, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
end

--library DzAPI ends
--library MaxSpeed:
--private:
--temp variables







--Implemented from module Init:





function s__ModSpeed_destroy(this)
	s__ModSpeed_speed[this] = 0.0
	if s__ModSpeed_next[this] ~= 0 then
		s__ModSpeed_prev[s__ModSpeed_next[this]] = s__ModSpeed_prev[this]
	end
	s__ModSpeed_next[s__ModSpeed_prev[this]] = s__ModSpeed_next[this]
	s__ModSpeed_prev[this] = s__ModSpeed_prev[0]
	s__ModSpeed_prev[0] = this
	if s__ModSpeed_next[0] == 0 then
		PauseTimer(s__ModSpeed_tm)



	end







end
function s__ModSpeed__get_moveFilter(this)
	return GetUnitAbilityLevel(s__ModSpeed_u[this], 1112757326) < 1 and GetUnitAbilityLevel(s__ModSpeed_u[this], 1112560453) < 1 and GetUnitMoveSpeed(s__ModSpeed_u[this]) > 521.0 and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
end
function s__ModSpeed_move(this)
	if not s__ModSpeed__get_moveFilter(this) then
		return
	end
	s__ModSpeed_x = GetUnitX(s__ModSpeed_u[this])
	s__ModSpeed_y = GetUnitY(s__ModSpeed_u[this])
	s__ModSpeed_dx = s__ModSpeed_x - s__ModSpeed_lastX[this]
	s__ModSpeed_dy = s__ModSpeed_y - s__ModSpeed_lastY[this]
	s__ModSpeed_lastX[this] = s__ModSpeed_x
	s__ModSpeed_lastY[this] = s__ModSpeed_y
	s__ModSpeed_dist = SquareRoot(s__ModSpeed_dx * s__ModSpeed_dx + s__ModSpeed_dy * s__ModSpeed_dy) / MaxSpeed___PERIOD
	if s__ModSpeed_dist >= MaxSpeed___MIN_SPEED and s__ModSpeed_dist <= MaxSpeed___MAX_SPEED then
		s__ModSpeed_rate = (s__ModSpeed_speed[this] - 522.0) / s__ModSpeed_dist
		s__ModSpeed_lastX[this] = s__ModSpeed_x + s__ModSpeed_dx * s__ModSpeed_rate
		s__ModSpeed_lastY[this] = s__ModSpeed_y + s__ModSpeed_dy * s__ModSpeed_rate
		SetUnitX(s__ModSpeed_u[this], s__ModSpeed_lastX[this])
		SetUnitY(s__ModSpeed_u[this], s__ModSpeed_lastY[this])



	end
end
function s__ModSpeed_iterate()
	local this = 0
	for _ in _loop_() do
		this = s__ModSpeed_next[this]
		if this == 0 then break end
		if GetWidgetLife(s__ModSpeed_u[this]) < 0.405 then
			s__ModSpeed_destroy(this)
		else
			s__ModSpeed_move(this)
		end
	end
end
--public:
function s__ModSpeed_getInstance(u)
	local this = 0











	for _ in _loop_() do
		this = s__ModSpeed_next[this]
		if this == 0 then break end
		if s__ModSpeed_u[this] == u then
			return this
		end
	end

	return 0
end
function s__ModSpeed_setUnitLed(u, b)
	local this = s__ModSpeed_getInstance(u)
	if this > 0 then
		s__ModSpeed_lead[this] = b
	end
end
function s__ModSpeed_getSpeed(u)
	local this = s__ModSpeed_getInstance(u)
	if this > 0 and GetUnitMoveSpeed(u) > 521.0 then
		return s__ModSpeed_speed[this]
	end
	return GetUnitMoveSpeed(u)
end
function s__ModSpeed_setSpeed(u, amount)
	local this
	if u == nil or GetWidgetLife(u) < 0.405 then
		return
	end
	this = s__ModSpeed_getInstance(u)
	if amount < 523.0 then
		if this > 0 then
			s__ModSpeed_destroy(this)
		end
		return
	elseif this == 0 then
		if s__ModSpeed_prev[0] == 0 then
			s__ModSpeed_instanceMaxCount = s__ModSpeed_instanceMaxCount + 1
			this = s__ModSpeed_instanceMaxCount
		else
			this = s__ModSpeed_prev[0]
			s__ModSpeed_prev[0] = s__ModSpeed_prev[s__ModSpeed_prev[0]]
		end
		if s__ModSpeed_next[0] == 0 then
			TimerStart(s__ModSpeed_tm, MaxSpeed___PERIOD, true, s__ModSpeed_iterate)



		else
			s__ModSpeed_prev[s__ModSpeed_next[0]] = this
		end
		s__ModSpeed_next[this] = s__ModSpeed_next[0]
		s__ModSpeed_next[0] = this
		s__ModSpeed_prev[this] = 0
		s__ModSpeed_u[this] = u







	end
	amount = RMinBJ(amount, MaxSpeed___MAX_SPEED)
	s__ModSpeed_lastX[this] = GetUnitX(u)
	s__ModSpeed_lastY[this] = GetUnitY(u)
	s__ModSpeed_speed[this] = amount
end
--interface:
function SetUnitLed(u, b)
	s__ModSpeed_setUnitLed(u, b)
end
function GetUnitMoveSpeedEx(u)
	return s__ModSpeed_getSpeed(u)
end
function SetUnitMoveSpeedEx(u, speed)
	s__ModSpeed_setSpeed(u, speed)
end
--processed hook:      hook SetUnitMoveSpeed SetUnitMoveSpeedEx

--library MaxSpeed ends
--library UniMissileSystem3D:
-- 计算两点间的距离
function UniMissileSystem3D__DistanceBetweenXY(x1, x2, y1, y2)
	return SquareRoot((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end
-- 计算两点间的角度（角度制）
function UniMissileSystem3D__AngleBetweenXY(x1, x2, y1, y2)
	return bj_RADTODEG * Atan2(y2 - y1, x2 - x1)
end
-- 计算两个单位间的角度
function UniMissileSystem3D__GetAngleBetweenUnits(l__A, l__B)
	return Atan2(GetUnitY(l__B) - GetUnitY(l__A), GetUnitX(l__B) - GetUnitX(l__A))
end
-- 计算两个单位间的距离
function UniMissileSystem3D__DistanceBetweenUnits(l__A, l__B)
	local x1 = GetUnitX(l__A)
	local x2 = GetUnitX(l__B)
	local y1 = GetUnitY(l__A)
	local y2 = GetUnitY(l__B)
	return SquareRoot((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end
-- 计算加速的时间
-- s = v0 * t + 1/2 * a * t * t
-- a * t * t  + 2 * v0 * t - 2 * s = 0
-- time1 = (- 2 * v0 + SquareRoot ( 4 * v0 *v0 + 8 * a * s)) / (2 * a)
function UniMissileSystem3D__GetAcceleratedTime(dis, originspeed, accel)
	local time1 = 0.0
	local time2 = 0.0
	time1 = (-1 * originspeed + SquareRoot(Pow(originspeed, 2.0) + 2 * accel * dis)) / accel
	time2 = (-1 * originspeed - SquareRoot(Pow(originspeed, 2.0) + 2 * accel * dis)) / accel
	if time1 == 0.0 then
		time1 = 0.01
	end
	if time2 == 0.0 then
		time2 = 0.01
	end
	if time1 > time2 then
		return time1
	end
	return time2
end
-- 登记弹幕
function UniMissileSystem3D__MRegister(missile)
	UnitAddAbility(missile, 1098015094) -- 风暴之鸦
	UnitRemoveAbility(missile, 1098015094)
	SetUnitPosition(missile, GetUnitX(missile), GetUnitY(missile))
	SetUnitAnimationByIndex(missile, 90)
end
-- 将i从栈中移除，使用栈顶元素补充i
function UniMissileSystem3D__MPop(i)
	if GetUnitState(UniMissileSystem3D__MU[i], UNIT_STATE_LIFE) > 0.4 then
		KillUnit(UniMissileSystem3D__MU[i])
	end
	DestroyEffect(UniMissileSystem3D__EFL[i])
	UniMissileSystem3D__MU[i] = UniMissileSystem3D__MU[UniMissileSystem3D__Top]
	UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[UniMissileSystem3D__Top]
	UniMissileSystem3D__RA[i] = UniMissileSystem3D__RA[UniMissileSystem3D__Top]
	UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[UniMissileSystem3D__Top]
	UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[UniMissileSystem3D__Top]
	UniMissileSystem3D__AN[i] = UniMissileSystem3D__AN[UniMissileSystem3D__Top]
	UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[UniMissileSystem3D__Top]
	UniMissileSystem3D__HEMax[i] = UniMissileSystem3D__HEMax[UniMissileSystem3D__Top]
	UniMissileSystem3D__US[i] = UniMissileSystem3D__US[UniMissileSystem3D__Top]
	UniMissileSystem3D__ARC[i] = UniMissileSystem3D__ARC[UniMissileSystem3D__Top]
	UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[UniMissileSystem3D__Top]
	UniMissileSystem3D__EF[i] = UniMissileSystem3D__EF[UniMissileSystem3D__Top]
	UniMissileSystem3D__EFL[i] = UniMissileSystem3D__EFL[UniMissileSystem3D__Top]
	UniMissileSystem3D__SH[i] = UniMissileSystem3D__SH[UniMissileSystem3D__Top]
	UniMissileSystem3D__MGra[i] = UniMissileSystem3D__MGra[UniMissileSystem3D__Top]
	UniMissileSystem3D__LOC[i] = UniMissileSystem3D__LOC[UniMissileSystem3D__Top]
	UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[UniMissileSystem3D__Top]
	UniMissileSystem3D__LT[i] = UniMissileSystem3D__LT[UniMissileSystem3D__Top]
	UniMissileSystem3D__SZ[i] = UniMissileSystem3D__SZ[UniMissileSystem3D__Top]
	UniMissileSystem3D__RI[i] = UniMissileSystem3D__RI[UniMissileSystem3D__Top]
	UniMissileSystem3D__R01[i] = UniMissileSystem3D__R01[UniMissileSystem3D__Top]
	UniMissileSystem3D__R02[i] = UniMissileSystem3D__R02[UniMissileSystem3D__Top]
	UniMissileSystem3D__MT[i] = UniMissileSystem3D__MT[UniMissileSystem3D__Top]
	UniMissileSystem3D__OH[i] = UniMissileSystem3D__OH[UniMissileSystem3D__Top]
	UniMissileSystem3D__OS[i] = UniMissileSystem3D__OS[UniMissileSystem3D__Top]
	UniMissileSystem3D__OF[i] = UniMissileSystem3D__OF[UniMissileSystem3D__Top]
	UniMissileSystem3D__ACC[i] = UniMissileSystem3D__ACC[UniMissileSystem3D__Top]
	UniMissileSystem3D__MaxS[i] = UniMissileSystem3D__MaxS[UniMissileSystem3D__Top]
	UniMissileSystem3D__MKs[i] = UniMissileSystem3D__MKs[UniMissileSystem3D__Top]
	UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[UniMissileSystem3D__Top]
	UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastX[i] = UniMissileSystem3D__LastX[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastY[i] = UniMissileSystem3D__LastY[UniMissileSystem3D__Top]
	UniMissileSystem3D__IN[i] = UniMissileSystem3D__IN[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastOwner[i] = UniMissileSystem3D__LastOwner[UniMissileSystem3D__Top]
	UniMissileSystem3D__MU[UniMissileSystem3D__Top] = nil
	UniMissileSystem3D__MT[UniMissileSystem3D__Top] = nil
	UniMissileSystem3D__Top = UniMissileSystem3D__Top - 1
end
-- 判断是否越界
function UniMissileSystem3D__MLimit(x, y)
	if x > UniMissileSystem3D__map_max_X or x < UniMissileSystem3D__map_min_X or y > UniMissileSystem3D__map_max_Y or y < UniMissileSystem3D__map_min_Y then --边界判定
		return true
	else
		return false
	end
end
-- 弹幕循环
function UniMissileSystem3D__MLoop()
	local i = UniMissileSystem3D__Top
	local x = _array_(0.0)
	local y = _array_(0.0)
	local zLoc = _array_(0.0)
	local h = 0.0
	local h2 = 0.0
	local time = 0.0
	local ttime = 0.0
	local ang = 0.0
	local height = 0.0
	local lastheight = 0.0
	local addxy = 0.0
	local addz = 0.0
	local anglez = 0.0
	local tanZ = 0.0
	local addh = 0.0
	local udis = 0.0
	local targetheight = 0.0
	local aniI = 0
	if MissileTimerPause == true then
		return
	end
	for _ in _loop_() do
		if i < 0 then break end
		addh = 0.0
		udis = 0.0
		x[1] = GetUnitX(UniMissileSystem3D__MU[i])
		y[1] = GetUnitY(UniMissileSystem3D__MU[i])
		height = GetUnitFlyHeight(UniMissileSystem3D__MU[i])
		if UniMissileSystem3D__DI[i] <= 0.0 or GetUnitState(UniMissileSystem3D__MU[i], UNIT_STATE_LIFE) < 0.4 or height <= 0.1 or UniMissileSystem3D__HP[i] <= 0.0 or UniMissileSystem3D__MLimit(x[1], y[1]) == true or height >= 9999.1 then
			UniMissileSystem3D__MPop(i)
		else
			if UniMissileSystem3D__MT[i] ~= nil then
				UniMissileSystem3D__AN[i] = UniMissileSystem3D__AngleBetweenXY(x[1], GetUnitX(UniMissileSystem3D__MT[i]), y[1], GetUnitY(UniMissileSystem3D__MT[i]))
				ang = UniMissileSystem3D__AN[i] * bj_DEGTORAD
				if UniMissileSystem3D__IN[i] == 0 then
					UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SP[i] * Cos(ang)
					UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SP[i] * Sin(ang)
				else
					ang = ang + UniMissileSystem3D__OF[i]
					UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Cos(ang)
					UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Sin(ang)
				end
				if IsUnitType(UniMissileSystem3D__MT[i], UNIT_TYPE_DEAD) == true then
					UniMissileSystem3D__MT[i] = nil
				end
				udis = UniMissileSystem3D__DistanceBetweenUnits(UniMissileSystem3D__MT[i], UniMissileSystem3D__MU[i]) / 100.0
				if udis == 0.0 then
					udis = 0.01
				end
				targetheight = GetUnitFlyHeight(UniMissileSystem3D__MT[i])
				if RAbsBJ(height - targetheight) > UniMissileSystem3D__RA[i] then
					if targetheight > height then
						addh = RAbsBJ(UniMissileSystem3D__SP[i]) / udis
						if addh + height > targetheight then
							addh = addh / 10.0
							SetUnitFlyHeight(UniMissileSystem3D__MU[i], targetheight, 0.0)
							height = targetheight
						end
					elseif targetheight < height then
						addh = RAbsBJ(UniMissileSystem3D__SP[i]) * -1.0 / udis
						if addh + height < targetheight then
							SetUnitFlyHeight(UniMissileSystem3D__MU[i], targetheight, 0.0)
							height = targetheight
						end
					end
				end
			else
				ang = UniMissileSystem3D__AN[i] * bj_DEGTORAD
				UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SP[i] * Cos(ang)
				UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SP[i] * Sin(ang)
				if UniMissileSystem3D__LOC[i] == 0.0 then
					UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[i] + UniMissileSystem3D__ACC[i]
				else
					if UniMissileSystem3D__SP[i] <= UniMissileSystem3D__MaxS[i] then
						UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[i] + UniMissileSystem3D__ACC[i]
					else
						UniMissileSystem3D__SP[i] = UniMissileSystem3D__MaxS[i]
					end
				end
			end
			x[2] = x[1] + UniMissileSystem3D__SPX[i]
			y[2] = y[1] + UniMissileSystem3D__SPY[i]
			UniMissileSystem3D__MLoc[1] = Location(x[1], y[1])
			UniMissileSystem3D__MLoc[2] = Location(x[2], y[2])
			zLoc[1] = GetLocationZ(UniMissileSystem3D__MLoc[1])
			zLoc[2] = GetLocationZ(UniMissileSystem3D__MLoc[2])
			SetUnitX(UniMissileSystem3D__MU[i], x[2])
			SetUnitY(UniMissileSystem3D__MU[i], y[2])
			UniMissileSystem3D__LastX[i] = x[2]
			UniMissileSystem3D__LastY[i] = y[2]
			addxy = UniMissileSystem3D__DistanceBetweenXY(x[2], x[1], y[2], y[1])
			SetUnitFacing(UniMissileSystem3D__MU[i], UniMissileSystem3D__AN[i])
			GroupEnumUnitsInRange(UniMissileSystem3D__DamageGroup, x[2], y[2], UniMissileSystem3D__RA[i], nil)
			for _ in _loop_() do
				UniMissileSystem3D__DamageUnit = FirstOfGroup(UniMissileSystem3D__DamageGroup)
				if GetUnitState(UniMissileSystem3D__DamageUnit, UNIT_STATE_LIFE) > 0.4 and (UniMissileSystem3D__MT[i] == UniMissileSystem3D__DamageUnit or IsUnitEnemy(UniMissileSystem3D__DamageUnit, GetOwningPlayer(UniMissileSystem3D__MU[i]))) then
					if RAbsBJ(height - GetUnitFlyHeight(UniMissileSystem3D__DamageUnit)) <= UniMissileSystem3D__RA[i] then
						UnitDamageTarget(UniMissileSystem3D__MU[i], UniMissileSystem3D__DamageUnit, UniMissileSystem3D__DM[i], true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
						UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[i] - 1.0
						UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[i] * 0.5
					end
				end
				GroupRemoveUnit(UniMissileSystem3D__DamageGroup, UniMissileSystem3D__DamageUnit)
				if UniMissileSystem3D__DamageUnit == nil then break end
			end
			GroupClear(UniMissileSystem3D__DamageGroup)
			UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[i] + UniMissileSystem3D__TIMOut
			if UniMissileSystem3D__MGra[i] == 0.0 then
				h = 0.11 + UniMissileSystem3D__SZ[i] - zLoc[2]
			end
			if UniMissileSystem3D__LOC[i] == 0.0 then
				if UniMissileSystem3D__MGra[i] == 0.0 then
				else
					h = UniMissileSystem3D__HEMax[i] - UniMissileSystem3D__R01[i] * (UniMissileSystem3D__TIM[i] - UniMissileSystem3D__LT[i] / 2) * (UniMissileSystem3D__TIM[i] - UniMissileSystem3D__LT[i] / 2) + UniMissileSystem3D__TIM[i] * UniMissileSystem3D__R02[i] + UniMissileSystem3D__SZ[i] - zLoc[2]
				end
			else
				UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - UniMissileSystem3D__MGra[i]
			end
			lastheight = height
			UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[i] * UniMissileSystem3D__LOC[i] + UniMissileSystem3D__SH[i] + UniMissileSystem3D__US[i] * UniMissileSystem3D__LOC[i] + h * (1 - UniMissileSystem3D__LOC[i]) + addh
			height = UniMissileSystem3D__HE[i] - zLoc[2] * UniMissileSystem3D__LOC[i]
			SetUnitFlyHeight(UniMissileSystem3D__MU[i], height, 0.0)
			addz = height - lastheight
			if addxy == 0.0 then
				addxy = 1.0
			end
			tanZ = addz / addxy
			anglez = AtanBJ(tanZ)
			anglez = anglez * 1.0 + 90.0
			aniI = R2I(anglez)
			if aniI < 0 then
				aniI = 0
			elseif aniI > 181 then
				aniI = 181
			end
			SetUnitAnimationByIndex(UniMissileSystem3D__MU[i], aniI)
			UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[i] - UniMissileSystem3D__SP[i] * UniMissileSystem3D__LOC[i]
			UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - UniMissileSystem3D__MGra[i]
			RemoveLocation(UniMissileSystem3D__MLoc[1])
			RemoveLocation(UniMissileSystem3D__MLoc[2])
		end
		i = i - 1
	end
end
-- 弹幕发射
function MissileCast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, l__hp, Effect, gravity)
	local i = 0
	local n = 0
	local tanA = 0.01
	local speed = 600
	local dis = 0.01
	local ang = 0.01
	local x = 0.01
	local y = 0.01
	local inertia = true
	if loc == nil then
		return
	end
	UniMissileSystem3D__Top = UniMissileSystem3D__Top + 1
	i = UniMissileSystem3D__Top
	UniMissileSystem3D__HeroLoc = GetUnitLoc(caster)
	if speed == 0.0 then
		speed = 0.01
	end
	if originspeed == 0.0 then
		originspeed = 0.01
	end
	if maxspeed == 0.0 then
		maxspeed = 0.01
	end
	if distance == 0.0 then
		distance = 0.01
	end
	if height == 0.0 then
		height = 0.1
	end
	if GetLocationX(loc) ~= GetLocationX(UniMissileSystem3D__HeroLoc) or GetLocationY(loc) ~= GetLocationY(UniMissileSystem3D__HeroLoc) then
		x = GetLocationX(loc)
		y = GetLocationY(loc)
		ang = UniMissileSystem3D__AngleBetweenXY(GetUnitX(caster), x, GetUnitY(caster), y)
		dis = UniMissileSystem3D__DistanceBetweenXY(x, GetUnitX(caster), y, GetUnitY(caster))
		UniMissileSystem3D__LOC[i] = 0.0
	else
		ang = angle
		dis = distance
		UniMissileSystem3D__LOC[i] = 1.0
	end
	if gravity == true then
		UniMissileSystem3D__MGra[i] = UniMissileSystem3D__Gravity
	else
		UniMissileSystem3D__MGra[i] = 0.0
	end
	UniMissileSystem3D__MU[i] = missile
	UniMissileSystem3D__MRegister(UniMissileSystem3D__MU[i])
	UniMissileSystem3D__OH[i] = GetUnitFlyHeight(caster) + height
	UniMissileSystem3D__SZ[i] = GetLocationZ(UniMissileSystem3D__HeroLoc) + UniMissileSystem3D__OH[i]
	if originspeed == maxspeed then
		speed = originspeed
		accel = 0.0
		inertia = false
		UniMissileSystem3D__LT[i] = dis / speed
	else
		inertia = true
		UniMissileSystem3D__LT[i] = UniMissileSystem3D__GetAcceleratedTime(dis, originspeed, accel)
	end
	UniMissileSystem3D__SP[i] = originspeed * UniMissileSystem3D__TIMOut
	UniMissileSystem3D__MaxS[i] = maxspeed
	UniMissileSystem3D__RI[i] = (GetLocationZ(loc) - UniMissileSystem3D__SZ[i]) / dis
	UniMissileSystem3D__TIM[i] = 0
	UniMissileSystem3D__IN[i] = 0
	if target ~= nil then
		if GetUnitState(target, UNIT_STATE_LIFE) > 0.4 then
			UniMissileSystem3D__MT[i] = target
			if inertia == true then
				UniMissileSystem3D__OS[i] = originspeed * UniMissileSystem3D__TIMOut
				UniMissileSystem3D__OF[i] = Deg2Rad(50)
				UniMissileSystem3D__SPX[i] = UniMissileSystem3D__OS[i] * Cos(ang)
				UniMissileSystem3D__SPY[i] = UniMissileSystem3D__OS[i] * Sin(ang)
				UniMissileSystem3D__MKs[i] = 1 - accel * UniMissileSystem3D__TIMOut / maxspeed
			end
		end
	end
	UniMissileSystem3D__ACC[i] = accel * UniMissileSystem3D__TIMOut * UniMissileSystem3D__TIMOut
	if inertia == true then
		UniMissileSystem3D__IN[i] = 1
	end
	UniMissileSystem3D__RA[i] = range
	UniMissileSystem3D__DM[i] = damage
	UniMissileSystem3D__AN[i] = ang
	UniMissileSystem3D__ARC[i] = arc
	UniMissileSystem3D__MaxS[i] = maxspeed * UniMissileSystem3D__TIMOut
	if arc ~= 0.0 then
		UniMissileSystem3D__HEMax[i] = dis * UniMissileSystem3D__ARC[i]
	else
		UniMissileSystem3D__HEMax[i] = height
	end
	if GetLocationX(loc) == GetLocationX(UniMissileSystem3D__HeroLoc) and GetLocationY(loc) == GetLocationY(UniMissileSystem3D__HeroLoc) then
		UniMissileSystem3D__ANZ[i] = AtanBJ(arc)
		UniMissileSystem3D__US[i] = arc * UniMissileSystem3D__SP[i]
		UniMissileSystem3D__DI[i] = distance
	else
		UniMissileSystem3D__US[i] = 0
		UniMissileSystem3D__DI[i] = dis
	end
	SetUnitX(UniMissileSystem3D__MU[i], GetLocationX(UniMissileSystem3D__HeroLoc))
	SetUnitY(UniMissileSystem3D__MU[i], GetLocationY(UniMissileSystem3D__HeroLoc))
	SetUnitOwner(UniMissileSystem3D__MU[i], GetOwningPlayer(caster), true)
	SetUnitFacing(UniMissileSystem3D__MU[i], UniMissileSystem3D__AN[i])
	UniMissileSystem3D__HE[i] = UniMissileSystem3D__OH[i] + GetLocationZ(UniMissileSystem3D__HeroLoc) + 0.11
	UniMissileSystem3D__SH[i] = 0 * speed
	UniMissileSystem3D__LastX[i] = 0.0
	UniMissileSystem3D__LastY[i] = 0.0
	UniMissileSystem3D__R01[i] = UniMissileSystem3D__HEMax[i] / UniMissileSystem3D__LT[i] / UniMissileSystem3D__LT[i] * 4
	UniMissileSystem3D__R02[i] = UniMissileSystem3D__SP[i] * UniMissileSystem3D__RI[i] / UniMissileSystem3D__TIMOut
	UniMissileSystem3D__HP[i] = l__hp
	UniMissileSystem3D__DM[i] = damage
	UniMissileSystem3D__EF[i] = Effect
	SetUnitFlyHeight(UniMissileSystem3D__MU[i], UniMissileSystem3D__HE[i] - GetLocationZ(UniMissileSystem3D__HeroLoc), 0.0)
	UniMissileSystem3D__EFL[i] = AddSpecialEffectTarget(UniMissileSystem3D__EF[i], UniMissileSystem3D__MU[i], "chest")
	UniMissileSystem3D__LastOwner[i] = GetOwningPlayer(caster)
	RemoveLocation(UniMissileSystem3D__HeroLoc)
	UniMissileSystem3D__HeroLoc = nil
end
function UniMissileSystem3D__Init()
	UniMissileSystem3D__map_max_X = GetRectMaxX(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_max_Y = GetRectMaxY(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_min_X = GetRectMinX(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_min_Y = GetRectMinY(bj_mapInitialPlayableArea)
	UniMissileSystem3D__DamageGroup = CreateGroup()
	UniMissileSystem3D__TIMr = CreateTimer()
	TimerStart(UniMissileSystem3D__TIMr, UniMissileSystem3D__TIMOut, true, UniMissileSystem3D__MLoop)
end

--library UniMissileSystem3D ends
--library WuQiQiHeSystem:
--武器类别
function WeaponType(itemid)
	if itemid == 1227895878 then
		return "特"
	elseif itemid == 1227894864 then
		return "特"
	elseif itemid == 1227894865 then
		return "刀"
	elseif itemid == 1227895116 then
		return "剑"
	elseif itemid == 1227895118 then
		return "特"
	elseif itemid == 1227894872 then
		return "刀"
	elseif itemid == 1227894851 then
		return "剑"
	elseif itemid == 1227894852 then
		return "刀"
	elseif itemid == 1227894850 then
		return "剑"
	elseif itemid == 1227895110 then
		return "特"
	elseif itemid == 1227895123 then
		return "棍"
	elseif itemid == 1227895344 then
		return "刀"
	elseif itemid == 1227895109 then
		return "刀"
	elseif itemid == 1227895345 then
		return "棍"
	elseif itemid == 1227895094 then
		return "棍"
	elseif itemid == 1227895091 then
		return "棍"
	elseif itemid == 1227897143 then
		return "棍"
	elseif itemid == 1227897144 then
		return "刀"
	elseif itemid == 1227897145 then
		return "剑"
	elseif itemid == 1227897153 then
		return "剑"
	elseif itemid == 1227897154 then
		return "棍"
	elseif itemid == 1227897155 then
		return "剑"
	elseif itemid == 1227897156 then
		return "棍"
	elseif itemid == 1227896918 then
		return "特"
	end
	return "无"
end
--武器等级
function WeaponLevel(itemid)
	--call BJDebugMsg("什么情况3")
	if itemid == 1227895878 then
		return 3
	elseif itemid == 1227894864 then
		return 5
	elseif itemid == 1227894865 then
		return 5
	elseif itemid == 1227895116 then
		return 2
	elseif itemid == 1227895118 then
		return 2
	elseif itemid == 1227894872 then
		return 4
	elseif itemid == 1227894851 then
		return 6
	elseif itemid == 1227894852 then
		return 6
	elseif itemid == 1227894850 then
		return 6
	elseif itemid == 1227895110 then
		return 1
	elseif itemid == 1227895123 then
		return 1
	elseif itemid == 1227895344 then
		return 0
	elseif itemid == 1227895109 then
		return 2
	elseif itemid == 1227895345 then
		return 0
	elseif itemid == 1227895094 then
		return 2
	elseif itemid == 1227895091 then
		return 4
	elseif itemid == 1227896918 then
		return 7
	elseif itemid == 1227897143 then
		return 7
	elseif itemid == 1227897144 then
		return 7
	elseif itemid == 1227897145 then
		return 5
	elseif itemid == 1227897153 then
		return 5
	elseif itemid == 1227897154 then
		return 7
	elseif itemid == 1227897155 then
		return 7
	elseif itemid == 1227897156 then
		return 7
	end
	return -1
end
--武器熟练度
function WeaponQiHe(u, uc, itemid)
	local r = 0.0
	local level = WeaponLevel(itemid)
	--call BJDebugMsg("什么情况4，"+I2S(level))
	if level == 0 then
		r = 7.0
	elseif level == 1 then
		r = 6.0
	elseif level == 2 then
		r = 5.0
	elseif level == 3 then
		r = 4.5
	elseif level == 4 then
		r = 4.0
	elseif level == 5 then
		r = 3.0
	elseif level == 6 then
		r = 2.5
	elseif level == 7 then
		r = 2.0
	end
	if LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 3000.0 * (1 + WeaponLevel(itemid)) or LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 5000.0 * (1 + WeaponLevel(itemid)) and Ce[1 + GetPlayerId(GetOwningPlayer(u))] == 3 then
		if ModuloInteger(GetUnitPointValue(uc), 50) ~= 0 and (GetUnitPointValue(uc) // 100 == 1 or GetUnitPointValue(uc) // 100 >= 5) then
			SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 200 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
		else
			SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 2 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
		end
	end
	if udg_bqdsbool[1 + GetPlayerId(GetOwningPlayer(u))] == true and LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 10000.0 * (1 + WeaponLevel(itemid)) then
		SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 6 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
	end
--call BJDebugMsg("什么情况2，"+R2S(r)+","+R2S(LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)))
end
--初始化武器耐久度
function WeaponNaiJiu(it)
	local level = WeaponLevel(GetItemTypeId(it))
	local i = 0
	if level == 0 then
		i = 400
	elseif level == 1 then
		i = 800
	elseif level == 2 then
		i = 1600
	elseif level == 3 then
		i = 2400
	elseif level == 4 then
		i = 3200
	elseif level == 5 then
		i = 4400
	elseif level == 6 then
		i = 5400
	elseif level == 7 then
		i = 10000
	end
	return i
end
function WeaponPoSun_Condition()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnit())) and GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER and GetPlayerSlotState(GetOwningPlayer(GetKillingUnit())) == PLAYER_SLOT_STATE_PLAYING
end
--武器耐久度
function WeaponPoSun()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local j = 1 + GetPlayerId(p)
	local i = 0
	local it = nil
	i = 1
	for _ in _loop_() do
		if i > 6 then break end
		if GetItemType(UnitItemInSlotBJ(GetKillingUnit(), i)) == ITEM_TYPE_ARTIFACT then
			it = UnitItemInSlotBJ(GetKillingUnit(), i)
			if GetItemTypeId(it) == 1227895379 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 2000)
			elseif GetItemTypeId(it) == 1227895373 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 6000)
			elseif GetItemTypeId(it) == 1227895377 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 10000)
			elseif GetItemTypeId(it) == 1227895378 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 14000)
			elseif GetItemTypeId(it) == 1227895376 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 20000)
			end
			--非镇妖
			if GetItemTypeId(it) ~= 1227895379 and GetItemTypeId(it) ~= 1227895373 and GetItemTypeId(it) ~= 1227895377 and GetItemTypeId(it) ~= 1227895378 and GetItemTypeId(it) ~= 1227895376 then
				WeaponQiHe(u, GetTriggerUnit(), GetItemTypeId(it))
				if udg_bqdsbool[j] == false and Ce[j] == 3 then
					if LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it)) == false and LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it)) >= 5000.0 * (1 + WeaponLevel(GetItemTypeId(it))) then
						--set udg_bqds[j] = udg_bqds[j] + 1
						SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), true)
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您炼成了第" .. (I2S(udg_bqds[j]) or "") .. "把武器，您需要炼成3把武器才能获得兵器大师哦")
					end
				end
				--     if udg_bqds[j]>=3 and udg_bqdsbool[j]==false and Ce[j]==3 then
				--      set udg_bqdsbool[j]=true
				--      if udg_zhangmen[j]==true then
				--else
				--	call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓兵器大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
				--endif
				--call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得兵器大师")
				--call SetPlayerName(p, "〓兵器大师〓"+GetPlayerName(p))
				--     endif
				if LoadInteger(YDHT, GetHandleId(it), 0) > 0 then
					if Ce[1 + GetPlayerId(GetOwningPlayer(u))] ~= 3 then
						SaveInteger(YDHT, GetHandleId(it), 0, LoadInteger(YDHT, GetHandleId(it), 0) - 1)
					end
				end
			--if LoadInteger(YDHT,GetHandleId(it),0)<=0 then
			--	call FlushChildHashtable(YDHT,GetHandleId(it))
			--	call RemoveItem(it)
			--	call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFF0000你的武器已损坏，请及时更换武器")
			--endif
			end
		end
		i = i + 1
	end
	--call BJDebugMsg(GetItemName(it))
	u = nil
	it = nil
end
--商店购买武器减耐久度
function BuyWeapon_Condition()
	return GetItemTypeId(GetManipulatedItem()) == 1227895110 or GetItemTypeId(GetManipulatedItem()) == 1227895094 or GetItemTypeId(GetManipulatedItem()) == 1227895091
end
function BuyWeapon()
	if LoadInteger(YDHT, GetHandleId(GetManipulatedItem()), 0) == 0 then
		SaveInteger(YDHT, GetHandleId(GetManipulatedItem()), 0, WeaponNaiJiu(GetManipulatedItem()) // 2)
	end
end
function init()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(WeaponPoSun_Condition))
	TriggerAddAction(t, WeaponPoSun)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(BuyWeapon_Condition))
	TriggerAddAction(t, BuyWeapon)
	t = nil
end
--重写创造物品的函数
function createitemloc(id, loc)
	local it = nil
	it = CreateItemLoc(id, loc)
	if GetItemType(it) == ITEM_TYPE_ARTIFACT then
		SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
	end
	it = nil
	return bj_lastCreatedItem
end
function createitem(id, x, y)
	local it = nil
	it = CreateItem(id, x, y)
	if GetItemType(it) == ITEM_TYPE_ARTIFACT then
		SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
	end
	it = nil
	return bj_lastCreatedItem
end
function unitadditembyidswapped(itemId, whichHero)
	local it = nil
	it = UnitAddItemByIdSwapped(itemId, whichHero)
	if GetItemType(it) == ITEM_TYPE_ARTIFACT then
		SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
	end
	it = nil
	return bj_lastCreatedItem
end

require 'util.ydwe'
--===========================================================================
-- 
-- 决战江湖1.55正式版
-- 
--   Warcraft III map script
--   Generated by the Warcraft III World Editor
--   Date: Sun Oct 14 18:26:51 2018
--   Map Author: 云杨 zei_kale
-- 
--===========================================================================
--***************************************************************************
--*
--*  Global Variables
--*
--***************************************************************************
function InitGlobals()
	local i = 0
	udg_UG_ResidualImage = CreateGroup()
	udg_A_UG = CreateGroup()
	udg_A_Ang = 0
	udg_A_Ang_2 = 0
	udg_A_hurt = 0
	udg_A_num = 0
	udg_x = 0
	udg_y = 0
	udg_A_Int = 0
	udg_Number_player = 0
	i = 0
	for _ in _loop_() do
		if i > 7 then break end
		udg_MeiJuJiFen[i] = 0
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 5 then break end
		udg_kurongsharen[i] = 0
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 5 then break end
		udg_HuanZhuangCD[i] = false
		i = i + 1
	end
end
require 'map.static.units'
--***************************************************************************
--*
--*  Custom Script Code
--*
--***************************************************************************
--TESH.scrollpos=0
--TESH.alwaysfold=0
--#include "./YDWELocalVariable.j"
--==================武器契合度系统开始==================//
--==================武器契合度系统结束==================//
--判断单位是否为神兽
function IsUnitMonster(u)
	if GetUnitTypeId(u) == 1865429316 or GetUnitTypeId(u) == 1865429317 or GetUnitTypeId(u) == 1865429318 or GetUnitTypeId(u) == 1865429319 then
		return true
	end
	return false
end
--A项和B项性格
function AddCharacterABuff(u, characterA)
	UnitAddAbilityBJ(1093678646, u)
	SetPlayerAbilityAvailableBJ(false, 1093678646, GetOwningPlayer(u))
	SetUnitAbilityLevel(u, 1093678648, characterA)
end
function AddCharacterBBuff(u, characterB)
	UnitAddAbilityBJ(1093678647, u)
	SetPlayerAbilityAvailableBJ(false, 1093678647, GetOwningPlayer(u))
	SetUnitAbilityLevel(u, 1093678649, characterB)
end
function XingGeA(xingge)
	local s = nil
	if xingge == 1 then
		s = "愚钝"
	elseif xingge == 2 then
		s = "笨拙"
	elseif xingge == 3 then
		s = "平平"
	elseif xingge == 4 then
		s = "聪明"
	elseif xingge == 5 then
		s = "聪慧"
	end
	return s
end
function XingGeB(xingge)
	local s = nil
	if xingge == 1 then
		s = "浮躁"
	elseif xingge == 2 then
		s = "轻浮"
	elseif xingge == 3 then
		s = "耐心"
	elseif xingge == 4 then
		s = "稳重"
	elseif xingge == 5 then
		s = "沉稳"
	end
	return s
end
--副本倒计时
function FBdaojishi()
	local p = GetTriggerPlayer()
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00331号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[1]))) or "") .. "秒")
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00332号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[2]))) or "") .. "秒")
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00333号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[3]))) or "") .. "秒")
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00334号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[4]))) or "") .. "秒")
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00335号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[5]))) or "") .. "秒")
	DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF00336号副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[6]))) or "") .. "秒")
	p = nil
end
--伴侣属性
function BanLvShuXing()
	local t = GetTriggeringTrigger()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	bj_forLoopBIndex = 1
	bj_forLoopBIndexEnd = MAX_BAN_LV_NUM
	for _ in _loop_() do
		if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
		if GetUnitTypeId(k8[i]) == R8[bj_forLoopBIndex] then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFFF00伴侣：" .. (GetUnitName(k8[i]) or ""))
			if udg_blgg[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF根骨 ：   " .. (I2S(udg_blgg[bj_forLoopBIndex]) or ""))
			end
			if udg_blwx[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性 ：   " .. (I2S(udg_blwx[bj_forLoopBIndex]) or ""))
			end
			if udg_bljm[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF经脉 ：   " .. (I2S(udg_bljm[bj_forLoopBIndex]) or ""))
			end
			if udg_blfy[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF福缘 ：   " .. (I2S(udg_blfy[bj_forLoopBIndex]) or ""))
			end
			if udg_bldp[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄 ：   " .. (I2S(udg_bldp[bj_forLoopBIndex]) or ""))
			end
			if udg_blys[bj_forLoopBIndex] > 0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF医术 ：   " .. (I2S(udg_blys[bj_forLoopBIndex]) or ""))
			end
		end
		bj_forLoopBIndex = bj_forLoopBIndex + 1
	end
	t = nil
	p = nil
end
function IsYaoCao(id)
	local i = 1
	for _ in _loop_() do
		if i > 12 then break end
		if id == YaoCao[i] then
			return true
		end
		i = i + 1
	end
	return false
end
--宝物掉落函数
function BaoWuDiaoLuo(u, l__ut, baolv1, id1, id2, id3, id4, baolv2, id5)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(l__ut)
	local idn = _array_(0)
	local j = 4
	idn[1] = id1
	idn[2] = id2
	idn[3] = id3
	idn[4] = id4
	if id4 == 0 then
		j = 3
	end
	if id3 == 0 then
		j = 2
	end
	if id2 == 0 then
		j = 1
	end
	if id1 == 0 then
		j = 0
	end
	if GetRandomInt(1, 1000) <= fuyuan[i] or GetRandomInt(1, 100) <= 35 and Ce[i] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		--第一类宝物
		if j > 0 then
			if GetRandomInt(0, 100) <= baolv1 then
				createitemloc(idn[GetRandomInt(1, j)], loc)
			end
		end
		--第二类宝物（药物或古董）
		if baolv2 ~= 0 then
			if GetRandomInt(1, 100) <= baolv2 then
				createitemloc(id5, loc)
				if IsYaoCao(id5) and udg_lddsbool[i] == true then
					createitemloc(id5, loc)
				end
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	p = nil
	loc = nil
end
--击杀怪物后百分比概率掉落宝物的函数
--如果副职为寻宝师或者1-1000间取随机数小于福缘成立的话，双倍掉落宝物
--u是击杀者
--possibility:第一种宝物掉落的概率
--itemId:第一种宝物的id
--itemId2:第二种宝物掉落的id，如果没有第二种宝物可以为0
function dropItem(u, itemId, itemId2, possibility)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	if GetRandomInt(1, 1000) <= fuyuan[i] or GetRandomInt(1, 100) <= 30 and Ce[i] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(0, 100) <= possibility then
			createitemloc(itemId, loc)
		else
			createitemloc(itemId2, loc)
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	u = nil
	p = nil
	loc = nil
end
--查询药性
function YaoXing()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	local yin = 0
	local yang = 0
	bj_forLoopAIndex = 1
	bj_forLoopAIndexEnd = 6
	for _ in _loop_() do
		if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
		if GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[11] then
			yin = yin + 5
			yang = yang + 1
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[9] then
			yin = yin + 0
			yang = yang + 4
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[10] then
			yin = yin + 3
			yang = yang + 4
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[8] then
			yin = yin + 4
			yang = yang + 3
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[7] then
			yin = yin + 4
			yang = yang + 0
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[12] then
			yin = yin + 1
			yang = yang + 5
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[6] then
			yin = yin + 2
			yang = yang + 3
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[1] then
			yin = yin + 2
			yang = yang + 1
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[2] then
			yin = yin + 1
			yang = yang + 2
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[3] then
			yin = yin + 3
			yang = yang - 1
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[4] then
			yin = yin - 1
			yang = yang + 3
		elseif GetItemTypeId(UnitItemInSlotBJ(P4[i], bj_forLoopAIndex)) == YaoCao[5] then
			yin = yin + 3
			yang = yang + 2
		end
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10.0, "|cff00ff33总药性（阴）：" .. (I2S(yin) or ""))
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10.0, "|cff00ff33总药性（阳）：" .. (I2S(yang) or ""))
end
--转化剑意
function TransferJY()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if xd[i] == 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000英雄，你的剑意不够哦")
	else
		if yd[i] == 1 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了悟性")
		elseif yd[i] == 2 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了根骨")
		elseif yd[i] == 3 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了胆魄")
		elseif yd[i] == 4 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了医术")
		elseif yd[i] == 5 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了福缘")
		elseif yd[i] == 6 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了经脉")
		end
		if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) < 5 then
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000转化剑意需要至少5个黄金")
		else
			DialogSetMessage(v8[i], "你拥有" .. (I2S(xd[i]) or "") .. "点剑意，请选择要转化的属性")
			DialogAddButtonBJ(v8[i], "根骨")
			w8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "悟性")
			y8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "福缘")
			z8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "胆魄")
			A8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "医术")
			a8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "经脉")
			x8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "取消")
			B8[i] = bj_lastCreatedButton
			DialogDisplay(p, v8[i], true)
			Ad[i] = true
		end
	end
end
function GetGeoNormRandomReal(r1, r2)
	local rr1 = YDWELogarithm__Log2(r1 * 1.0) * 0.30103 -- INLINED!!
	local rr2 = YDWELogarithm__Log2(r2 * 1.0) * 0.30103 -- INLINED!!
	local rr3 = GetRandomReal(rr1, rr2)
	local rr4 = GetRandomReal(rr1, rr2)
	local rr5 = GetRandomReal(rr1, rr2)
	local rr6 = GetRandomReal(rr1, rr2)
	local rr7 = GetRandomReal(rr1, rr2)
	local rr8 = GetRandomReal(rr1, rr2)
	local rr9 = (rr3 + rr4 + rr5 + rr6 + rr7 + rr8) / 6.0
	return Pow(10.0, rr9)
end
--返回玩家数
function GetNumPlayer()
	local i = 0
	local p = nil
	local n = 0
	for _ in _loop_() do
		if i > 11 then break end
		p = Player(i)
		if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
			n = n + 1
		end
		i = i + 1
	end
	p = nil
	return n
end
function UnitTypeNotNull(u, i)
	return IsUnitType(u, i) ~= nil
end
--距离loc r1距离r2角度的点
function pu(loc, r1, r2)
	return Location(GetLocationX(loc) + r1 * Cos(r2 * bj_DEGTORAD), GetLocationY(loc) + r1 * Sin(r2 * bj_DEGTORAD))
end
function tu()
	local dx = GetDestructableX(GetFilterDestructable()) - fu
	local dy = GetDestructableY(GetFilterDestructable()) - gu
	return dx * dx + dy * dy <= bj_enumDestructableRadius
end
function uu(vu, wu)
	local g = nil
	bj_stockPickedItemType = vu
	bj_stockPickedItemLevel = wu
	g = CreateGroup()
	GroupEnumUnitsOfType(g, "marketplace", ju)
	ForGroup(g, UpdateEachStockBuildingEnum)
	DestroyGroup(g)
	g = nil
end
function xu()
	local pickedItemId
	local yu
	local zu = 0
	local Au = 0
	local wu
	wu = 1
	for _ in _loop_() do
		if bj_stockAllowedPermanent[wu] then
			Au = Au + 1
			if GetRandomInt(1, Au) == 1 then
				yu = ITEM_TYPE_PERMANENT
				zu = wu
			end
		end
		if bj_stockAllowedCharged[wu] then
			Au = Au + 1
			if GetRandomInt(1, Au) == 1 then
				yu = ITEM_TYPE_CHARGED
				zu = wu
			end
		end
		if bj_stockAllowedArtifact[wu] then
			Au = Au + 1
			if GetRandomInt(1, Au) == 1 then
				yu = ITEM_TYPE_ARTIFACT
				zu = wu
			end
		end
		wu = wu + 1
		if wu > 10 then break end
	end
	if Au == 0 then
		yu = nil
		return
	end
	uu(yu, zu)
	yu = nil
end
function au()
	xu()
	TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INTERVAL, true, xu)
end
function bu()
	return true
end
function Eu()
	local Fu = Kt
	if Fu ~= 0 then
		Kt = Mt[Fu]
	else
		Lt = Lt + 1
		Fu = Lt
	end
	if Fu > 8190 then
		return 0
	end
	Pt[Fu] = nil
	Qt[Fu] = nil
	Rt[Fu] = 0.0
	St[Fu] = 0.0
	Tt[Fu] = 0.0
	Ut[Fu] = 0.0
	Vt[Fu] = 0.0
	Wt[Fu] = 0.0
	Xt[Fu] = 0.0
	Yt[Fu] = 0.0
	Zt[Fu] = 0
	Mt[Fu] = -1
	return Fu
end
function Gu(Fu)
	if Fu == nil then
		return
	elseif Mt[Fu] ~= -1 then
		return
	end
	Mt[Fu] = Kt
	Kt = Fu
end
function Hu()
	YDHT = InitHashtable()
end
function Nu(Ou, cu)
	local i = 0
	for _ in _loop_() do
		if i >= M then break end
		if L[i] == cu then
			w = Ou
			if K[i] ~= nil and TriggerEvaluate(K[i]) and IsTriggerEnabled(K[i]) then
				TriggerExecute(K[i])
			end
		end
		i = i + 1
	end
end
function Pu()
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.24.5.1710")
	return false
end
function Qu()
	local t = CreateTrigger()
	local i = 0
	for _ in _loop_() do
		if i == 12 then break end
		TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
		i = i + 1
	end
	TriggerAddCondition(t, Condition(Pu))
	t = nil
end
function SetCamera()
	I = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
	J = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	H = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
	l = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
	Qu()
end
--万能属性系统
--以下函数仅仅是让技能ID出现在代码里，不然SLK优化器会删除这些技能
function DisplayAllAbilityId()
	local aid = 0
	aid = 1497656368
	aid = 1497656369
	aid = 1497656370
	aid = 1497656371
	aid = 1497656372
	aid = 1497656373
	aid = 1497656374
	aid = 1497656375
	aid = 1497656376
	aid = 1497656377
	aid = 1497656417
	aid = 1497656418
	aid = 1497656419
	aid = 1497656420
	aid = 1497656421
	aid = 1497656422
	aid = 1497656624
	aid = 1497656625
	aid = 1497656626
	aid = 1497656627
	aid = 1497656628
	aid = 1497656629
	aid = 1497656630
	aid = 1497656631
	aid = 1497656632
	aid = 1497656633
	aid = 1497656673
	aid = 1497656674
	aid = 1497656675
	aid = 1497656676
	aid = 1497656677
	aid = 1497656678
	aid = 1497654064
	aid = 1497654065
	aid = 1497654066
	aid = 1497654067
	aid = 1497654068
	aid = 1497654069
	aid = 1497654070
	aid = 1497654071
	aid = 1497654072
	aid = 1497654073
	aid = 1497654113
	aid = 1497654114
	aid = 1497654115
	aid = 1497653808
	aid = 1497653809
	aid = 1497653810
	aid = 1497653811
	aid = 1497653812
	aid = 1497653813
	aid = 1497653814
	aid = 1497653815
	aid = 1497653816
	aid = 1497653817
	aid = 1497653857
	aid = 1497653858
	aid = 1497653859
	aid = 1497653860
	aid = 1497653861
	aid = 1497653863
	aid = 1497653864
	aid = 1497653865
	aid = 1497653866
	aid = 1497653867
	aid = 1497653868
	aid = 1497653869
	aid = 1497653870
end
function kv()
	local i = 0
	local m = 0
	P[0] = 0
	P[1] = 15
	P[2] = 30
	P[3] = 43
	P[4] = 67
	Q[0] = 15
	Q[1] = 15
	Q[2] = 13
	Q[3] = 24
	for _ in _loop_() do
		if i > 9 then break end
		V[i] = 48 + m
		m = m + 1
		i = i + 1
	end
	m = 0
	for _ in _loop_() do
		if i > 26 then break end
		V[i] = 97 + m
		m = m + 1
		i = i + 1
	end
	i = 0
	m = 0
	for _ in _loop_() do
		if m > Q[0] - 1 then break end
		S[i] = 1497656368 - 48 + V[m]
		i = i + 1
		m = m + 1
	end
	m = 0
	for _ in _loop_() do
		if m > Q[1] - 1 then break end
		S[i] = 1497656624 - 48 + V[m]
		i = i + 1
		m = m + 1
	end
	m = 0
	for _ in _loop_() do
		if m > Q[2] - 1 then break end
		S[i] = 1497654064 - 48 + V[m]
		i = i + 1
		m = m + 1
	end
	m = 0
	for _ in _loop_() do
		if m > Q[3] - 1 then break end
		S[i] = 1497653808 - 48 + V[m]
		i = i + 1
		m = m + 1
	end
end
function mv()
	local i = 1
	local u
	local n = 0
	local nv = 0
	kv()
	for _ in _loop_() do
		i = 1
		T[nv] = 1
		for _ in _loop_() do
			T[nv + 1] = T[nv] * 2
			nv = nv + 1
			i = i + 1
			if i == Q[n] then break end
		end
		X[n] = T[nv] - 1
		Y[n] =  - T[nv]
		nv = nv + 1
		n = n + 1
		if n >= 4 then break end
	end
	if W then
		u = CreateUnit(Player(15), U, 0, 0, 0)
		i = 0
		for _ in _loop_() do
			if i == P[5] then break end
			UnitAddAbility(u, S[i])
			i = i + 1
		end
		RemoveUnit(u)
		u = nil
	end
end
function ov(pv)
	local f = CreateForce()
	ForceAddPlayer(f, pv)
	Z = f
	f = nil
	return Z
end
function FetchUnitItem(u, j)
	local i = 0
	for _ in _loop_() do
		d4 = UnitItemInSlot(u, i)
		if GetItemTypeId(d4) == j then
			return d4
		end
		i = i + 1
		if i >= 6 then break end
	end
	return nil
end
--function YDWEGetUnitsInRangeOfLocMatchingNull takes real radius,location whichLocation,boolexpr filter returns group
--    local group g= CreateGroup()
--    call GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
--    call DestroyBoolExpr(filter)
--    set yd_NullTempGroup=g
--    set g=null
--    return yd_NullTempGroup
--endfunction
function YDWEGetUnitsInRectOfPlayerNull(r, whichPlayer)
	local g = CreateGroup()
	bj_groupEnumOwningPlayer = whichPlayer
	GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
	yd_NullTempGroup = g
	g = nil
	return yd_NullTempGroup
end
function YDWEGetRandomSubGroupEnumNull()
	if bj_randomSubGroupWant > 0 then
		if bj_randomSubGroupWant >= bj_randomSubGroupTotal or GetRandomInt(1, bj_randomSubGroupTotal) <= bj_randomSubGroupWant then
			-- We either need every remaining unit, or the unit passed its chance check.
			GroupAddUnit(bj_randomSubGroupGroup, GetEnumUnit())
			bj_randomSubGroupWant = bj_randomSubGroupWant - 1
		end
	end
	bj_randomSubGroupTotal = bj_randomSubGroupTotal - 1
end
function YDWEGetRandomSubGroupNull(count, sourceGroup)
	bj_randomSubGroupGroup = CreateGroup()
	bj_randomSubGroupWant = count
	bj_randomSubGroupTotal = CountUnitsInGroup(sourceGroup)
	if bj_randomSubGroupWant <= 0 or bj_randomSubGroupTotal <= 0 then
		return bj_randomSubGroupGroup
	end
	ForGroup(sourceGroup, YDWEGetRandomSubGroupEnumNull)
	return bj_randomSubGroupGroup
end
function YDWEGetItemOfTypeFromUnitBJNull(whichUnit, itemId)
	local index = 0
	for _ in _loop_() do
		yd_NullTempItem = UnitItemInSlot(whichUnit, index)
		if GetItemTypeId(yd_NullTempItem) == itemId then
			return yd_NullTempItem
		end
		index = index + 1
		if index >= bj_MAX_INVENTORY then break end
	end
	return nil
end
function YDWETriggerActionUnitRescuedBJNull()
	local theUnit = GetTriggerUnit()
	if IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorBldg)
	else
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorUnit)
	end
	theUnit = nil
end
function YDWETryInitRescuableTriggersBJNull()
	local index
	if bj_rescueUnitBehavior == nil then
		bj_rescueUnitBehavior = CreateTrigger()
		index = 0
		for _ in _loop_() do
			TriggerRegisterPlayerUnitEvent(bj_rescueUnitBehavior, Player(index), EVENT_PLAYER_UNIT_RESCUED, nil)
			index = index + 1
			if index == bj_MAX_PLAYER_SLOTS then break end
		end
		TriggerAddAction(bj_rescueUnitBehavior, YDWETriggerActionUnitRescuedBJNull)
	end
end
function YDWEInitRescuableBehaviorBJNull()
	local index
	index = 0
	for _ in _loop_() do
		-- If at least one player slot is "Rescuable"-controlled, init the
		-- rescue behavior triggers.
		if GetPlayerController(Player(index)) == MAP_CONTROL_RESCUABLE then
			YDWETryInitRescuableTriggersBJNull()
			return
		end
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
function wv(r, vv)
	local g = CreateGroup()
	GroupEnumUnitsInRect(g, r, vv)
	DestroyBoolExpr(vv)
	e4 = g
	g = nil
	return e4
end
function AddPlayerUnitIntoGroup(pv, vv)
	local g = CreateGroup()
	GroupEnumUnitsOfPlayer(g, pv, vv)
	DestroyBoolExpr(vv)
	e4 = g
	g = nil
	return e4
end
function yv(mb, zv, Av, av, Bv, bv, Cv)
	local cv = 0
	local Dv = 0
	local Ev = MultiboardGetRowCount(mb)
	local Fv = MultiboardGetColumnCount(mb)
	local Gv = nil
	for _ in _loop_() do
		cv = cv + 1
		if cv > Ev then break end
		if Av == 0 or Av == cv then
			Dv = 0
			for _ in _loop_() do
				Dv = Dv + 1
				if Dv > Fv then break end
				if zv == 0 or zv == Dv then
					Gv = MultiboardGetItem(mb, cv - 1, Dv - 1)
					MultiboardSetItemValueColor(Gv, PercentTo255(av), PercentTo255(Bv), PercentTo255(bv), PercentTo255(100.0 - Cv))
					MultiboardReleaseItem(Gv)
				end
			end
		end
	end
	Gv = nil
end
function DuoMianBan(mb, zv, Av, Iv)
	local cv = 0
	local Dv = 0
	local Ev = MultiboardGetRowCount(mb)
	local Fv = MultiboardGetColumnCount(mb)
	local Gv = nil
	for _ in _loop_() do
		cv = cv + 1
		if cv > Ev then break end
		if Av == 0 or Av == cv then
			Dv = 0
			for _ in _loop_() do
				Dv = Dv + 1
				if Dv > Fv then break end
				if zv == 0 or zv == Dv then
					Gv = MultiboardGetItem(mb, cv - 1, Dv - 1)
					MultiboardSetItemValue(Gv, Iv)
					MultiboardReleaseItem(Gv)
				end
			end
		end
	end
	Gv = nil
end
--function YDWEPolledWaitNull takes real duration returns nothing
--    local timer t
--    local real timeRemaining
--    if ( duration > 0 ) then
--        set t=CreateTimer()
--        call TimerStart(t, duration, false, null)
--        loop
--            set timeRemaining=TimerGetRemaining(t)
--            exitwhen timeRemaining <= 0
--            // If we have a bit of time left, skip past 10% of the remaining
--            // duration instead of checking every interval, to minimize the
--            // polling on long waits.
--            if ( timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD ) then
--                call TriggerSleepAction(0.1 * timeRemaining)
--            else
--                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
--            endif
--        endloop
--        call DestroyTimer(t)
--    endif
--    set t=null
--endfunction
--符合条件执行g4[i]触发
function Lv()
	local i = 0
	for _ in _loop_() do
		if i >= h4 then break end
		if g4[i] ~= nil and IsTriggerEnabled(g4[i]) and TriggerEvaluate(g4[i]) then
			TriggerExecute(g4[i])
		end
		i = i + 1
	end
end
--单位没有蝗虫技能，则注册单位伤害信息
function Mv()
	if GetUnitAbilityLevel(GetFilterUnit(), 1097625443) <= 0 then
		TriggerRegisterUnitEvent(f4, GetFilterUnit(), EVENT_UNIT_DAMAGED)
	end
	return false
end
--任意单位受伤害事件
function Nv()
	local t = CreateTrigger()
	local r = CreateRegion()
	local g = CreateGroup()
	RegionAddRect(r, GetWorldBounds())
	--新进入地图的单位受伤害
	TriggerRegisterEnterRegion(t, r, Condition(Mv))
	--地图上已有的单位受伤害
	GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(Mv))
	DestroyGroup(g)
	r = nil
	t = nil
	g = nil
end
function Ov(Pv)
	if Pv == nil then
		return
	end
	if h4 == 0 then
		f4 = CreateTrigger()
		TriggerAddAction(f4, Lv)
		Nv()
	end
	g4[h4] = Pv
	h4 = h4 + 1
end
function Qv()
	local i = 0
	if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
		i4 = GetOrderTargetItem()
		for _ in _loop_() do
			if i >= m4 then break end
			if k4[i] ~= nil and IsTriggerEnabled(k4[i]) and TriggerEvaluate(k4[i]) then
				TriggerExecute(k4[i])
			end
			i = i + 1
		end
	end
end
function TriggerAddRect(Sv, r)
	local Tv = CreateRegion()
	RegionAddRect(Tv, r)
	nn4 = Tv
	Tv = nil
	return TriggerRegisterEnterRegion(Sv, nn4, nil)
end
function UnitHaveItem(u, j)
	local i = 0
	if j ~= 0 then
		for _ in _loop_() do
			if GetItemTypeId(UnitItemInSlot(u, i)) == j then
				return true
			end
			i = i + 1
			if i >= 6 then break end
		end
	end
	return false
end
function Vv(pv)
	local g = CreateGroup()
	GroupEnumUnitsOfPlayer(g, pv, nil)
	ForGroup(g, WakePlayerUnitsEnum)
	DestroyGroup(g)
	g = nil
end
function CheckX(x)
	local E2 = GetRectMinX(bj_mapInitialPlayableArea) + 50
	if x < E2 then
		return E2
	end
	E2 = GetRectMaxX(bj_mapInitialPlayableArea) - 50
	if x > E2 then
		return E2
	end
	return x
end
function CheckY(y)
	local E2 = GetRectMinY(bj_mapInitialPlayableArea) + 50
	if y < E2 then
		return E2
	end
	E2 = GetRectMaxY(bj_mapInitialPlayableArea) - 50
	if y > E2 then
		return E2
	end
	return y
end
function Wv()
	local d = 0
	local x = 0.0
	local y = 0.0
	local Xv = 0
	for _ in _loop_() do
		if Xv == Ot then break end
		d = Nt[Xv]
		if Rt[d] > 0 and GetUnitState(Pt[d], UNIT_STATE_LIFE) > 0 and GetUnitState(Qt[d], UNIT_STATE_LIFE) > 0 then
			Tt[d] = Tt[d] + 0.01
			if Tt[d] >= St[d] then
				Xt[d] = Xt[d] + Ut[d]
				Yt[d] = Yt[d] + Vt[d]
				Zt[d] = Zt[d] + Wt[d]
				x = GetUnitX(Pt[d]) + Yt[d] * Cos(Xt[d])
				y = GetUnitY(Pt[d]) + Yt[d] * Sin(Xt[d])
				x = RMinBJ(RMaxBJ(x * 1.0, I), H)
				y = RMinBJ(RMaxBJ(y * 1.0, J), l)
				SetUnitX(Qt[d], CheckX(x))
				SetUnitY(Qt[d], CheckY(y))
				SetUnitFlyHeight(Qt[d], Zt[d], 0.0)
				Tt[d] = 0.0
			end
			Rt[d] = Rt[d] - 0.01
		else
			z = Pt[d]
			Nu(Qt[d], 10)
			Pt[d] = nil
			Qt[d] = nil
			Gu(d)
			Ot = Ot - 1
			Nt[Xv] = Nt[Ot]
			Xv = Xv - 1
		end
		Xv = Xv + 1
	end
	if Ot == 0 then
		PauseTimer(o4)
	end
end
--转圈函数
function Yv(Zv, dw, ew, fw, gw, hw, iw)
	local d = Eu()
	local x1 = GetUnitX(dw)
	local y1 = GetUnitY(dw)
	local x2 = GetUnitX(Zv)
	local y2 = GetUnitY(Zv)
	Pt[d] = dw
	Qt[d] = Zv
	Rt[d] = hw
	St[d] = iw
	Ut[d] = ew * (3.14159 / 180.0)
	Vt[d] = fw
	Wt[d] = gw
	Xt[d] = Atan2(y2 - y1, x2 - x1)
	Yt[d] = SquareRoot((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
	Zt[d] = GetUnitFlyHeight(Qt[d])
	Nt[Ot] = d
	Ot = Ot + 1
	if Ot - 1 == 0 then
		TimerStart(o4, 0.01, true, Wv)
	end
end
function jw(kw)
	SetPlayerState(Player(12), PLAYER_STATE_NO_CREEP_SLEEP, IntegerTertiaryOp(kw, 0, 1))
	if not kw then
		Vv(Player(12))
	end
end
function vw(ww)
	local tm = LoadInteger(YDHT, StringHash(I2S(GetHandleId(ww))), StringHash("Timer"))
	FlushChildHashtable(YDHT, StringHash(I2S(GetHandleId(ww))))
	FlushChildHashtable(YDHT, StringHash(I2S(tm)))
	DestroyTimer(LoadTimerHandle(YDHT, StringHash(I2S(GetHandleId(ww))), StringHash("Timer")))
end
function xw()
	local tm = GetExpiredTimer()
	local ww = LoadUnitHandle(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Pet"))
	local yw = LoadUnitHandle(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Captain"))
	local x = GetUnitX(yw) - GetUnitX(ww)
	local y = GetUnitY(yw) - GetUnitY(ww)
	local d = x * x + y * y
	local v
	local a
	local e = nil
	local life = LoadReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Life"))
	local p = LoadInteger(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Percent"))
	v = LoadReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("GuardRanger"))
	if GetUnitState(ww, UNIT_STATE_LIFE) > 0 and GetUnitState(yw, UNIT_STATE_LIFE) > 0 then
		if d < v * v then
			if OrderId2String(GetUnitCurrentOrder(ww)) == nil and GetRandomInt(0, 100) < p then
				x = GetUnitX(yw)
				y = GetUnitY(yw)
				d = GetRandomReal(0, v)
				a = GetRandomReal(0, 360)
				IssuePointOrderById(ww, 851990, x + d * CosBJ(a), y + d * SinBJ(a))
			end
		else
			v = LoadReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("ReturnRanger"))
			if d < v * v then
				if OrderId2String(GetUnitCurrentOrder(ww)) == nil then
					IssuePointOrderById(ww, 851990, GetUnitX(yw), GetUnitY(yw))
				end
			else
				v = LoadReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("OutRanger"))
				if d ~= 0 and d > v * v then
					SetUnitPosition(ww, GetUnitX(yw), GetUnitY(yw))
					e = AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", yw, "chest")
					DestroyEffect(e)
				else
					IssuePointOrderById(ww, 851986, GetUnitX(yw), GetUnitY(yw))
				end
			end
		end
	else
		IssuePointOrderById(ww, 851983, GetUnitX(yw), GetUnitY(yw))
		vw(ww)
	end
	tm = nil
	ww = nil
	yw = nil
	e = nil
end
function zw(ww, yw, hw, Aw, aw, Bw, bw)
	local tm = CreateTimer()
	SaveTimerHandle(YDHT, StringHash(I2S(GetHandleId(ww))), StringHash("Timer"), tm)
	SaveUnitHandle(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("pet"), ww)
	SaveUnitHandle(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Captain"), yw)
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("Percent"), bw)
	SaveReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("GuardRanger"), Aw * 1.0)
	SaveReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("ReturnRanger"), aw * 1.0)
	SaveReal(YDHT, StringHash(I2S(GetHandleId(tm))), StringHash("OutRanger"), Bw * 1.0)
	TimerStart(tm, hw, true, xw)
	tm = nil
end
function Cw()
	local h = s4
	if s4 < 0 then
		if t4 >= 8000 then
			return 8100
		else
			t4 = t4 + 1
			return t4
		end
	end
	s4 = u4[h]
	return h
end
function cw(cu)
	u4[cu] = s4
	s4 = cu
end
function Dw(pw, Ew)
	local cu = Cw()
	local h = r4
	local t = R2I(100.0 * pw) + p4
	local p
	x4[cu] = Ew
	w4[cu] = t
	for _ in _loop_() do
		p = v4[h]
		if p < 0 or w4[p] >= t then
			v4[h] = cu
			v4[cu] = p
			return cu
		end
		h = p
	end
	return cu
end
function Fw()
	RemoveUnit(LoadUnitHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function Gw(pw, u)
	SaveUnitHandle(YDHT, c4, Dw(pw, y4), u)
end
function Hw()
	DestroyTimer(LoadTimerHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function Iw()
	RemoveItem(LoadItemHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function lw()
	DestroyEffect(LoadEffectHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function Jw(pw, e)
	SaveEffectHandle(YDHT, c4, Dw(pw, a4), e)
end
function Kw()
	DestroyLightning(LoadLightningHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function Lw(pw, lt)
	local i = Dw(pw, B4)
	SaveLightningHandle(YDHT, c4, i, lt)
end
function Mw()
	TriggerExecute(LoadTriggerHandle(YDHT, c4, q4))
	RemoveSavedHandle(YDHT, c4, q4)
end
function Nw(pw, tt)
	local N = 0
	local i = 0
	if pw <= 0 then
		pw = 0.01
	end
	SetTextTagPermanent(tt, false)
	SetTextTagLifespan(tt, pw)
	SetTextTagFadepoint(tt, pw)
end
function Ow()
	local h = r4
	local p
	for _ in _loop_() do
		q4 = v4[h]
		if q4 < 0 or p4 < w4[q4] then break end
		TriggerEvaluate(x4[q4])
		cw(q4)
		v4[h] = v4[q4]
	end
	p4 = p4 + 1
end
function Pw()
	C4 = CreateTimer()
	c4 = GetHandleId(C4)
	p4 = 0
	r4 = 0
	v4[0] = -1
	s4 = 1
	t4 = 1
	u4[1] = -1
	y4 = CreateTrigger()
	z4 = CreateTrigger()
	A4 = CreateTrigger()
	a4 = CreateTrigger()
	B4 = CreateTrigger()
	b4 = CreateTrigger()
	TriggerAddCondition(y4, Condition(Fw))
	TriggerAddCondition(z4, Condition(Hw))
	TriggerAddCondition(A4, Condition(Iw))
	TriggerAddCondition(a4, Condition(lw))
	TriggerAddCondition(B4, Condition(Kw))
	TriggerAddCondition(b4, Condition(Mw))
	TimerStart(C4, 0.01, true, Ow)
end
function Qw()
	local Rw = GetHandleId(GetExpiredTimer())
	local Pv = LoadTriggerHandle(YDHT, Rw, 851969)
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(Pv))), StringHash("RunIndex"), LoadInteger(YDHT, Rw, 851970))
	if TriggerEvaluate(Pv) then
		TriggerExecute(Pv)
	end
	Pv = nil
end
function Sw()
	local Rw = GetHandleId(GetExpiredTimer())
	local Pv = LoadTriggerHandle(YDHT, Rw, 851969)
	local Tw = LoadInteger(YDHT, Rw, 851971)
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(Pv))), StringHash("RunIndex"), LoadInteger(YDHT, Rw, 851970))
	if TriggerEvaluate(Pv) then
		TriggerExecute(Pv)
	end
	Tw = Tw - 1
	if Tw > 0 then
		SaveInteger(YDHT, Rw, 851971, Tw)
	else
		DestroyTimer(GetExpiredTimer())
		FlushChildHashtable(YDHT, Rw)
	end
	Pv = nil
end
--0秒无敌，用来抵消伤害
function WuDiQingChu()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	SetUnitInvulnerable(u, false)
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
end
function WuDi(u)
	local t = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SetUnitInvulnerable(u, true)
	TimerStart(t, 0, false, WuDiQingChu)
	t = nil
end
--使单位晕眩 先天功、铁布衫
function SetUnitDizzyDoc()
	local tm = GetExpiredTimer()
	local i = GetHandleId(tm)
	local Unit = LoadUnitHandle(YDHT, i, StringHash("unit"))
	local Eff = LoadEffectHandle(YDHT, i, StringHash("effect"))
	DestroyEffect(Eff)
	PauseUnit(Unit, false)
	FlushChildHashtable(YDHT, i)
	PauseTimer(tm)
	DestroyTimer(tm)
	tm = nil
	Unit = nil
	Eff = nil
end
function SetUnitDizzy(Unit, Size, ExFile)
	local tm = CreateTimer()
	local i = GetHandleId(tm)
	local loc = GetUnitLoc(Unit)
	--不无敌也不魔免
	if UnitHasBuffBJ(Unit, 1112040563) == false and IsUnitType(Unit, UNIT_TYPE_MAGIC_IMMUNE) == false then
		SaveUnitHandle(YDHT, i, StringHash("unit"), Unit)
		SaveEffectHandle(YDHT, i, StringHash("effect"), AddSpecialEffectTargetUnitBJ("overhead", Unit, ExFile))
		PauseUnit(Unit, true)
		CreateTextTagLocBJ("封穴", loc, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(Size, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		TimerStart(tm, Size, false, SetUnitDizzyDoc)
	end
	RemoveLocation(loc)
	loc = nil
	tm = nil
end
--===========================================================================
--绝学伤害系数
--@id:A06S 九阳真经散篇
--@id:A0DN 九阳神功
function jueXueXiShu(i)
	return (1.0 + I2R(juexuelingwu[i]) / 3) * (1 + 0.4 * GetUnitAbilityLevel(udg_hero[i], 1093678675) * (1 + GetUnitAbilityLevel(udg_hero[i], 1093682254)))
end

function ShangHaiGongShi(u, uc, w1, w2, shxishu, id)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local it = nil
	local j = 0
	local shanghai
	local attack
	local target_def
	--local real critical //暴击因子
	local dodge
	local random
	local depth
	local basic_damage
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		attack = (1 + 0.3 * GetUnitAbilityLevel(u, 1093678393)) * 25 * udg_lilianxishu[i] * (w1 * (1 + I2R(GetHeroStatBJ(0, u, true)) / 200) * (1 + I2R(GetHeroStatBJ(1, u, true)) / 200) + w2 * 0.03 * I2R(GetHeroStatBJ(2, u, true))) * (1.0 + GetUnitAbilityLevel(u, id)) * (udg_shanghaijiacheng[i] + 1.0) * shxishu
		if GetUnitAbilityLevel(u, id) == 9 then
			attack = attack * 3
		end
		--call BJDebugMsg(R2S(attack))
		j = 1
		for _ in _loop_() do
			if j >= 7 then break end
			if GetItemType(UnitItemInSlotBJ(u, j)) == ITEM_TYPE_ARTIFACT then
				it = UnitItemInSlotBJ(u, j)
			end
			j = j + 1
		end
		--君子剑、淑女剑
		if GetItemTypeId(it) == 1227897145 and (GetUnitTypeId(u) == 1328558128 or GetUnitTypeId(u) == 1328558129 or GetUnitTypeId(u) == 1328558132 or GetUnitTypeId(u) == 1328558666) then
			attack = attack * 1.5
		end
		if GetItemTypeId(it) == 1227897153 and (GetUnitTypeId(u) == 1328558130 or GetUnitTypeId(u) == 1328558131 or GetUnitTypeId(u) == 1328558643 or GetUnitTypeId(u) == 1328558664 or GetUnitTypeId(u) == 1328558665) then
			attack = attack * 1.5
		end
	else
		attack = 750 * (w1 + w2) * (1.0 + GetUnitAbilityLevel(u, id)) * shxishu
	end


	if uc == nil then
		target_def = 1
	else
		target_def = 1 / (1 + 0.05 * GetUnitLevel(uc))
	end
	--set critical = udg_baojishanghai[1+GetPlayerId(GetOwningPlayer(u))]
	if uc == nil then
		dodge = 25
	else
		dodge = RMinBJ(I2R(GetUnitLevel(uc)) / 8, 95.0)
		if UnitHasBuffBJ(uc, 1114860655) then
			dodge = 0.0
		end
	end
	depth = 1 + LoadReal(YDHT, GetHandleId(p), id * 12)
	random = GetRandomReal(0.95, 0.95 + I2R(udg_xinggeB[i]) / 20)
	basic_damage = attack * target_def * random * depth
	if GetRandomReal(0, 100) < dodge then
		shanghai = 0
	else
		shanghai = basic_damage
	end
	--==================原伤害公式==================//
	--local real factor1
	--local real factor2
	--local real factor3
	--local real factor4
	--local real factor5
	--local real factor6
	--local real factor7
	--if UnitTypeNotNull(u,UNIT_TYPE_HERO)==true then
	-- set j = 1
	-- loop
	-- 	exitwhen j >= 7
	--            if(GetItemType(UnitItemInSlotBJ(u,j))==ITEM_TYPE_ARTIFACT)then
	-- 	    	set it= UnitItemInSlotBJ(u,j)
	--            endif
	-- 	set j = j + 1
	-- endloop
	-- //招式伤害因子
	-- set factor1=udg_lilianxishu[i]*I2R(GetHeroStatBJ(0,u,true))/3/((1.+I2R(GetUnitLevel(uc))/10)*(1.+I2R(GetUnitLevel(uc))/10))
	-- //call BJDebugMsg("历练系数="+R2S(udg_lilianxishu[i])+" 招式伤害="+I2S(GetHeroStatBJ(0,u,true)))
	--    //内力因子
	--    set factor2=(150.+I2R(GetHeroStatBJ(1,u,true)))/150.
	--    //随机波动
	--    set factor3=GetRandomReal(10.,10.*(1+I2R(udg_xinggeB[i])/5))
	--    //真实伤害因子
	--    set factor4=I2R(GetHeroStatBJ(2,u,true))*1.2
	--    //暴击因子
	--    set factor5=1.
	--    //技能重数+伤害加成
	--    set factor6=(1.+GetUnitAbilityLevel(u,id))*(udg_shanghaijiacheng[i]+.6)/2
	--   //武器熟练度因子
	--    //if it!=null then
	--    //    set factor7=0.5+LoadReal(YDHT,GetHandleId(p),GetItemTypeId(it))/10000
	--    //else
	--        set factor7=1.0
	--    //endif
	--    //君子剑、淑女剑
	--    if GetItemTypeId(it)=='I099' and (GetUnitTypeId(u)=='O000' or GetUnitTypeId(u)=='O001' or GetUnitTypeId(u)=='O004') then
	--     //if Ce[i]==3 then
	--     //	set factor7=RMinBJ(factor7*2.5,5)
	--     //else
	--     //	set factor7=RMinBJ(factor7*2.5,3)
	--    	//endif
	--    	set factor7=1.5
	--    endif
	--    if GetItemTypeId(it)=='I09A' and (GetUnitTypeId(u)=='O002' or GetUnitTypeId(u)=='O003' or GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I') then
	--     //if Ce[i]==3 then
	--     //	set factor7=RMinBJ(factor7*2.5,5)
	--     //else
	--     //	set factor7=RMinBJ(factor7*2.5,3)
	--    	//endif
	--    	set factor7=1.5
	--    endif
	--else
	--    set factor1=I2R(GetUnitLevel(u))*GetUnitAbilityLevel(u,id)
	--    set factor2=3.
	--    set factor3=GetRandomReal(3.,60.*udg_nandu)
	--    set factor4=300
	--    set factor5=2.
	--    set factor6=5.
	--    set factor7=1.
	--endif
	--if GetUnitAbilityLevel(u,id)==9 then
	-- set factor6=factor6*5.
	--endif
	--//call BJDebugMsg("factor1="+R2S(factor1)+"factor2="+R2S(factor2)+"factor3="+R2S(factor3)+"factor4="+R2S(factor4)+"factor5="+R2S(factor5)+"factor6="+R2S(factor6)+"factor7="+R2S(factor7))
	--if GetRandomReal(0.,100.)<=100.*udg_baojilv[i] then
	--    set shanghai=shxishu*(w1*factor6*factor1*factor2+w2*factor4)*factor5*factor3*factor7
	--    set udg_baoji[i]=true
	--else
	--    set shanghai=shxishu*(w1*factor6*factor1*factor2+w2*factor4)*factor3*factor7
	--    set udg_baoji[i]=false
	--endif
	--if IsUnitType(uc,UNIT_TYPE_STRUCTURE) then
	-- set shanghai=0
	--endif
	p = nil
	it = nil
	SaveReal(YDHT, 1 + GetPlayerId(GetOwningPlayer(u)), id * 3, basic_damage)
	return shanghai
end
function WuGongShangHai(u, uc, shanghai)
	if shanghai == 0 then
		CreateTextTagUnitBJ("MISS", uc, 0.0, 11.0, 255.0, 0.0, 0.0, 30.0)
	else
		if GetRandomReal(0.0, 100.0) <= 100.0 * udg_baojilv[1 + GetPlayerId(GetOwningPlayer(u))] then
			UnitDamageTarget(u, uc, udg_baojishanghai[1 + GetPlayerId(GetOwningPlayer(u))] * shanghai, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
			CreateTextTagUnitBJ(I2S(R2I(shanghai)), uc, 0.0, 14.0, 100.0, 100.0, 0.0, 30.0)
		else
			UnitDamageTarget(u, uc, shanghai, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
			CreateTextTagUnitBJ(I2S(R2I(shanghai)), uc, 0.0, 11.0, 100.0, 100.0, 100.0, 30.0)
		end
	end
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400.0, GetRandomReal(80.0, 100.0))
	Nw(0.65, bj_lastCreatedTextTag)
end
function QiJueCoefficient(u)
	if UnitHaveItem(u, 1227895114) then
		return 1
	end
	return 0
end
--武功升重及掌门称号系统
function WuGongShengChong(u, id, r)
	local level = GetUnitAbilityLevel(u, id)
	local p = GetOwningPlayer(u)
	local idd = 0
	local i = 1 + GetPlayerId(p)
	if level > 0 and level < 7 then
		if UnitHasBuffBJ(u, 1110454576) then
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (5 + GetUnitAbilityLevel(u, 1093677654) // 2 + 2 * udg_jwjs[i]) * (2 + QiJueCoefficient(u)) // 40)
		else
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (4 + 2 * udg_jwjs[i]) * (2 + QiJueCoefficient(u)) // 40)
		end
		SaveStr(YDHT, GetHandleId(GetOwningPlayer(u)), id * 2, (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id)) or "") .. "/" .. (I2S(R2I(r * level)) or ""))
		if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) > R2I(r) * level then
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, 0)
			IncUnitAbilityLevel(u, id)
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
		end
	elseif level > 0 and level < 9 then
		if GetRandomReal(1.0, r * I2R(level)) <= I2R(wuxing[i]) / 2 * (1 + 0.6 * udg_jwjs[i]) or UnitHasBuffBJ(u, 1110454576) and GetRandomReal(1.0, r * I2R(level)) <= I2R(wuxing[i]) / 2 * (2 + 0.3 * GetUnitAbilityLevel(u, 1093677654) + 0.6 * udg_jwjs[i]) then
			if id ~= 1093678935 then
				IncUnitAbilityLevel(u, id)
				SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
				if level + 1 == 9 and Ce[i] == 8 then
					wuxuedian[i] = wuxuedian[i] + 2
					DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")
					if udg_jwjs[i] <= 2 and udg_jwjsbool[i] == false then
						udg_jwjs[i] = udg_jwjs[i] + 1
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第" .. (I2S(udg_jwjs[i]) or "") .. "个九重武功，练成3个可获得宗师哦")
					end
					if udg_jwjs[i] == 3 and udg_jwjsbool[i] == false then
						udg_jwjsbool[i] = true
						if udg_zhangmen[i] == true then
						else
							SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓精武宗师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
						end
						DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得精武宗师")
						SetPlayerName(p, "〓精武宗师〓" .. (GetPlayerName(p) or ""))
					end
				end
			end
		else
			if udg_xinggeB[i] >= 4 or UnitHaveItem(u, 1227895114) then
				if id ~= 1093678935 then
					if UnitHasBuffBJ(u, 1110454576) then
						SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (2 + QiJueCoefficient(u)) // 20 * (2 + GetUnitAbilityLevel(u, 1093677654) // 4 + udg_jwjs[i]) // 3 * 2)
					else
						SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (2 + QiJueCoefficient(u)) // 20 * (2 + udg_jwjs[i]) // 3 * 2)
					end
				end
				SaveStr(YDHT, GetHandleId(GetOwningPlayer(u)), id * 2, (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id)) or "") .. "/" .. (I2S(R2I(r * level)) or ""))
				if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) > R2I(r) * level then
					SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, 0)
					IncUnitAbilityLevel(u, id)
					SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
					if level + 1 == 9 and Ce[i] == 8 then
						wuxuedian[i] = wuxuedian[i] + 2
						DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")
						if udg_jwjs[i] <= 2 and udg_jwjsbool[i] == false then
							udg_jwjs[i] = udg_jwjs[i] + 1
							DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第" .. (I2S(udg_jwjs[i]) or "") .. "个九重武功，练成3个可获得宗师哦")
						end
						if udg_jwjs[i] == 3 and udg_jwjsbool[i] == false then
							udg_jwjsbool[i] = true
							if udg_zhangmen[i] == true then
							else
								SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓精武宗师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
							end
							DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得精武宗师")
							SetPlayerName(p, "〓精武宗师〓" .. (GetPlayerName(p) or ""))
						end
					end
				end
			end
		end
	end

	p = nil
end
--击退系统
function knock_back_condition()
	local u = LoadUnitHandle(YDHT, StringHash("击退"), 0)
	local shanghai = LoadReal(YDHT, StringHash("击退"), 1)
	local uc = GetFilterUnit()
	if IsUnitEnemy(uc, GetOwningPlayer(u)) then
	--call DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
	--call WuGongShangHai(u,uc,shanghai)
	end
	uc = nil
	u = nil
	FlushChildHashtable(YDHT, StringHash("击退"))
	return false
end
function knock_back_on_timer()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local step = LoadInteger(YDHT, p, 1) + 1
	local shanghai = LoadReal(YDHT, p, 6)
	local g = CreateGroup()
	--call  DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
	SaveInteger(YDHT, p, 1, step)
	if IsTerrainPathable(GetUnitX(u) + LoadReal(YDHT, p, 3), GetUnitY(u) + LoadReal(YDHT, p, 4), PATHING_TYPE_WALKABILITY) == false then
		SetUnitX(u, CheckX(GetUnitX(u) + LoadReal(YDHT, p, 3)))
		SetUnitY(u, CheckY(GetUnitY(u) + LoadReal(YDHT, p, 4)))
		DestroyEffect(AddSpecialEffect(LoadStr(YDHT, p, 5), GetUnitX(u), GetUnitY(u)))
	end
	SaveUnitHandle(YDHT, StringHash("击退"), 0, u)
	SaveReal(YDHT, StringHash("击退"), 1, shanghai)
	GroupEnumUnitsInRange(g, CheckX(GetUnitX(u)), CheckY(GetUnitY(u)), 500, Condition(knock_back_condition))
	if step >= LoadInteger(YDHT, p, 2) then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
	end
	GroupClear(g)
	DestroyGroup(g)
	g = nil
	u = nil
	t = nil
end
--击退函数
function knock_back(u, angle, dist, time, period, model, shanghai)
	local t = CreateTimer()
	local p = GetHandleId(t)
	local m = R2I(time / period)
	dist = dist / m --  单次位移距离
	SaveUnitHandle(YDHT, p, 0, u) --  存储被击退单位
	SaveInteger(YDHT, p, 1, 0) --  存储循环计数
	SaveInteger(YDHT, p, 2, m) --  存储次数
	SaveReal(YDHT, p, 3, dist * Cos(angle)) --  存储x轴速度分量
	SaveReal(YDHT, p, 4, dist * Sin(angle)) --  存储y轴速度分量
	SaveStr(YDHT, p, 5, model)
	SaveReal(YDHT, p, 6, shanghai) --存储伤害
	TimerStart(t, period, true, knock_back_on_timer)
	t = nil
end
function IsCertainWuGong(u, uc, id)
	return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] // 5 and GetUnitAbilityLevel(u, id) >= 1 and IsUnitEnemy(uc, GetOwningPlayer(u))
end
--BOSS AI放技能
function IsUnitBoss()
	return GetUnitPointValue(GetTriggerUnit()) == 101
end
function BossFangJiNeng()
	local u = GetTriggerUnit()
	local uc = GetEventDamageSource()
	local x = GetUnitX(uc)
	local y = GetUnitY(uc)
	if GetRandomInt(1, 100) < 50 then
		if GetUnitTypeId(GetTriggerUnit()) == u7[1] then
			IssuePointOrderById(u, 852600, x, y)
		elseif GetUnitTypeId(GetTriggerUnit()) == u7[2] then
			if GetRandomInt(1, 3) == 1 then
				IssueTargetOrderById(u, 852600, uc)
			elseif GetRandomInt(1, 2) == 1 then
				IssueImmediateOrderById(u, 852177)
			else
				IssueImmediateOrderById(u, 852178)
			end
		elseif GetUnitTypeId(GetTriggerUnit()) == u7[3] then
			IssuePointOrderById(u, 852600, x, y)
		elseif GetUnitTypeId(GetTriggerUnit()) == u7[4] then
			IssuePointOrderById(u, 852600, x, y)
		elseif GetUnitTypeId(GetTriggerUnit()) == u7[5] then
			IssueTargetOrder(u, "chemicalrage", u)
		elseif GetUnitTypeId(GetTriggerUnit()) == u7[6] then
			IssueTargetOrder(u, "devour", u)
		end
	end
	u = nil
	uc = nil
end

function WanBuff_1(buffnum, num, uc, id, orderid, l__ut, s)
	local u
	local p
	local loc
	if buffnum == num then
		p = GetOwningPlayer(uc)
		loc = GetUnitLoc(l__ut)
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		u = bj_lastCreatedUnit
		ShowUnitHide(u)
		UnitAddAbility(u, id)
		if num == 12 or num == 14 then
			IncUnitAbilityLevel(u, id)
		end
		IssueTargetOrderById(u, orderid, l__ut)
		UnitApplyTimedLife(u, 1112045413, 2.0)
		CreateTextTagLocBJ(s, loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		RemoveLocation(loc)
	end
	loc = nil
	p = nil
	u = nil
end
function WanBuff(u, l__ut, buffnum)
	WanBuff_1(buffnum, 1, u, 1093678903, 852111, l__ut, "内伤")
	WanBuff_1(buffnum, 2, u, 1093678905, 852668, l__ut, "走火入魔")
	WanBuff_1(buffnum, 3, u, 1093678901, 852527, l__ut, "流血")
	WanBuff_1(buffnum, 4, u, 1093678665, 852189, l__ut, "混乱")
	WanBuff_1(buffnum, 5, u, 1093681498, 852075, l__ut, "昏迷")
	WanBuff_1(buffnum, 6, u, 1093678902, 852075, l__ut, "重伤")
	WanBuff_1(buffnum, 7, u, 1093678904, 852527, l__ut, "血流不止")
	WanBuff_1(buffnum, 8, u, 1093681497, 852190, l__ut, "麻痹")
	WanBuff_1(buffnum, 9, u, 1093677369, 852149, l__ut, "破防")
	WanBuff_1(buffnum, 10, u, 1093678414, 852190, l__ut, "神经错乱")
	WanBuff_1(buffnum, 11, u, 1093678412, 852095, l__ut, "封穴")
	WanBuff_1(buffnum, 12, u, 1093678412, 852095, l__ut, "穴位全封")
	WanBuff_1(buffnum, 13, u, 1093678900, 852527, l__ut, "中毒")
	WanBuff_1(buffnum, 14, u, 1093678900, 852527, l__ut, "深度中毒")
end
--封装CreateTimerDialog方法并使对话框自动显示
function createTimerDialog(t, title)
	CreateTimerDialogBJ(t, title)
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	return bj_lastCreatedTimerDialog
end

function maJiaUseAbilityAtEnemysLoc(owner, unitId, abilityId, orderId, target, lifeTime)
	local loc = GetUnitLoc(target)
	CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, abilityId)
	IssueTargetOrderById(bj_lastCreatedUnit, orderId, target)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, lifeTime)
	RemoveLocation(loc)
	loc = nil
end

function maJiaUseLeveldAbilityAtTargetLoc(owner, unitId, abilityId, ablilityLevel, orderId, target, lifeTime)
	local loc = GetUnitLoc(target)
	CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, abilityId)
	SetUnitAbilityLevel(bj_lastCreatedUnit, abilityId, ablilityLevel)
	IssueTargetOrderById(bj_lastCreatedUnit, orderId, target)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, lifeTime)
	RemoveLocation(loc)
	loc = nil
end

function PassiveWuGongCondition(playerControllingUnit, enemy, abilityId)
	return GetUnitAbilityLevel(playerControllingUnit, abilityId) >= 1 and IsUnitEnemy(enemy, GetOwningPlayer(playerControllingUnit))
end

function PassiveWuGongAction(playerControllingUnit, enemy, possibility, range, filter, callback, abilityId, upgradeSpeed)
	local loc = GetUnitLoc(playerControllingUnit)
	local i = 1 + GetPlayerId(GetOwningPlayer(playerControllingUnit))
	if GetRandomInt(1, 100) <= fuyuan[i] // 5 + possibility then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, loc, filter), callback)
		WuGongShengChong(playerControllingUnit, abilityId, upgradeSpeed)
	end
	RemoveLocation(loc)
	loc = nil
end

function DamageFilter(playerControllingUnit, filtered)
	return IsUnitAliveBJ(filtered) and IsUnitEnemy(filtered, GetOwningPlayer(playerControllingUnit))
end

function DamageCoefficientByAbility(u, abilityId, coefficient)
	if GetUnitAbilityLevel(u, abilityId) >= 1 then
		return coefficient
	end
	return 0.0
end

function DamageCoefficientByItem(u, itemId, coefficient)
	if UnitHaveItem(u, itemId) then
		return coefficient
	end
	return 0.0
end

function PassiveWuGongEffectAndDamage(playerControllingUnit, enemy, modelName, w1, w2, damageCoefficient, abilityId)
	local loc = GetUnitLoc(enemy)
	DestroyEffect(AddSpecialEffectLoc(modelName, loc))
	WuGongShangHai(playerControllingUnit, enemy, ShangHaiGongShi(playerControllingUnit, enemy, w1, w2, damageCoefficient, abilityId))
	RemoveLocation(loc)
	loc = nil
end

function FontFloat(s, loc, zoffset, size, red, green, blue, transparency, time)
	CreateTextTagLocBJ(s, loc, zoffset, size, red, green, blue, transparency)
	Nw(time, bj_lastCreatedTextTag)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
end

function clearTimer(tm)
	FlushChildHashtable(YDHT, GetHandleId(tm))
	PauseTimer(tm)
	DestroyTimer(tm)
end
-----------------------------------
-- 游戏逻辑处理
-- 1. 基地保护逻辑
-- 2. 选择英雄及门派
-- 3. 设置游戏模式和难度
-- 4. 游戏界面显示相关
-- 5. 游戏胜利和失败
-- 6. 玩家英雄阵亡和复活
-- 7. 刷怪相关
-- 8. 鸟的技能
-- 9. 英雄升级
-- 10. 各类回复
-- 11. 远程传送
-- 12. 古董系统
-- 14. 积分和声望换物品、武学精要
-- 15. 学习和遗忘武功（含激活残章）
-- 16. 合成物品
-- 17. 伴侣系统
-- 18. 整理地图上物品
-- 19. 其他琐碎逻辑
-----------------------------------

--基地保护机制
function IsJiDiBaoHu()
	return GetTriggerUnit() == udg_ZhengPaiWL and GetEventDamage() > GetUnitState(udg_ZhengPaiWL, UNIT_STATE_MAX_LIFE) * 0.03
end
function JiDiBaoHu()
	WuDi(udg_ZhengPaiWL)
	SetUnitLifePercentBJ(udg_ZhengPaiWL, GetUnitLifePercent(udg_ZhengPaiWL) - 3.0)
end
--云大救家
function Trig_YunDaXianShenConditions()
	return GetTriggerUnit() == udg_ZhengPaiWL and GetUnitLifePercent(udg_ZhengPaiWL) <= 25.0 and udg_yunyangxianshen == false
end
function Trig_YunDaXianShenActions()
	udg_yunyangxianshen = true
	CreateNUnitsAtLoc(1, 1214409837, Player(5), OffsetLocation(GetUnitLoc(udg_ZhengPaiWL), 0, 200), 90.0)
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cFFFF6600基地严重受创，云杨现身相助")
	UnitApplyTimedLife(GetLastCreatedUnit(), 1112045413, 20.0)
	UnitAddAbility(udg_ZhengPaiWL, 1098282348)
	YDWEPolledWaitNull(20.0)
	UnitRemoveAbilityBJ(1098282348, udg_ZhengPaiWL)
end
--买基地无敌
function BuyJiDiWuDi()
	return GetItemTypeId(GetManipulatedItem()) == 1227896664
end
function JiDiWuDi()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 849994952, udg_ZhengPaiWL)
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff33在正义之士的庇护下，武林暂时无敌了（20秒后解除）")
	SetUnitInvulnerable(LoadUnitHandle(YDHT, id * cx, 849994952), true)
	YDWEPolledWaitNull(20.0)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitInvulnerable(LoadUnitHandle(YDHT, id * cx, 849994952), false)
	FlushChildHashtable(YDHT, id * cx)
end
--基地挨打
function JiDiAiDa_Conditions()
	return GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_COMPUTER
end
function laojiayouren()
	return IsUnitAlly(GetFilterUnit(), Player(0)) and IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER
end
function JiDiAiDa_Actions()
	--==============反仇恨机制定义单位组==============
	local g = CreateGroup()
	--==============反仇恨机制定义单位组==============
	PingMinimapLocForForce(GetPlayersAll(), GetUnitLoc(udg_ZhengPaiWL), 1)
	if GetRandomInt(30, 50) == 48 then
		DisplayTextToForce(GetPlayersAll(), "|CFFCCFF00正派武林受到攻击，请赶紧回防")
	end
	if GetRandomInt(30, 50) == 45 and GetUnitTypeId(GetAttacker()) ~= u7[1] and GetUnitTypeId(GetAttacker()) ~= u7[2] and GetUnitTypeId(GetAttacker()) ~= u7[3] and GetUnitTypeId(GetAttacker()) ~= u7[4] and GetUnitTypeId(GetAttacker()) ~= u7[5] and GetUnitTypeId(GetAttacker()) ~= u7[6] and GetUnitTypeId(GetAttacker()) ~= u7[7] and GetUnitTypeId(GetAttacker()) ~= u7[8] then
		SetUnitPositionLoc(GetAttacker(), GetRectCenter(udg_jail))
		DisplayTextToForce(GetPlayersAll(), "|CFFCCFFCC正派武林将攻击单位抓进了监狱")
	end
	--==========反仇恨机制，按云大建议去掉==============
	GroupEnumUnitsInRangeOfLoc(g, GetUnitLoc(udg_ZhengPaiWL), 800, Condition(laojiayouren))
	if IsUnitGroupEmptyBJ(g) == false then
		UnitAddAbility(udg_ZhengPaiWL, 1093677139)
		--call SetUnitInvulnerable(udg_ZhengPaiWL,true)
		GroupClear(g)
		YDWEPolledWaitNull(5.0)
		--call SetUnitInvulnerable(udg_ZhengPaiWL,false)
		UnitRemoveAbility(udg_ZhengPaiWL, 1093677139)
		g = nil
	end
--==========反仇恨机制，按云大建议去掉==============
end
--购买城防
function BuyChengFang()
	return GetItemTypeId(GetManipulatedItem()) == 1227896147
end
function ShengChengFang()
	local id = GetHandleId(GetTriggeringTrigger())
	SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	if GetPlayerTechCountSimple(1378889776, Player(5)) <= 29 then
		SetPlayerTechResearchedSwap(1378889776, GetPlayerTechCountSimple(1378889776, Player(5)) + 1, Player(5))
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFD700在玩家：" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "的无私奉献下，正派武林的城防得到加强了")
		shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] + 15
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF34FF00守家积分+15")
	else
		AdjustPlayerStateBJ(20000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF0000城防已达最高，无法继续升级|r")
	end
end
--高级城防
function BuyGaoChengFang()
	return GetItemTypeId(GetManipulatedItem()) == 1227896917
end
function ShengGaoChengFang()
	local id = GetHandleId(GetTriggeringTrigger())
	SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	if udg_boshu >= 18 then
		if GetPlayerTechCountSimple(1378889778, Player(5)) <= 9 then
			SetPlayerTechResearchedSwap(1378889778, GetPlayerTechCountSimple(1378889778, Player(5)) + 1, Player(5))
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFD700在玩家：" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "的无私奉献下，正派武林的高级城防得到加强了")
			shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] + 25
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF34FF00守家积分+25")
		else
			AdjustPlayerStateBJ(50000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF0000高级城防已达最高，无法继续升级|r")
		end
	else
		AdjustPlayerStateBJ(50000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF000018波进攻怪以后才能使用此功能哦|r")
	end
end

--选择英雄
function fx()
	return udg_hashero[1 + GetPlayerId(GetTriggerPlayer())] == false and IsUnitInGroup(GetTriggerUnit(), i7)
end
function SelectHero()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	local u = GetTriggerUnit()
	if GetUnitTypeId(L4[i]) == GetUnitTypeId(u) then
		if u == K4[1] or u == K4[2] or u == K4[3] or u == K4[4] or u == K4[5] or u == K4[6] or u == K4[7] then
			Q4 = GetRandomLocInRect(Ge)
			CreateNUnitsAtLoc(1, GetUnitTypeId(u), p, Q4, bj_UNIT_FACING)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
		end
		if u == K4[1] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n")
			wuxing[i] = wuxing[i] + 5
			fuyuan[i] = fuyuan[i] + 2
			yishu[i] = yishu[i] + 3
			udg_xinggeA[i] = GetRandomInt(1, 3)
			udg_xinggeB[i] = GetRandomInt(3, 5)
			RemoveUnit(K4[1])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[2] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（男）|r\n")
			wuxing[i] = wuxing[i] + 2
			gengu[i] = gengu[i] + 2
			danpo[i] = danpo[i] + 1
			fuyuan[i] = fuyuan[i] + 5
			udg_xinggeA[i] = GetRandomInt(2, 4)
			udg_xinggeB[i] = GetRandomInt(2, 4)
			RemoveUnit(K4[2])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[3] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00莫言|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（女）|r\n")
			wuxing[i] = wuxing[i] + 2
			danpo[i] = danpo[i] + 5
			jingmai[i] = jingmai[i] + 1
			yishu[i] = yishu[i] + 2
			udg_xinggeA[i] = GetRandomInt(3, 5)
			udg_xinggeB[i] = GetRandomInt(1, 3)
			RemoveUnit(K4[3])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[4] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00浪云|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
			gengu[i] = gengu[i] + 3
			jingmai[i] = jingmai[i] + 5
			yishu[i] = yishu[i] + 2
			udg_xinggeA[i] = GetRandomInt(2, 4)
			udg_xinggeB[i] = GetRandomInt(2, 4)
			RemoveUnit(K4[4])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[5] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00魔君|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
			gengu[i] = gengu[i] + 5
			danpo[i] = danpo[i] + 2
			jingmai[i] = jingmai[i] + 3
			udg_xinggeA[i] = GetRandomInt(1, 3)
			udg_xinggeB[i] = GetRandomInt(3, 5)
			RemoveUnit(K4[5])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[6] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00兰馨|r\n请选择任意门派后开启江湖之旅|r\n")
			gengu[i] = gengu[i] + 3
			danpo[i] = danpo[i] + 3
			jingmai[i] = jingmai[i] + 3
			wuxing[i] = wuxing[i] + 3
			yishu[i] = yishu[i] + 3
			fuyuan[i] = fuyuan[i] + 3
			udg_xinggeA[i] = GetRandomInt(3, 5)
			udg_xinggeB[i] = GetRandomInt(3, 5)
			--call RemoveUnit(K4[6])
			RemoveUnit(vipbanlv[i])
		elseif u == K4[7] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00瑾轩|r\n请选择任意门派后开启江湖之旅|r\n")
			gengu[i] = gengu[i] + 3
			danpo[i] = danpo[i] + 3
			jingmai[i] = jingmai[i] + 3
			wuxing[i] = wuxing[i] + 3
			yishu[i] = yishu[i] + 3
			fuyuan[i] = fuyuan[i] + 3
			udg_xinggeA[i] = GetRandomInt(3, 5)
			udg_xinggeB[i] = GetRandomInt(3, 5)
			--call RemoveUnit(K4[6])
			RemoveUnit(vipbanlv[i])
		end
		if u == K4[1] or u == K4[2] or u == K4[3] or u == K4[4] or u == K4[5] or u == K4[6] or u == K4[7] then
			SelectUnitRemoveForPlayer(u, p)
			SelectUnitAddForPlayer(bj_lastCreatedUnit, p)
			udg_hashero[i] = true
			AddSpecialEffectTargetUnitBJ("overhead", bj_lastCreatedUnit, "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
			DestroyEffect(bj_lastCreatedEffect)
			udg_hero[i] = bj_lastCreatedUnit
			O4 = O4 + 1
			RemoveLocation(Q4)
			DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
			DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
		end
	else
		L4[i] = u
		if u == K4[1] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[1])
		elseif u == K4[2] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[2])
		elseif u == K4[3] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[3])
		elseif u == K4[4] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[4])
		elseif u == K4[5] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[5])
		elseif u == K4[6] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[6])
		elseif u == K4[7] then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
			SetUnitAnimation(u, "attack")
			YDWEPolledWaitNull(2)
			ResetUnitAnimation(K4[7])
		end
	end
	p = nil
	u = nil
end
--选择门派
function kx()
	return GetTriggerUnit() == Rs and udg_runamen[1 + GetPlayerId(GetTriggerPlayer())] == 0
end
function MenPai()
	if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558130 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558129 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558131 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558132 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558128 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入任意门派|r\n")
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558666 then
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入任意门派|r\n")
	end
end
--选择门派加入
function WuMenPai_Condition()
	return IsUnitType(GetLeavingUnit(), UNIT_TYPE_HERO) ~= nil and udg_runamen[1 + GetPlayerId(GetOwningPlayer(GetLeavingUnit()))] == 0 and GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER -- INLINED!!
end
--自由门派
function WuMenPai_Action()
	local u = GetLeavingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	udg_runamen[i] = 11
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "选择了〓自由门派〓|r")
	SetPlayerName(p, "〓自由门派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦），请在NPC郭靖处选择副职")
	UnitAddAbility(u, 1093678418)
	AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
	AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	UnitAddAbility(u, 1093678128)
	UnitAddAbility(u, 1093678129)
	UnitAddAbility(u, 1093678130)
	I7[(i - 1) * 20 + 8] = 1093678418
	UnitRemoveAbility(u, 1098282348)
	Q4 = GetRandomLocInRect(He)
	SetUnitPositionLoc(u, Q4)
	PanCameraToTimedLocForPlayer(p, Q4, 0)
	CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
	AdjustPlayerStateBJ(60, p, PLAYER_STATE_RESOURCE_LUMBER)
	P4[i] = bj_lastCreatedUnit
	udg_shuxing[i] = udg_shuxing[i] + 5
	RemoveLocation(Q4)
	UnitAddItemByIdSwapped(1227896394, u)
	u = nil
	p = nil
end
-- 加入门派的itemid
function ox()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemTypeId(GetManipulatedItem()) == 1227894833 or GetItemTypeId(GetManipulatedItem()) == 1227894834 or GetItemTypeId(GetManipulatedItem()) == 1227894835 or GetItemTypeId(GetManipulatedItem()) == 1227894836 or GetItemTypeId(GetManipulatedItem()) == 1227894837 or GetItemTypeId(GetManipulatedItem()) == 1227894838 or GetItemTypeId(GetManipulatedItem()) == 1227894839 or GetItemTypeId(GetManipulatedItem()) == 1227894840 or GetItemTypeId(GetManipulatedItem()) == 1227894841 or GetItemTypeId(GetManipulatedItem()) == 1227897157 or GetItemTypeId(GetManipulatedItem()) == 1227894849 or GetItemTypeId(GetManipulatedItem()) == 1227897166 or GetItemTypeId(GetManipulatedItem()) == 1227899186 or GetItemTypeId(GetManipulatedItem()) == 1227899723 or GetItemTypeId(GetManipulatedItem()) == 1227899736) -- INLINED!!
end
function JiaRuMenPai()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_runamen[i] ~= 0 then
		if GetItemTypeId(GetManipulatedItem()) == 1227897157 and udg_runamen[i] == 11 and GetUnitLevel(u) < 2 and GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 60 then
			udg_runamen[i] = 13
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "改拜入了〓姑苏慕容〓，大家一起膜拜他|r")
			SetPlayerName(p, "〓姑苏慕容〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			AdjustPlayerStateBJ(-60, p, PLAYER_STATE_RESOURCE_LUMBER)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你已经加过门派了|r")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894833 then
		if GetUnitTypeId(u) ~= 1328558130 and GetUnitTypeId(u) ~= 1328558131 then
			udg_runamen[i] = 1
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓少林派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓少林派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 3
			jingmai[i] = jingmai[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894834 then
		if GetUnitTypeId(u) ~= 1328558128 then
			udg_runamen[i] = 3
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓丐帮〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓丐帮〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			danpo[i] = danpo[i] + 3
			jingmai[i] = jingmai[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894835 then
		if GetUnitTypeId(u) ~= 1328558130 then
			udg_runamen[i] = 4
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓华山派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓华山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			wuxing[i] = wuxing[i] + 3
			danpo[i] = danpo[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894836 then
		if GetUnitTypeId(u) ~= 1328558132 and GetUnitTypeId(u) ~= 1328558131 then
			udg_runamen[i] = 5
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓全真教〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓全真教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			jingmai[i] = jingmai[i] + 3
			fuyuan[i] = fuyuan[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894837 then
		if GetUnitTypeId(u) ~= 1328558129 and GetUnitTypeId(u) ~= 1328558130 then
			udg_runamen[i] = 6
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓血刀门〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓血刀门〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 2
			danpo[i] = danpo[i] + 3
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894838 then
		if GetUnitTypeId(u) ~= 1328558132 and GetUnitTypeId(u) ~= 1328558128 and GetUnitTypeId(u) ~= 1328558129 then
			udg_runamen[i] = 7
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓恒山派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓恒山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			yishu[i] = yishu[i] + 3
			fuyuan[i] = fuyuan[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894839 then
		if GetUnitTypeId(u) ~= 1328558132 then
			udg_runamen[i] = 8
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓峨眉派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓峨眉派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 3
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894840 then
		if GetUnitTypeId(u) ~= 1328558129 then
			udg_runamen[i] = 10
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓星宿派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓星宿派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			Q4 = GetRandomLocInRect(He)
			UnitRemoveAbility(u, 1098282348)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			danpo[i] = danpo[i] + 2
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894841 then
		if GetUnitTypeId(u) ~= 1328558131 then
			udg_runamen[i] = 9
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓武当派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓武当派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			UnitRemoveAbility(u, 1098282348)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 1
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227894849 then
		if GetUnitTypeId(u) ~= 1328558128 then
			udg_runamen[i] = 2
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓古墓派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓古墓派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			wuxing[i] = wuxing[i] + 2
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897166 then
		udg_runamen[i] = 14
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓明教〓，请在NPC郭靖处选择副职|r")
		SetPlayerName(p, "〓明教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
		UnitAddAbility(u, 1093678418)
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(u, 1093678128)
		UnitAddAbility(u, 1093678129)
		UnitAddAbility(u, 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(u, 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(u, Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		P4[i] = bj_lastCreatedUnit
		wuxing[i] = wuxing[i] + 3
		jingmai[i] = jingmai[i] + 2
		fuyuan[i] = fuyuan[i] + 2
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, u)
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899186 then
		if GetUnitTypeId(u) ~= 1328558130 and GetUnitTypeId(u) ~= 1328558131 then
			udg_runamen[i] = 15
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓衡山派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓衡山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			wuxing[i] = wuxing[i] + 3
			yishu[i] = yishu[i] + 2
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899723 then
		if GetUnitTypeId(u) == 1328558128 or GetUnitTypeId(u) == 1328558129 or GetUnitTypeId(u) == 1328558132 or GetUnitTypeId(u) == 1328558666 then
			udg_runamen[i] = 16
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓神龙教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 2
			fuyuan[i] = fuyuan[i] + 2
			danpo[i] = danpo[i] + 1
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			udg_runamen[i] = 17
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓神龙教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 2
			fuyuan[i] = fuyuan[i] + 2
			danpo[i] = danpo[i] + 1
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899736 then
		if GetUnitTypeId(u) ~= 1328558131 then
			udg_runamen[i] = 18
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933恭喜加入〓泰山派〓，请在NPC郭靖处选择副职|r")
			SetPlayerName(p, "〓泰山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			UnitAddAbility(u, 1093678418)
			AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			UnitAddAbility(u, 1093678128)
			UnitAddAbility(u, 1093678129)
			UnitAddAbility(u, 1093678130)
			I7[(i - 1) * 20 + 8] = 1093678418
			UnitRemoveAbility(u, 1098282348)
			Q4 = GetRandomLocInRect(He)
			SetUnitPositionLoc(u, Q4)
			PanCameraToTimedLocForPlayer(p, Q4, 0)
			CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
			P4[i] = bj_lastCreatedUnit
			gengu[i] = gengu[i] + 3
			wuxing[i] = wuxing[i] + 1
			yishu[i] = yishu[i] + 1
			RemoveLocation(Q4)
			UnitAddItemByIdSwapped(1227896394, u)
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff0000你的角色不能加入该门派")
		end
	end
	p = nil
	u = nil
end

--主机选择模式
function Trig_____________u_Func002C()
	return GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING
end
function ChooseMoShi()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF40主机开始选择游戏模式")
	if GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING then -- INLINED!!
		DialogClear(udg_index)
		DialogSetMessage(udg_index, "请选择游戏模式")
		udg_index0 = DialogAddButtonBJ(udg_index, "|cFF00CC00普通模式")
		udg_index1 = DialogAddButtonBJ(udg_index, "|cFFCC0066特殊事件模式")
		udg_index2 = DialogAddButtonBJ(udg_index, "|cFFFF6600生存模式")
		udg_index3 = DialogAddButtonBJ(udg_index, "|cFF6600FF快速通关模式")
		DialogDisplayBJ(true, udg_index, Player(0))
	end
end
function ChooseMoShi_Action()
	if GetClickedButton() == udg_index0 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了普通模式")
		udg_teshushijian = false
		udg_shengchun = false
	end
	if GetClickedButton() == udg_index1 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了特殊事件模式")
		udg_teshushijian = true
		udg_shengchun = false
	end
	if GetClickedButton() == udg_index2 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了生存模式")
		udg_teshushijian = false
		udg_shengchun = true
	end
	if GetClickedButton() == udg_index3 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了快速通关模式")
		udg_teshushijian = false
		udg_shengchun = false
		udg_sutong = true
	end
end
--调整游戏难度
function GameNanDu_Condition()
	--非特殊事件模式、非生存模式
	return udg_teshushijian == false and udg_shengchun == false
end
function GameNanDu()
	local t = GetTriggeringTrigger()
	local id = GetHandleId(t)
	local i = 0
	local level = 0
	if S2I(SubStringBJ(GetEventPlayerChatString(), 3, 5)) == 0 then
		i = 10
	else
		i = S2I(SubStringBJ(GetEventPlayerChatString(), 3, 5)) * 10
	end
	level = GetPlayerTechCountSimple(1378889777, Player(12))
	if level == 50 then
		DisplayTextToPlayer(Player(0), 0, 0, "当前已为最高难度了")
	else
		if level + i >= 50 then
			i = 50 - level
		end
		AddPlayerTechResearched(Player(12), 1378889777, i)
		AddPlayerTechResearched(Player(6), 1378889777, i)
		AddPlayerTechResearched(Player(15), 1378889777, i)
		udg_nandu = udg_nandu + i // 10
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "玩家1输入“up”提高了游戏难度，目前游戏难度为" .. (I2S(udg_nandu) or ""))
		if udg_nandu == 5 then
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
		end
	end
	t = nil
end
function ChooseNanDu()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF40主机开始选择游戏难度")
	if GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING then -- INLINED!!
		DialogClear(udg_nan)
		DialogSetMessage(udg_nan, "请选择游戏难度")
		if udg_nandu <= 0 then
			udg_nan0 = DialogAddButtonBJ(udg_nan, "|cFF00CC00初入江湖")
		end
		if udg_nandu <= 1 then
			udg_nan1 = DialogAddButtonBJ(udg_nan, "|cFFCC0066牛刀小试")
		end
		if udg_nandu <= 2 then
			udg_nan2 = DialogAddButtonBJ(udg_nan, "|cFFFF6600登堂入室")
		end
		if udg_nandu <= 3 then
			udg_nan3 = DialogAddButtonBJ(udg_nan, "|cFF0041FF炉火纯青")
		end
		if udg_nandu <= 4 then
			udg_nan4 = DialogAddButtonBJ(udg_nan, "|cFF1FBF00华山论剑")
		end
		if udg_nandu <= 5 then
			udg_nan5 = DialogAddButtonBJ(udg_nan, "|cFFFF0000决战江湖")
		end
		DialogDisplayBJ(true, udg_nan, Player(0))
	end
end
-- 设置游戏难度和经验获得率的函数
function setDifficultyAndExpRate(difficulty)
	udg_nandu = difficulty
	SetPlayerHandicapXPBJ(Player(0), 200.0 - 20.0 * difficulty)
	SetPlayerHandicapXPBJ(Player(1), 200.0 - 20.0 * difficulty)
	SetPlayerHandicapXPBJ(Player(2), 200.0 - 20.0 * difficulty)
	SetPlayerHandicapXPBJ(Player(3), 200.0 - 20.0 * difficulty)
	SetPlayerHandicapXPBJ(Player(4), 200.0 - 20.0 * difficulty)
end
function ChooseNanDu_Action()
	if GetClickedButton() == udg_nan0 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF00CC00初入江湖")
		SetPlayerTechResearched(Player(12), 1378889777, 0)
		SetPlayerTechResearched(Player(6), 1378889777, 0)
		SetPlayerTechResearched(Player(15), 1378889777, 0)
		setDifficultyAndExpRate(0)
	end
	if GetClickedButton() == udg_nan1 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFCC0066牛刀小试")
		SetPlayerTechResearched(Player(12), 1378889777, 10)
		SetPlayerTechResearched(Player(6), 1378889777, 10)
		SetPlayerTechResearched(Player(15), 1378889777, 10)
		setDifficultyAndExpRate(1)
	end
	if GetClickedButton() == udg_nan2 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFFF6600登堂入室")
		SetPlayerTechResearched(Player(12), 1378889777, 20)
		SetPlayerTechResearched(Player(6), 1378889777, 20)
		SetPlayerTechResearched(Player(15), 1378889777, 20)
		setDifficultyAndExpRate(2)
	end
	if GetClickedButton() == udg_nan3 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF0041FF炉火纯青")
		SetPlayerTechResearched(Player(12), 1378889777, 30)
		SetPlayerTechResearched(Player(6), 1378889777, 30)
		SetPlayerTechResearched(Player(15), 1378889777, 30)
		setDifficultyAndExpRate(3)
	end
	if GetClickedButton() == udg_nan4 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF1FBF00华山论剑")
		SetPlayerTechResearched(Player(12), 1378889777, 40)
		SetPlayerTechResearched(Player(6), 1378889777, 40)
		SetPlayerTechResearched(Player(15), 1378889777, 40)
		setDifficultyAndExpRate(4)
	end
	if GetClickedButton() == udg_nan5 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFFF0000决战江湖")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
		SetPlayerTechResearched(Player(12), 1378889777, 50)
		SetPlayerTechResearched(Player(6), 1378889777, 50)
		SetPlayerTechResearched(Player(15), 1378889777, 50)
		setDifficultyAndExpRate(5)
	end
end
--试玩模式
function BeforeAttack()
	return hd == false
end
function SetShiWan()
	ShiFouShuaGuai = false
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF00FF00玩家一选择了试玩模式，怪物不会进攻主城，大家可以尽情的去体验玩法了")
end

--系统窗口
function SystemWindow()
	local i = 0
	local s = nil
	CreateMultiboardBJ(5, 20, "系统窗口")
	MultiboardSetItemsStyle(bj_lastCreatedMultiboard, true, false)
	MultiboardSetItemsWidth(bj_lastCreatedMultiboard, 0.07)
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if udg_MaxDamage[i] < 10000.0 then
			s = R2S(udg_MaxDamage[i])
		elseif udg_MaxDamage[i] < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "万"
		elseif udg_MaxDamage[i] / 10000.0 < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "亿"
		elseif udg_MaxDamage[i] / 100000000.0 < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "万亿"
		else
			s = (R2S(udg_MaxDamage[i]) or "") .. "亿亿"
		end
		MultiboardSetTitleText(bj_lastCreatedMultiboard, "|cFFFFCC33这并不是系统窗口")
		DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 3, "|c00FF0080" .. (GetPlayerName(Player(i - 1)) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 3, "|c0000FF00" .. "等级：" .. (I2S(GetUnitLevel(udg_hero[i])) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 3, "|cFF00CCFF" .. (udg_menpainame[udg_runamen[i]] or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 3, "|cFFFF6600" .. "最高伤害：" .. (s or ""))
		if Ce[i] == 1 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99炼丹师")
		elseif Ce[i] == 2 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99锻造师")
		elseif Ce[i] == 3 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99兵器师")
		elseif Ce[i] == 4 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99鉴定师")
		elseif Ce[i] == 5 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99练气师")
		elseif Ce[i] == 6 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99寻宝师")
		elseif Ce[i] == 7 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99丫鬟")
		elseif Ce[i] == 8 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99精武师")
		else
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99未选择")
		end
		if I7[20 * (i - 1) + 1] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 1]) or ""))
		end
		if I7[20 * (i - 1) + 2] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 2]) or ""))
		end
		if I7[20 * (i - 1) + 3] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 3]) or ""))
		end
		if I7[20 * (i - 1) + 4] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 4]) or ""))
		end
		if I7[20 * (i - 1) + 5] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 5]) or ""))
		end
		if I7[20 * (i - 1) + 6] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 6]) or ""))
		end
		if I7[20 * (i - 1) + 7] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 7]) or ""))
		end
		if I7[20 * (i - 1) + 8] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 8]) or ""))
		end
		if I7[20 * (i - 1) + 9] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 9]) or ""))
		end
		if I7[20 * (i - 1) + 10] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 10]) or ""))
		end
		if I7[20 * (i - 1) + 11] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 11]) or ""))
		end
		i = i + 1
	end
	MultiboardDisplay(bj_lastCreatedMultiboard, true)
end
function uuyy()
	local i = 0
	local s = nil
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if udg_MaxDamage[i] < 10000.0 then
			s = I2S(R2I(udg_MaxDamage[i] / 1.0))
		elseif udg_MaxDamage[i] < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / 10000.0)) or "") .. "万"
		elseif udg_MaxDamage[i] / 10000.0 < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / 100000000.0)) or "") .. "亿"
		elseif udg_MaxDamage[i] / 100000000.0 < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / -727379968.0)) or "") .. "万亿"
		else
			s = (I2S(R2I(udg_MaxDamage[i] / 1874919424.0)) or "") .. "亿亿"
		end
		MultiboardSetTitleText(bj_lastCreatedMultiboard, "|cFFFFCC33这并不是系统窗口")
		DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 3, "|c00FF0080" .. (GetPlayerName(Player(i - 1)) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 3, "|c0000FF00" .. "等级：" .. (I2S(GetUnitLevel(udg_hero[i])) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 3, "|cFF00CCFF" .. (udg_menpainame[udg_runamen[i]] or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 3, "|cFFFF6600" .. "最高伤害：" .. (s or ""))
		if Ce[i] == 1 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99炼丹师")
		elseif Ce[i] == 2 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99锻造师")
		elseif Ce[i] == 3 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99兵器师")
		elseif Ce[i] == 4 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99鉴定师")
		elseif Ce[i] == 5 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99练气师")
		elseif Ce[i] == 6 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99寻宝师")
		elseif Ce[i] == 7 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99丫鬟")
		elseif Ce[i] == 8 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99精武师")
		else
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99未选择")
		end
		if I7[20 * (i - 1) + 1] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 1]) or ""))
		end
		if I7[20 * (i - 1) + 2] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 2]) or ""))
		end
		if I7[20 * (i - 1) + 3] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 3]) or ""))
		end
		if I7[20 * (i - 1) + 4] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 4]) or ""))
		end
		if I7[20 * (i - 1) + 5] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 5]) or ""))
		end
		if I7[20 * (i - 1) + 6] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 6]) or ""))
		end
		if I7[20 * (i - 1) + 7] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 7]) or ""))
		end
		if I7[20 * (i - 1) + 8] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 8]) or ""))
		end
		if I7[20 * (i - 1) + 9] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 9]) or ""))
		end
		if I7[20 * (i - 1) + 10] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 10]) or ""))
		end
		if I7[20 * (i - 1) + 11] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 11]) or ""))
		end
		i = i + 1
	end
end
--最大伤害
function wy()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) ~= MAP_CONTROL_USER and GetEventDamage() > udg_MaxDamage[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
end
function SetMaxDamage()
	udg_MaxDamage[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))] = GetEventDamage()
end
--玩家离开
function Xx()
	bj_forLoopBIndex = 1
	bj_forLoopBIndexEnd = 6
	for _ in _loop_() do
		if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
		UnitRemoveItemSwapped(UnitItemInSlotBJ(GetEnumUnit(), bj_forLoopBIndex), GetEnumUnit())
		bj_forLoopBIndex = bj_forLoopBIndex + 1
	end
	RemoveUnit(GetEnumUnit())
end
function PlayerLeave()
	ForGroupBJ(AddPlayerUnitIntoGroup(GetTriggerPlayer(), nil), Xx)
	yv(bj_lastCreatedMultiboard, 4, 1 + GetPlayerId(GetTriggerPlayer()) + 2, 100.0, 20.0, 100.0, 0)
	DuoMianBan(bj_lastCreatedMultiboard, 5, (1 + GetPlayerId(GetTriggerPlayer())) * 4 - 2, "离开")
end
--F9显示
function Qx()
	CreateQuestBJ(0, "|cFFFF00001.53版本更新内容", "|cff00ff00新增元素|n|r|cffffff00开放新门派|r：泰山派|n|cffffff00装备调整|r：七绝护符、天璇护腕、神行鞋和神迹戒变更为神器|n|cff00ff00平衡性调整|n|r|cffffff00门派调整|r：全面平衡各门派伤害和升重速度|n|cffffff00删除了救火任务和青龙团队副本。|n积分兑换金钱和珍稀币随难度不同而不同。|n历练3的声望要求降至3200，十恶不赦基础血量降至30000。|n杀矮子王爆江湖忠，杀南海神尼爆九阴锻骨篇。|n大量游戏细节优化调整。|r|cff00ff00|nBUG修复|n|r|cffffff00修复部分装备不能正确加攻速和移速的BUG。|n修复部分武功属性要求显示不正确的BUG。|r", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(0, "|cFFFF00001.54版本更新内容", "|cff00ff00平衡性调整|n|r|cffffff00降低天柱云气触发概率。|n略微提升泰山十八盘的升重速度和触发概率。|n降低号令天下令的声望加成。|n缩小独孤九剑范围、减少时间、提升伤害。|n泰山派岱宗如何触发概率由100%改为15%。|n略微提高神行鞋爆率。|n其他细节优化。|r|cff00ff00|nBUG修复|n|r|cffffff00修复泰山十八盘+小无相无效的BUG。|n修正剑意和新手帮助的描述错误。|n修复神行鞋无CD的BUG。|r", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(0, "|cFFFF0000人物属性", "招式伤害：影响人物的所有武功的威力，中后期影响较大\n内力：加成武功伤害百分比，中后期影响较大\n真实伤害：造成不受内力影响的实际伤害，前期影响较大\n绝学领悟力：影响绝学的发挥效果和威力\n根骨：影响任务和武功学习条件，同时提高技能暴击力\n悟性：影响任务和武功学习条件，同时决定技能升级的概率\n经脉：影响任务和武功学习条件，同时提高法力回复速度\n福缘：影响任务和武功学习条件，同时提高被动武学触发概率\n胆魄：影响任务和武功学习条件，同时提高杀怪回复能力\n医术：影响任务和武功学习条件，同时提高自然生命回复速度", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(0, "|cFFFF6600人物武功", "门派武功：加入门派后每个英雄都会有3个武功，分别在3、8、15级时自动领悟\n门派心法：每个门派都有两种心法，可以在完成历练2后二选其一修习\n江湖武功：分为武功和心法两大类，需要通过使用武功秘籍获得\n绝学和绝内：后期厉害的大招，也需要通过使用武功秘籍获得\n绝阵：开放部分门派绝阵，请到聚贤庄寻找", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(0, "|cFF00FF00游戏指令", "按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33非特殊事件模式下提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(0, "|cFF0000FF游戏指令2", "输入“cksx”：|cFFCCFF33查看剩余自由属性点数|r\n输入属性拼音首字母如“gg”：|cFFCCFF33根骨+1|r\n输入属性拼音首字母加数值如“fy5”：|cFFCCFF33福缘+5|r\n输入“ckwq”：|cFFCCFF33查询自制武器属性|r\n输入“ckwg”：|cFFCCFF33查询自创武功|r\n输入“ckjn”：|cFFCCFF33查询人物性格和技能升重进度|r\n输入“ck”：|cFFCCFF33查询技能伤害|r\n输入“ckjf”：|cFFCCFF33查询守家积分|r\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(2, "|cFFFF00CC称号系统", "在游戏中，可以获得两种称号：门派称号和副职称号\n门派称号：如果你的所有门派武学和门派内功均达到6级，可以获得各门派的掌门称号；在获得掌门之前达成一定的条件，获得掌门称号时还可以获得额外的门派称号，具体门派称号的获得方法可以参考论坛的攻略。注意获得门派称号的契机只有一次。\n副职称号：游戏中的七种副职达到一定条件时，可以分别获得相应的副职大师称号，增加与该副职相关的额外能力，具体副职大师称号的获得方法可以参考论坛的攻略", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	--call CreateQuestBJ(2,"|cFFFFFF00武器系统","在游戏中，每一把武器都有自己的耐久度，每击杀一个单位耐久度减1，耐久度为0后武器破损消失\n如果副职选择兵器师，则武器不减少耐久度。\n每个玩家对每一种武器有一定的熟练度，每击杀一个单位增加一定熟练度，不同武器熟练度上限不同，熟练度上升武功的伤害将随之上升\n副职选择兵器师大幅提升武器的熟练度上限\n对某种武器极不熟练时伤害要低于不拿武器时的伤害","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(2, "|cFFFF0000副职玩法", "玩家可在NPC郭靖处选择自己的副职，加入副职后会获得一些独特的能力\n副职满足一定条件后，可以获得相应的大师称号，获得大师后会额外获得一些能力\n炼丹师：可使用炼丹系统并可多服食五颗丹药\n锻造师：可使用镶嵌和锻造系统\n兵器师：镇妖死亡不掉落，拾取和冶炼兵器不受历练限制\n练气师：每提升一次等级增加4-12点招式伤害或内力或真实伤害\n寻宝师：副本双倍掉落\n鉴定师：爆双倍古董，可以使用古董换书，古董以最高价卖出\n丫鬟：携带两把武器及两件衣服\n精武师：技能升级到九重获得额外自创武学点，可以打出奇武\n更多大师获得方式和作用请到NPC随风而逝de风处查看", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(2, "|cFFFF6600称号系统", "玩家4个门派武功全部达到6级可获得掌门称号\n在获得掌门称号时若达到一定条件，可同时获得其他称号\n有一些称号与掌门无关，具体可参考网站或论坛的攻略\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(2, "|cFF00FF00隐藏门派", "游戏中有两个隐藏门派：姑苏慕容和灵鹫宫\n隐藏门派的选择方式:灵鹫宫选人后输入www.juezhanjianghu.com，慕容世家选人后输入jzjh.uuu9.com或3级前去找慕容复\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	CreateQuestBJ(2, "|cFF0000FF游戏网站", "专区论坛：|cFFCCFF33jzjhbbs.uuu9.com|r\n游戏作者：|cFFCCFF33云杨 Zei_kale|r\n游戏QQ群：|cFFCCFF33159030768, 369925013\n\n关注武侠，支持作者，详情请在网站和论坛查询", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
end
--ESC查看人物属性
function RenWuShuXing()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	ClearTextMessagesBJ(ov(p))
	DisplayTextToPlayer(p, 0, 0, "|cFFFF0000人物属性：")
	DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击率 ：   " .. (I2S(IMinBJ(R2I(udg_baojilv[i] * 100.0), 100)) or "") .. "%")
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击伤害 ：   " .. (I2S(R2I(udg_baojishanghai[i] * 100.0)) or "") .. "%")
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF武功伤害加成 ：   " .. (I2S(R2I(udg_shanghaijiacheng[i] * 100.0)) or "") .. "%")
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF伤害吸收 ：   " .. (I2S(IMinBJ(R2I(udg_shanghaixishou[i] * 100.0), 80)) or "") .. "%")
	DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF根骨 ：   " .. (I2S(gengu[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性 ：   " .. (I2S(wuxing[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF经脉 ：   " .. (I2S(jingmai[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF福缘 ：   " .. (I2S(fuyuan[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄 ：   " .. (I2S(danpo[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF医术 ：   " .. (I2S(yishu[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	DisplayTextToPlayer(p, 0, 0, "|cFF33FF00绝学领悟力：" .. (I2S(juexuelingwu[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF33FF00修行：" .. (I2S(xiuxing[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF33FF00武学修为：第" .. (I2S(wugongxiuwei[i]) or "") .. "层")
	DisplayTextToPlayer(p, 0, 0, "|cFF33FF00江湖声望：" .. (I2S(shengwang[i]) or ""))
	DisplayTextToPlayer(p, 0, 0, "|cFF33FF00守家积分：" .. (I2S(shoujiajf[i]) or ""))
	if Ce[i] ~= 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFF33FF00当前用丹数量：" .. (I2S(yongdanshu[i]) or "") .. " / 10")
	else
		DisplayTextToPlayer(p, 0, 0, "|cFF33FF00当前用丹数量：" .. (I2S(yongdanshu[i]) or "") .. " / 15")
	end
	p = nil
end


function hy()
	return GetUnitTypeId(GetTriggerUnit()) == 1851942003
end
--是否达到胜利条件
function IsVictory()
	if de == false then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251) <= 10.0 then
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251, 100.0)
		else
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251) - 10.0)
		end
		if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706) <= 10.0 then
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706, 100.0)
		else
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706) - 10.0)
		end
		if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710) <= 0.1 then
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710, 100.0)
		else
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710) - 10.0)
		end
		if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754) <= 0.0 then
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754, 70.0)
		else
			SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754) - 10.0)
		end
		SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558, 1)
		if udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] ~= nil then
			DestroyTextTag(ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)])
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)]))
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), 150.0, 110.0))
			CreateTextTagLocBJ("武林盟主", LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584), 100.0, 11.0, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584))
			ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] = bj_lastCreatedTextTag
		end
		SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558, LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558) + 1)
		if udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] ~= nil then
			DestroyTextTag(ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)])
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)]))
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), 150.0, 110.0))
			CreateTextTagLocBJ("武林盟主", LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584), 100.0, 11.0, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584))
			ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] = bj_lastCreatedTextTag
		end
		SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558, LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558) + 1)
		if udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] ~= nil then
			DestroyTextTag(ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)])
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)]))
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), 150.0, 110.0))
			CreateTextTagLocBJ("武林盟主", LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584), 100.0, 11.0, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584))
			ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] = bj_lastCreatedTextTag
		end
		SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558, LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558) + 1)
		if udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] ~= nil then
			DestroyTextTag(ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)])
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)]))
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), 150.0, 110.0))
			CreateTextTagLocBJ("武林盟主", LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584), 100.0, 11.0, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584))
			ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] = bj_lastCreatedTextTag
		end
		SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558, LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558) + 1)
		if udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] ~= nil then
			DestroyTextTag(ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)])
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(udg_hero[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)]))
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), 150.0, 110.0))
			CreateTextTagLocBJ("武林盟主", LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584), 100.0, 11.0, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1587459251), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1676716706), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1559655710), LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1663695754))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -1925439584))
			ee[LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -1449975558)] = bj_lastCreatedTextTag
		end
	end
end
--胜利动作
function Victory()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 0
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		udg_MeiJuJiFen[i] = udg_MeiJuJiFen[i] + ae // 50
		YDWE_PreloadSL_Set(Player(i - 1), "总积分", 1, udg_MeiJuJiFen[i])
		YDWE_PreloadSL_Save(Player(i - 1), "JueZhan", "JiangHu" .. (I2S(i) or ""), 1)
		i = i + 1
	end
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF00B2决战江湖1.55的游戏总评分：" .. (I2S(ae) or "") .. "分（通关）")
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF00B2恭喜你们通关，游戏将在2分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	de = true
	SaveReal(YDHT, id * cx, -1587459251, 40.0)
	SaveReal(YDHT, id * cx, -1676716706, 70.0)
	SaveReal(YDHT, id * cx, -1559655710, 100.0)
	SaveReal(YDHT, id * cx, -1663695754, 70.0)
	ky = CreateTimer()
	SaveReal(YDHT, GetHandleId(ky), -1587459251, LoadReal(YDHT, id * cx, -1587459251))
	SaveReal(YDHT, GetHandleId(ky), -1676716706, LoadReal(YDHT, id * cx, -1676716706))
	SaveReal(YDHT, GetHandleId(ky), -1559655710, LoadReal(YDHT, id * cx, -1559655710))
	SaveReal(YDHT, GetHandleId(ky), -1663695754, LoadReal(YDHT, id * cx, -1663695754))
	TimerStart(ky, 0.04, true, IsVictory)
	YDWEPolledWaitNull(60.0)
	SaveInteger(YDHT, id, -320330265, cx)
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF00B2决战江湖1.55的游戏总评分：" .. (I2S(ae) or "") .. "分（通关）")
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF00B2恭喜你们通关，游戏将在1分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	YDWEPolledWaitNull(60.0)
	SaveInteger(YDHT, id, -320330265, cx)
	CustomVictoryBJ(Player(0), true, true)
	CustomVictoryBJ(Player(1), true, true)
	CustomVictoryBJ(Player(2), true, true)
	CustomVictoryBJ(Player(3), true, true)
	CustomVictoryBJ(Player(4), true, true)
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
--失败动作
function Lose()
	local i = 0
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF00B2决战江湖1.55的游戏总评分：" .. (I2S(ae) or "") .. "分（战败）")
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		udg_MeiJuJiFen[i] = udg_MeiJuJiFen[i] + ae // 100
		YDWE_PreloadSL_Set(Player(i - 1), "总积分", 1, udg_MeiJuJiFen[i])
		YDWE_PreloadSL_Save(Player(i - 1), "JueZhan", "JiangHu" .. (I2S(i) or ""), 1)
		i = i + 1
	end
	CustomDefeatBJ(Player(0), "没有能守护住正派武林!")
	CustomDefeatBJ(Player(1), "没有能守护住正派武林!")
	CustomDefeatBJ(Player(2), "没有能守护住正派武林!")
	CustomDefeatBJ(Player(3), "没有能守护住正派武林!")
	CustomDefeatBJ(Player(4), "没有能守护住正派武林!")
end


--玩家英雄阵亡
function Ex()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function PlayerDeath()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if ge[i] then
		StartTimerBJ(udg_revivetimer[i], false, 7.0)
	else
		StartTimerBJ(udg_revivetimer[i], false, 15.0)
	end
	TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, p)
	CreateTimerDialogBJ(bj_lastStartedTimer, "复活倒计时:")
	R7[i] = bj_lastCreatedTimerDialog
	he[i] = true
	N8[i] = 0
	GroupRemoveUnit(k9, u)
	GroupRemoveUnit(j9, u)
	GroupRemoveUnit(s9, u)
	GroupRemoveUnit(r9, u)
	if UnitHaveItem(u, 1227895379) or UnitHaveItem(u, 1227895373) or UnitHaveItem(u, 1227895377) or UnitHaveItem(u, 1227895378) or UnitHaveItem(u, 1227895376) then
		if Ce[i] ~= 3 then
			DisplayTextToPlayer(p, 0, 0, "|cFFff0000养武消失了")
		end
	end
	u = nil
	p = nil
end
--五个玩家复活
function PlayerReviveA()
	DestroyTimerDialog(R7[1])
	Q4 = GetRectCenter(He)
	ReviveHeroLoc(udg_hero[1], Q4, true)
	PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[1]), Q4, 0)
	RemoveLocation(Q4)
	he[1] = false
	if UnitHaveItem(udg_hero[1], 1227895379) or UnitHaveItem(udg_hero[1], 1227895373) or UnitHaveItem(udg_hero[1], 1227895377) or UnitHaveItem(udg_hero[1], 1227895378) or UnitHaveItem(udg_hero[1], 1227895376) then
		if Ce[1] ~= 3 then
			RemoveItem(FetchUnitItem(udg_hero[1], 1227895379))
			RemoveItem(FetchUnitItem(udg_hero[1], 1227895373))
			RemoveItem(FetchUnitItem(udg_hero[1], 1227895377))
			RemoveItem(FetchUnitItem(udg_hero[1], 1227895378))
			RemoveItem(FetchUnitItem(udg_hero[1], 1227895376))
		end
	end
	if GetUnitAbilityLevel(udg_hero[1], 1093677877) > 0 then
		UnitRemoveAbility(udg_hero[1], 1093677877)
		UnitAddAbility(udg_hero[1], 1093677876)
		SetUnitAbilityLevel(udg_hero[1], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[1])), 1093677876 * 5))
	end
	AddCharacterABuff(udg_hero[1], udg_xinggeA[1])
	AddCharacterBBuff(udg_hero[1], udg_xinggeB[1])
end
function PlayerReviveB()
	DestroyTimerDialog(R7[2])
	Q4 = GetRectCenter(He)
	ReviveHeroLoc(udg_hero[2], Q4, true)
	PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[2]), Q4, 0)
	RemoveLocation(Q4)
	he[2] = false
	if UnitHaveItem(udg_hero[2], 1227895379) or UnitHaveItem(udg_hero[2], 1227895373) or UnitHaveItem(udg_hero[2], 1227895377) or UnitHaveItem(udg_hero[2], 1227895378) or UnitHaveItem(udg_hero[2], 1227895376) then
		if Ce[2] ~= 3 then
			RemoveItem(FetchUnitItem(udg_hero[2], 1227895379))
			RemoveItem(FetchUnitItem(udg_hero[2], 1227895373))
			RemoveItem(FetchUnitItem(udg_hero[2], 1227895377))
			RemoveItem(FetchUnitItem(udg_hero[2], 1227895378))
			RemoveItem(FetchUnitItem(udg_hero[2], 1227895376))
		end
	end
	if GetUnitAbilityLevel(udg_hero[2], 1093677877) > 0 then
		UnitRemoveAbility(udg_hero[2], 1093677877)
		UnitAddAbility(udg_hero[2], 1093677876)
		SetUnitAbilityLevel(udg_hero[2], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[2])), 1093677876 * 5))
	end
	AddCharacterABuff(udg_hero[2], udg_xinggeA[2])
	AddCharacterBBuff(udg_hero[2], udg_xinggeB[2])
end
function PlayerReviveC()
	DestroyTimerDialog(R7[3])
	Q4 = GetRectCenter(He)
	ReviveHeroLoc(udg_hero[3], Q4, true)
	PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[3]), Q4, 0)
	RemoveLocation(Q4)
	he[3] = false
	if UnitHaveItem(udg_hero[3], 1227895379) or UnitHaveItem(udg_hero[3], 1227895373) or UnitHaveItem(udg_hero[3], 1227895377) or UnitHaveItem(udg_hero[3], 1227895378) or UnitHaveItem(udg_hero[3], 1227895376) then
		if Ce[3] ~= 3 then
			RemoveItem(FetchUnitItem(udg_hero[3], 1227895379))
			RemoveItem(FetchUnitItem(udg_hero[3], 1227895373))
			RemoveItem(FetchUnitItem(udg_hero[3], 1227895377))
			RemoveItem(FetchUnitItem(udg_hero[3], 1227895378))
			RemoveItem(FetchUnitItem(udg_hero[3], 1227895376))
		end
	end
	if GetUnitAbilityLevel(udg_hero[3], 1093677877) > 0 then
		UnitRemoveAbility(udg_hero[3], 1093677877)
		UnitAddAbility(udg_hero[3], 1093677876)
		SetUnitAbilityLevel(udg_hero[3], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[3])), 1093677876 * 5))
	end
	AddCharacterABuff(udg_hero[3], udg_xinggeA[3])
	AddCharacterBBuff(udg_hero[3], udg_xinggeB[3])
end
function PlayerReviveD()
	DestroyTimerDialog(R7[4])
	Q4 = GetRectCenter(He)
	ReviveHeroLoc(udg_hero[4], Q4, true)
	PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[4]), Q4, 0)
	RemoveLocation(Q4)
	he[4] = false
	if UnitHaveItem(udg_hero[4], 1227895379) or UnitHaveItem(udg_hero[4], 1227895373) or UnitHaveItem(udg_hero[4], 1227895377) or UnitHaveItem(udg_hero[4], 1227895378) or UnitHaveItem(udg_hero[4], 1227895376) then
		if Ce[4] ~= 3 then
			RemoveItem(FetchUnitItem(udg_hero[4], 1227895379))
			RemoveItem(FetchUnitItem(udg_hero[4], 1227895373))
			RemoveItem(FetchUnitItem(udg_hero[4], 1227895377))
			RemoveItem(FetchUnitItem(udg_hero[4], 1227895378))
			RemoveItem(FetchUnitItem(udg_hero[4], 1227895376))
		end
	end
	if GetUnitAbilityLevel(udg_hero[4], 1093677877) > 0 then
		UnitRemoveAbility(udg_hero[4], 1093677877)
		UnitAddAbility(udg_hero[4], 1093677876)
		SetUnitAbilityLevel(udg_hero[4], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[4])), 1093677876 * 5))
	end
	AddCharacterABuff(udg_hero[4], udg_xinggeA[4])
	AddCharacterBBuff(udg_hero[4], udg_xinggeB[4])
end
function PlayerReviveE()
	DestroyTimerDialog(R7[5])
	Q4 = GetRectCenter(He)
	ReviveHeroLoc(udg_hero[5], Q4, true)
	PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[5]), Q4, 0)
	RemoveLocation(Q4)
	he[5] = false
	if UnitHaveItem(udg_hero[5], 1227895379) or UnitHaveItem(udg_hero[5], 1227895373) or UnitHaveItem(udg_hero[5], 1227895377) or UnitHaveItem(udg_hero[5], 1227895378) or UnitHaveItem(udg_hero[5], 1227895376) then
		if Ce[5] ~= 3 then
			RemoveItem(FetchUnitItem(udg_hero[5], 1227895379))
			RemoveItem(FetchUnitItem(udg_hero[5], 1227895373))
			RemoveItem(FetchUnitItem(udg_hero[5], 1227895377))
			RemoveItem(FetchUnitItem(udg_hero[5], 1227895378))
			RemoveItem(FetchUnitItem(udg_hero[5], 1227895376))
		end
	end
	if GetUnitAbilityLevel(udg_hero[5], 1093677877) > 0 then
		UnitRemoveAbility(udg_hero[5], 1093677877)
		UnitAddAbility(udg_hero[5], 1093677876)
		SetUnitAbilityLevel(udg_hero[5], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[5])), 1093677876 * 5))
	end
	AddCharacterABuff(udg_hero[5], udg_xinggeA[5])
	AddCharacterBBuff(udg_hero[5], udg_xinggeB[5])
end

function CA()
	udg_counter1 = udg_counter1 + 1
	q7[udg_counter1] = GetUnitTypeId(GetEnumUnit())
	r7[udg_counter1] = GetEnumUnit()
	m7[udg_counter1] = GetUnitLoc(GetEnumUnit())
end
function cA()
	m7[0] = GetRectCenter(Ge)
	nn7 = CountUnitsInGroup(AddPlayerUnitIntoGroup(Player(12), nil))
	o7 = CountUnitsInGroup(AddPlayerUnitIntoGroup(Player(15), nil))
	ForGroupBJ(AddPlayerUnitIntoGroup(Player(12), nil), CA)
	ForGroupBJ(AddPlayerUnitIntoGroup(Player(15), nil), CA)
end
--怪物死后重新刷怪
function EA()
	--圣兽死后不刷新
	if GetTriggerUnit() ~= udg_qinglong and GetTriggerUnit() ~= udg_baihu and GetTriggerUnit() ~= udg_zhuque and GetTriggerUnit() ~= udg_xuanwu and GetTriggerUnit() ~= gg_unit_n00M_0131 then
		YDWEPolledWaitNull(0.02)
		s7 = 1
		--call BJDebugMsg(GetUnitName(GetTriggerUnit()))
		--call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
		for _ in _loop_() do
			if s7 > nn7 + o7 then break end
			if GetTriggerUnit() == r7[s7] then
				if s7 <= nn7 then
					--call BJDebugMsg("s7="+I2S(s7))
					--call BJDebugMsg(I2S(q7[s7]))
					if GetUnitTypeId(GetTriggerUnit()) ~= 1848651824 then
						CreateNUnitsAtLoc(1, 1848651824, Player(12), m7[0], bj_UNIT_FACING)
						UnitApplyTimedLifeBJ((0.18 - 0.01 * I2R(O4)) * I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit()))), 1112820806, bj_lastCreatedUnit)
						r7[s7] = bj_lastCreatedUnit
						return
					else
						CreateNUnitsAtLoc(1, q7[s7], Player(12), m7[s7], bj_UNIT_FACING)
						r7[s7] = bj_lastCreatedUnit
						return
					end
				else
					if GetUnitTypeId(GetTriggerUnit()) ~= 1848651824 then
						CreateNUnitsAtLoc(1, 1848651824, Player(12), m7[0], bj_UNIT_FACING)
						UnitApplyTimedLifeBJ((0.18 - 0.01 * I2R(O4)) * I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit()))), 1112820806, bj_lastCreatedUnit)
						r7[s7] = bj_lastCreatedUnit
						return
					else
						CreateNUnitsAtLoc(1, q7[s7], Player(15), m7[s7], bj_UNIT_FACING)
						r7[s7] = bj_lastCreatedUnit
						return
					end
				end
			end
			s7 = s7 + 1
		end
	end
end
function GA()
	return ShiFouShuaGuai
end
--BOSS成长
function BOSSChengZhang()
	local t = GetExpiredTimer()
	if udg_boss[udg_boshu // 4] ~= nil then
		if IsUnitAliveBJ(udg_boss[udg_boshu // 4]) then
			if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242) == 0 then
				UnitAddAbility(udg_boss[udg_boshu // 4], 1093682242)
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教BOSS" .. (GetUnitName(udg_boss[udg_boshu // 4]) or "") .. "已加强")
			else
				if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242) < 10 then
					IncUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242)
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教BOSS" .. (GetUnitName(udg_boss[udg_boshu // 4]) or "") .. "已加强")
				end
			end
			if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000) == 0 then
				UnitAddAbility(udg_boss[udg_boshu // 4], 1093682000)
			else
				if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000) < 6 then
					IncUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000)
				else
					UnitAddAbility(udg_boss[udg_boshu // 4], 1093681969)
				end
			end
		else
			PauseTimer(t)
			DestroyTimer(t)
		end
	else
		PauseTimer(t)
		DestroyTimer(t)
	end
	t = nil
end
--玩家等级大于波数*4
function LevelGuoGao()
	local i = 0
	local totallevel = 0
	local r = 0.0
	for _ in _loop_() do
		if i > 11 then break end
		if udg_hero[i] ~= nil then
			totallevel = totallevel + GetUnitLevel(udg_hero[i])
		end
		i = i + 1
	end
	if udg_teshushijian and I2R(totallevel) > udg_boshu * 4 * I2R(GetNumPlayer()) then
		return true
	end
	return false
end
-- 下一波怪的警告
function NextWaveWarning()
	if udg_boshu == 9 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能神圣护甲和10倍暴击")
	elseif udg_boshu == 11 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能咆哮和重击")
	elseif udg_boshu == 12 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为空军")
	elseif udg_boshu == 13 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能噬血术")
	elseif udg_boshu == 14 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为绞肉车，死亡后会产生小蜘蛛")
	elseif udg_boshu == 15 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为空军，拥有技能20倍暴击")
	elseif udg_boshu == 16 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能精灵之火")
	elseif udg_boshu == 17 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能狂战士和30倍暴击")
	elseif udg_boshu == 18 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪血量很高，并拥有技能嘲讽")
	elseif udg_boshu == 19 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能狂热")
	elseif udg_boshu == 20 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能变相移动")
	elseif udg_boshu == 21 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能反魔法外壳")
	elseif udg_boshu == 22 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能重击")
	elseif udg_boshu == 23 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能90%闪避")
	elseif udg_boshu == 24 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能卡布恩（自爆）")
	elseif udg_boshu == 25 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能闪电攻击")
	elseif udg_boshu == 26 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能神圣护甲")
	elseif udg_boshu == 27 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪血量很高，并拥有技能永久献祭和重生")
	elseif udg_boshu == 28 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：本波为最后一波进攻，本波结束后教主即将出现")
	end
end
function BOSSAttack(t)
	if ModuloInteger(udg_boshu, 4) == 0 and udg_boshu < 28 and udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4], Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教趁我方不备，偷偷地派出BOSS从背后杀过来了，请准备防御")
	end
	if ModuloInteger(udg_boshu, 4) == 0 and udg_boshu < 30 and udg_shengchun == false then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教派出BOSS前来进攻，请准备防御")
		CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4], Player(6), v7[6], v7[4])
		if udg_boshu == 4 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681970)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681970, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681973)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681973, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681975)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681975, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 8 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681990)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681990, IMinBJ(udg_nandu * 2, 9))
			--call UnitAddAbility(bj_lastCreatedUnit,'A0CM')
			--call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CM',IMinBJ(udg_nandu*2,9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682241)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682241, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 12 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681993)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681993, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681994)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681994, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681998)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681998, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 16 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681976)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681976, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681977)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681977, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681986)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681986, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 20 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681992)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681992, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682245)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682245, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 24 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681995)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681995, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682248)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682248, IMinBJ(udg_nandu * 2, 9))
		end
		udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
		TimerStart(t, 20, true, BOSSChengZhang)
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
	elseif ModuloInteger(udg_boshu, 4) ~= 0 and udg_boshu < 28 and udg_shengchun == false then
		if LevelGuoGao() then
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，邪教派出BOSS前来进攻，请准备防御")
			CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4 + 1], Player(6), v7[6], v7[4])
			udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
			TimerStart(t, 20, true, BOSSChengZhang)
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		end
	end
end
--刷怪
function HA()
	local t = CreateTimer()
	if udg_boshu == 4 and udg_teshushijian == true then
		ChooseNanDu()
	end
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教势力：第" .. (I2S(udg_boshu) or "") .. "|CFFFF0033波")
	NextWaveWarning() --下波警告
	if LevelGuoGao() then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※邪教全力进攻※")
	end
	StopMusic(false)
	PlayMusicBJ(yh) -- 切换BGM
	EnableTrigger(Yi) -- 刷正面的进攻怪
	YDWEPolledWaitNull(40.0)
	if O4 > 1 then -- 游戏人数>1
		EnableTrigger(Zi) -- 刷背面的进攻怪
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教趁我方不备，偷偷地从背后杀过来了")
	end
	YDWEPolledWaitNull(20.0)
	if ue > 0 then
		ConditionalTriggerExecute(dj)
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033名门高手开始进攻，大家要小心应付了！")
	end
	DisableTrigger(Yi)
	YDWEPolledWaitNull(10.0)
	if O4 > 1 then
		DisableTrigger(Zi)
	end
	YDWEPolledWaitNull(10.0)
	BOSSAttack(t)
	udg_boshu = udg_boshu + 1
	StopMusic(false)
	PlayMusicBJ(xh)
	if udg_sutong == false then
		YDWEPolledWaitNull(145 - GetNumPlayer() * 10)
	end
	if udg_boshu >= 29 and udg_shengchun == false then
		StopMusic(false)
		PlayMusicBJ(zh)
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033西域势力最后BOSS即将发起最后进攻，请作好防守准备")
		CreateNUnitsAtLocFacingLocBJ(1, u7[8], Player(6), v7[6], v7[4])
		udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
		TimerStart(t, 20, true, BOSSChengZhang)
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
	else
		if udg_shengchun then
			AddPlayerTechResearched(Player(12), 1378889780, 1)
			AddPlayerTechResearched(Player(6), 1378889780, 1)
		end
		if x7 >= 1 then
			TriggerExecute(ij)
		else
			TriggerExecute(hj)
		end
	end
	t = nil
end
function JiaJiNeng(u)
	if udg_boshu >= 8 then
		UnitAddAbility(u, 1093682008)
		if udg_boshu >= 18 then
			UnitAddAbility(u, 1093682009)
			if udg_boshu >= 28 then
				UnitAddAbility(u, 1093682010)
			end
		end
	end
end
function FrontAttack()
	if udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[6], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[7], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[5], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		if LevelGuoGao() then
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[6], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[7], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[5], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		end
	else
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[6], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[7], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[5], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
	end
end
function BackAttack()
	if udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu + 1], Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		if LevelGuoGao() then
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu + 1], Player(6), v7[8], v7[3])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		end
	else
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		JiaJiNeng(bj_lastCreatedUnit)
	end
end
function MA()
	return ShiFouShuaGuai
end
function NA()
	local i = 1
	local j = 1
	local l__l = 0
	local r1 = 0
	local r2 = 0
	local rr3 = 1.0
	local rr4 = 1.0
	if ue == 1 then
		r1 = 1.26
		r2 = 1.4
	elseif ue == 2 then
		r1 = 1.28
		r2 = 1.43
	elseif ue == 3 then
		r1 = 1.3
		r2 = 1.46
	elseif ue == 4 then
		r1 = 1.32
		r2 = 1.49
	elseif ue == 5 then
		r1 = 1.34
		r2 = 1.52
	end
	for _ in _loop_() do
		if i > ue then break end
		for _ in _loop_() do
			if j > udg_boshu then break end
			if j < udg_boshu then
				rr3 = rr3 * r1
				rr4 = rr4 * r2
			end
			j = j + 1
		end
		l__l = GetRandomInt(1, 11)
		CreateNUnitsAtLocFacingLocBJ(1, ve[l__l], Player(6), v7[GetRandomInt(5, 8)], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		SetHeroLevelBJ(bj_lastCreatedUnit, 4 * udg_boshu, false)
		YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 3, 0, R2I(I2R(xe[l__l]) * (rr3 * 3.3)))
		YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 0, (udg_boshu - 1) * ye[l__l] * 9 // 10 * ue)
		--call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,1,0,R2I(I2R(ze[l])*rr4))
		unitadditembyidswapped(Ae[udg_boshu], bj_lastCreatedUnit)
		i = i + 1
	end
--set ue=0
end
function PA()
	DestroyTimerDialog(z7[1])
	ConditionalTriggerExecute(Xi)
end
function RA()
	DestroyTimerDialog(z7[2])
	ConditionalTriggerExecute(Xi)
--set x7=0
end
function TA()
	DestroyTimerDialog(z7[3])
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
	if udg_teshushijian == true then
		ChooseNanDu()
	end
	ConditionalTriggerExecute(Xi)
end
function VA()
	StartTimerBJ(A7[1], false, 30.0 + I2R(ie))
	CreateTimerDialogBJ(bj_lastStartedTimer, "邪教下次进攻时间")
	z7[1] = bj_lastCreatedTimerDialog
	ie = 0
end
function XA()
	StartTimerBJ(A7[2], false, x7 * 60.0 + 30.0 + I2R(ie))
	CreateTimerDialogBJ(bj_lastStartedTimer, "邪教下次进攻时间")
	z7[2] = bj_lastCreatedTimerDialog
	ie = 0
	x7 = 0
end
function ZA()
	return GetItemTypeId(GetManipulatedItem()) == 1227894853
end
function ea()
	x7 = x7 + 1
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF00FF4C在武林弟子的奋力帮助下，邪教的进攻势力被延缓了，大家有1分钟的时间，赶紧去做任务吧~")
	PlaySoundOnUnitBJ(Dh, 100, GetTriggerUnit())
	shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] + 10
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00FF4C守家积分+10")
end
function ja()
	return IsUnitInGroup(GetTriggerUnit(), w7)
end
function ka()
	GroupRemoveUnit(w7, GetTriggerUnit())
end
--练功房刷怪
function na()
	return GetOwningPlayer(GetFilterUnit()) == Player(7) and IsUnitAliveBJ(GetFilterUnit())
end
function qa()
	if CountUnitsInGroup(wv(Ie, Condition(na))) <= 3 then
		CreateNUnitsAtLoc(12, y7[IMinBJ(IMaxBJ(udg_boshu, 1), 28)], Player(7), v7[1], bj_UNIT_FACING)
	end
	if CountUnitsInGroup(wv(Re, Condition(na))) <= 3 then
		CreateNUnitsAtLoc(12, y7[IMinBJ(IMaxBJ(udg_boshu, 1), 28)], Player(7), v7[10], bj_UNIT_FACING)
	end
	if CountUnitsInGroup(wv(le, Condition(na))) <= 3 then
		CreateNUnitsAtLoc(12, y7[IMinBJ(IMaxBJ(udg_boshu, 1), 28)], Player(7), v7[2], bj_UNIT_FACING)
	end
end
--练功房
function sa()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895350 -- INLINED!!
end
function ua()
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00进入少林寺练功房二")
	SetUnitPosition(GetTriggerUnit(), 4750, -3650)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 4250, -3650, 0)
end
function wa()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895351 -- INLINED!!
end
function xa()
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00进入少林寺练功房三")
	SetUnitPosition(GetTriggerUnit(), 5920, -4750)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 5920, -4750, 0)
end
function za()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895361 -- INLINED!!
end
function Aa()
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00进入少林寺练功房一")
	SetUnitPosition(GetTriggerUnit(), 3730, -4690)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 3730, -4690, 0)
end


--切换背包
function Ba()
	return GetSpellAbilityId() == 1093677134
end
function ba()
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(b7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(C7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], B7))
		B7 = B7 + 1
	end
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(C7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(GetTriggerUnit(), B7))
		B7 = B7 + 1
	end
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(GetTriggerUnit(), UnitItemInSlotBJ(b7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], B7))
		B7 = B7 + 1
	end
end
--鸟的贩卖技能
function ca()
	return GetSpellAbilityId() == 1093679433
end
function Da()
	CreateNUnitsAtLoc(1, 1853257068, GetOwningPlayer(GetTriggerUnit()), v7[9], bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddItem(bj_lastCreatedUnit, CreateItem(GetItemTypeId(GetSpellTargetItem()), 0, 0))
	UnitDropItemTarget(bj_lastCreatedUnit, UnitItemInSlotBJ(bj_lastCreatedUnit, 1), Rs)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
	RemoveItem(GetSpellTargetItem())
	PlaySoundOnUnitBJ(Ih, 100, GetTriggerUnit())
	AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
	DestroyEffect(bj_lastCreatedEffect)
end
--切换物品
function IsQieHuanItem()
	return GetSpellAbilityId() == 1093677133 and he[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == false
end
function QieHuanItem()
	UnitAddItem(Vs, UnitItemInSlotBJ(GetTriggerUnit(), 1))
	UnitAddItem(GetTriggerUnit(), UnitItemInSlotBJ(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1))
	UnitAddItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(Vs, 1))
end

--英雄达到某等级
function Ja()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function HeroLevel()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	-- 练气师
	if Ce[i] == 5 then
		if GetRandomInt(1, 3) == 1 then
			ModifyHeroStat(0, u, 0, GetRandomInt(4, 8))
		elseif GetRandomInt(1, 2) == 1 then
			ModifyHeroStat(1, u, 0, GetRandomInt(4, 8))
		else
			ModifyHeroStat(2, u, 0, GetRandomInt(4, 8))
		end
		if GetUnitLevel(u) == 80 then
			juexuelingwu[i] = juexuelingwu[i] + 10
			if udg_zhangmen[i] == true then
			else
				SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓练气大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			end
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得练气大师")
			SetPlayerName(p, "〓练气大师〓" .. (GetPlayerName(p) or ""))
		end
	end
	if GetUnitTypeId(u) == 1328558132 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 400)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 350)
	end
	if GetUnitTypeId(u) == 1328558128 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 40)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 35)
	end
	if GetUnitTypeId(u) == 1328558129 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 5)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 4)
	end
	if GetUnitLevel(u) >= 3 and Z8[i] == false then
		Z8[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end --门派数
			if udg_runamen[i] == d8[i] then
				--if d8[i]==11 then
				--	if GetRandomInt(1,100)<=99 then
				--		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1,18), 2)
				--	else
				--		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19,36), 2)
				--	endif
				--endif
				if d8[i] ~= 11 then
					UnitAddAbility(u, X7[d8[i]])
					UnitMakeAbilityPermanent(u, true, X7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(X7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
				end
				if udg_runamen[i] == 11 then
					udg_shuxing[i] = udg_shuxing[i] + 5
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66自由门派3级奖励5点自由属性点及随机武功秘籍一本、小概率获得奇武秘籍一本")
					if GetRandomInt(1, 100) <= 10 then
						unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(42, 46), 1), u)
					end
					if GetRandomInt(1, 100) <= 99 then
						unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(19, 36), 1), u)
					else
						unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(1, 18), 1), u)
					end
				--set S9=1
				--           	loop
				--           	    exitwhen S9>20
				--           	    if (X7[d8[i]]==MM9[S9]) then
				--           	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
				--           	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
				--           	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
				--		set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
				--		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
				--           	    endif
				--           	    set S9=S9+1
				--           	endloop
				end
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
					else
						I7[(i - 1) * 20 + L7[i]] = X7[d8[i]]
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, X7[udg_runamen[i]]) >= 2 and e9[i] == false then
		e9[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end
			if d8[i] ~= 11 then
				if udg_runamen[i] == d8[i] then
					UnitAddAbility(u, Z7[d8[i]])
					UnitMakeAbilityPermanent(u, true, Z7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Z7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
					L7[i] = 1
					for _ in _loop_() do
						if L7[i] > wugongshu[i] then break end
						if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
						else
							I7[(i - 1) * 20 + L7[i]] = Z7[d8[i]]
							if true then break end
						end
						L7[i] = L7[i] + 1
					end
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, Z7[udg_runamen[i]]) >= 2 and d9[i] == false then
		d9[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end
			if d8[i] ~= 11 then
				if udg_runamen[i] == d8[i] then
					UnitAddAbility(u, Y7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Y7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
					UnitMakeAbilityPermanent(u, true, Y7[d8[i]])
					L7[i] = 1
					for _ in _loop_() do
						if L7[i] > wugongshu[i] then break end
						if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
						else
							I7[(i - 1) * 20 + L7[i]] = Y7[d8[i]]
							if true then break end
						end
						L7[i] = L7[i] + 1
					end
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) == 10 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了10级，你可以前往全真教（小地图指示点）完成历练1任务（大战江南七怪）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Te)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 25 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了25级，你可以前往少林后山（小地图指示点）完成历练2任务（挑战十八罗汉）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(ag)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 40 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了40级，你可以前往武林城外（小地图指示点）完成历练3任务（勇闯十恶不赦岛）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Bg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 55 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了55级，你可以前往光明顶（小地图指示点）完成历练4任务（勇闯光明顶）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Lg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 70 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了70级，你可以前往少林寺后山（小地图指示点）完成历练5任务（华山论剑）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Rg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) >= 80 and jiawuxue[i] == false then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了80级，获得5个自创武学点（vip玩家获得7个），在通过历练6以后你可以到聚贤庄游坦之处自创武学")
		wuxuedian[i] = wuxuedian[i] + 5
		wuxuedian[i] = wuxuedian[i] + 2
		jiawuxue[i] = true
		zizhiwugong[i] = sc__ZiZhiWuGong_create(0, 0, GetRandomInt(1, 10), 0, 0)
	end
	u = nil
	p = nil
	loc = nil
end


--杀怪回血
function Ma()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function KillGuaiJiaXie()
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1093677914) < 1 then
		SetWidgetLife(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], UNIT_STATE_LIFE) + (shaguaihufui[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 2000.0 * GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], UNIT_STATE_MAX_LIFE)))
	end
end
--每秒回血回蓝
function YiShuHuiXie()
	c7 = 1
	for _ in _loop_() do
		if c7 > 5 then break end
		if GetPlayerController(Player(-1 + c7)) == MAP_CONTROL_USER and UnitHasBuffBJ(udg_hero[c7], 1110454580) == false then
			SetUnitLifePercentBJ(udg_hero[c7], GetUnitLifePercent(udg_hero[c7]) + I2R(yishu[c7]) / 2000.0 + 10 * GetUnitAbilityLevel(udg_hero[c7], 1093682228) + guixihuixie[c7])
			if UnitHaveItem(udg_hero[c7], 1227895108) then
				SetUnitLifePercentBJ(udg_hero[c7], GetUnitLifePercent(udg_hero[c7]) + 6)
			end
			SetUnitLifeBJ(udg_hero[c7], GetUnitState(udg_hero[c7], UNIT_STATE_LIFE) + shengminghuifu[c7])
			SetUnitManaBJ(udg_hero[c7], GetUnitStateSwap(UNIT_STATE_MANA, udg_hero[c7]) + 0.3 * I2R(yishu[c7]) + falihuifu[c7] + 5 * GetUnitAbilityLevel(udg_hero[c7], 1093682228))
		end
		c7 = c7 + 1
	end
end
--伤害回复
function Ra()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function Sa()
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1093677914) < 1 then
		SetWidgetLife(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UNIT_STATE_LIFE) + (shanghaihuifu[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] / 10.0 + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) / 1500.0 * GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UNIT_STATE_MAX_LIFE)))
	end
end
--伤害吸收
function Ua()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function Va()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local r = (1 - RMinBJ(udg_shanghaixishou[i], 0.8)) * GetEventDamage()
	SetWidgetLife(udg_hero[i], GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + RMinBJ(udg_shanghaixishou[i], 0.8) * GetEventDamage())
	if UnitHasBuffBJ(GetTriggerUnit(), 1110454340) and GetUnitAbilityLevel(GetTriggerUnit(), 1093678930) ~= 0 then
		SetWidgetLife(udg_hero[i], GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + 0.3 * GetEventDamage())
	end
	if UnitHaveItem(udg_hero[i], 1227897178) then
		if GetUnitAbilityLevel(udg_hero[i], 1093677903) ~= 0 then
			r = r / 3
		end
		if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= R2I(r) // 20 then
			AdjustPlayerStateBJ( - R2I(r) // 20, p, PLAYER_STATE_RESOURCE_GOLD)
			SetWidgetLife(udg_hero[i], RMinBJ(GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + r, GetUnitState(udg_hero[i], UNIT_STATE_MAX_LIFE)))
		else
			AdjustPlayerStateBJ(GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) * -1, p, PLAYER_STATE_RESOURCE_GOLD)
			SetWidgetLife(udg_hero[i], RMinBJ(GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + 5 * I2R(GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)), GetUnitState(udg_hero[i], UNIT_STATE_MAX_LIFE)))
		end
	end
	u = nil
	p = nil
end

--传送至桃花岛
function mB()
	return GetItemTypeId(GetManipulatedItem()) == 1227897174 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function nB()
	SetUnitPosition(GetTriggerUnit(), 9631, 1139)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 9631, 1139, 0)
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00进入桃花岛")
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
end
--终南山
function GQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896148 -- INLINED!!
end
function HQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 10 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足10级无法传送")
	else
		if shengwang[i] < 500 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足500无法传送")
		else
			loc = GetRectCenter(Te)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入终南山")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--少林寺后山
function lQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896149 -- INLINED!!
end
function JQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 25 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足25级无法传送")
	else
		if shengwang[i] < 1500 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足1500无法传送")
		else
			loc = GetRectCenter(ag)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入少林寺后山")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--塞外
function LQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896150 -- INLINED!!
end
function MQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 40 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足40级无法传送")
	else
		if shengwang[i] < 2500 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足2500无法传送")
		else
			loc = GetRectCenter(Bg)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入塞外")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--光明顶
function OQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896151 -- INLINED!!
end
function PQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 55 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足55级无法传送")
	else
		if shengwang[i] < 4000 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足4000无法传送")
		else
			loc = GetRectCenter(Lg)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入光明顶")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--少林寺后山
function RQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896152 -- INLINED!!
end
function SQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 70 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足70级无法传送")
	else
		if shengwang[i] < 6000 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足6000无法传送")
		else
			loc = GetRectCenter(Rg)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入少林寺后山")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--边疆
function UQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896385 -- INLINED!!
end
function VQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 100 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足100级无法传送")
	else
		if shengwang[i] < 9000 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足9000无法传送")
		else
			loc = GetRectCenter(Zg)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			DisplayTextToPlayer(p, 0, 0, "|cff66ff33进入边疆")
		end
	end
	u = nil
	p = nil
	loc = nil
end
--驿站传送
function IsYiZhan()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227899472 or GetItemTypeId(GetManipulatedItem()) == 1227899473 or GetItemTypeId(GetManipulatedItem()) == 1227899474 or GetItemTypeId(GetManipulatedItem()) == 1227899475 or GetItemTypeId(GetManipulatedItem()) == 1227899476 or GetItemTypeId(GetManipulatedItem()) == 1227899477 or GetItemTypeId(GetManipulatedItem()) == 1227899478 or GetItemTypeId(GetManipulatedItem()) == 1227899479 or GetItemTypeId(GetManipulatedItem()) == 1227899480) -- INLINED!!
end
function YiZhanChuanSong()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227899472 then
		SetUnitPosition(udg_hero[i], 3763, -9091)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), 3763, -9091, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至牛妖幻境")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899473 then
		SetUnitPosition(udg_hero[i], 1446, -2317)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), 1446, -2317, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至初入江湖")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899474 then
		SetUnitPosition(udg_hero[i], 1863, 0)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), 1863, 0, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至少林寺外")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899475 then
		SetUnitPosition(udg_hero[i], -1476, 8139)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -1476, 8139, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至光明顶下")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899476 then
		SetUnitPosition(udg_hero[i], -2400, -3900)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -2400, -3900, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至江南水乡")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899477 then
		SetUnitPosition(udg_hero[i], -4400, -2950)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -4400, -2950, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至全真三子")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899478 then
		SetUnitPosition(udg_hero[i], -5960, -160)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -5960, -160, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至雁门关内")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899479 then
		SetUnitPosition(udg_hero[i], -13000, -15500)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -13000, -15500, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至大辽国")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899480 then
		SetUnitPosition(udg_hero[i], -9000, -14000)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -9000, -14000, 0)
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33传送至聚贤庄")
	end
	p = nil
	u = nil
end

--古董价格
function s5()
	gudong[1] = 1227896115
	nd[1] = 500
	od[1] = 6000
	gudong[2] = 1227896116
	nd[2] = 500
	od[2] = 6000
	gudong[3] = 1227896117
	nd[3] = 500
	od[3] = 6000
	gudong[4] = 1227896118
	nd[4] = 1000
	od[4] = 20000
	gudong[5] = 1227896119
	nd[5] = 1000
	od[5] = 20000
	gudong[6] = 1227896120
	nd[6] = 1000
	od[6] = 20000
	gudong[7] = 1227896121
	nd[7] = 7000
	od[7] = 50000
	gudong[8] = 1227896129
	nd[8] = 7000
	od[8] = 50000
	gudong[9] = 1227896130
	nd[9] = 7000
	od[9] = 50000
	gudong[10] = 1227896131
	nd[10] = 20000
	od[10] = 100000
end
--古董价格变动
function u5()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cfffff000古董商人收购价格发生变动了~")
	pd[1] = GetRandomInt(nd[1], od[1])
	pd[2] = GetRandomInt(nd[2], od[2])
	pd[3] = GetRandomInt(nd[3], od[3])
	pd[4] = GetRandomInt(nd[4], od[4])
	pd[5] = GetRandomInt(nd[5], od[5])
	pd[6] = GetRandomInt(nd[6], od[6])
	pd[7] = GetRandomInt(nd[7], od[7])
	pd[8] = GetRandomInt(nd[8], od[8])
	pd[9] = GetRandomInt(nd[9], od[9])
	pd[10] = GetRandomInt(nd[10], od[10])
end
--查询古董价格
function w5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896112
end
function x5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	i = 1
	for _ in _loop_() do
		if i > 10 then break end
		createitemloc(gudong[i], v7[9])
		if UnitHaveItem(u, gudong[i]) then
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cff00ff00" .. (GetItemName(bj_lastCreatedItem) or "") .. "：" .. (I2S(pd[i]) or "") .. " ( " .. (I2S(nd[i]) or "") .. " ， " .. (I2S(od[i]) or "") .. " )")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 30, (GetItemName(bj_lastCreatedItem) or "") .. "：" .. (I2S(pd[i]) or "") .. " ( " .. (I2S(nd[i]) or "") .. " ， " .. (I2S(od[i]) or "") .. " )")
		end
		RemoveItem(bj_lastCreatedItem)
		i = i + 1
	end
	u = nil
	p = nil
end
--卖古董
function z5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896113
end
function A5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	for _ in _loop_() do
		if i > 10 then break end
		if GetItemTypeId(UnitItemInSlotBJ(u, 1)) == gudong[i] then
			if Ce[1 + GetPlayerId(p)] ~= 4 then
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00卖出" .. (GetItemName(UnitItemInSlotBJ(u, 1)) or "") .. "，获得金钱+" .. (I2S(pd[i]) or ""))
				AdjustPlayerStateBJ(pd[i], p, PLAYER_STATE_RESOURCE_GOLD)
			else
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00你是鉴定师，以最高价格卖出" .. (GetItemName(UnitItemInSlotBJ(u, 1)) or "") .. "，获得金钱+" .. (I2S(od[i]) or ""))
				AdjustPlayerStateBJ(od[i], p, PLAYER_STATE_RESOURCE_GOLD)
			end
			RemoveItem(UnitItemInSlotBJ(u, 1))
		end
		i = i + 1
	end
	u = nil
	p = nil
end
function B5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896114
end
function b5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	local j = 1
	j = 1
	for _ in _loop_() do
		if j > 6 then break end
		i = 1
		for _ in _loop_() do
			if i > 10 then break end
			if GetItemTypeId(UnitItemInSlotBJ(u, j)) == gudong[i] then
				if Ce[1 + GetPlayerId(p)] ~= 4 then
					DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00卖出" .. (GetItemName(UnitItemInSlotBJ(u, j)) or "") .. "，获得金钱+" .. (I2S(pd[i]) or ""))
					AdjustPlayerStateBJ(pd[i], GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
				else
					DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00你是鉴定师，以最高价格卖出" .. (GetItemName(UnitItemInSlotBJ(u, j)) or "") .. "，获得金钱+" .. (I2S(od[i]) or ""))
					AdjustPlayerStateBJ(od[i], GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
				end
				RemoveItem(UnitItemInSlotBJ(u, j))
			end
			i = i + 1
		end
		j = j + 1
	end
	u = nil
	p = nil
end
--收集古董
function CollectGuDong_Conditions()
	return GetItemTypeId(GetManipulatedItem()) == 1227897139 or GetItemTypeId(GetManipulatedItem()) == 1227897140 or GetItemTypeId(GetManipulatedItem()) == 1227897141 or GetItemTypeId(GetManipulatedItem()) == 1227897142
end
function CollectGuDong_Actions()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227897139 then
		if Ce[i] == 4 then
			if udg_gudongD == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套D等级古董，我将送你一本秘籍")
				udg_gudongD = 1
			else
				if UnitHaveItem(u, 1227896115) and UnitHaveItem(u, 1227896116) and UnitHaveItem(u, 1227896117) then
					RemoveItem(FetchUnitItem(u, 1227896115))
					RemoveItem(FetchUnitItem(u, 1227896116))
					RemoveItem(FetchUnitItem(u, 1227896117))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本江湖秘籍送给你了")
					unitadditembyidswapped(udg_jianghu[GetRandomInt(1, 18)], u)
					udg_jdds[i] = udg_jdds[i] + 2
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本江湖秘籍吧")
					--endif
					udg_gudongD = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套D古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897140 then
		if Ce[i] == 4 then
			if udg_gudongC == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套C等级古董，我将送你一本秘籍")
				udg_gudongC = 1
			else
				if UnitHaveItem(u, 1227896118) and UnitHaveItem(u, 1227896119) and UnitHaveItem(u, 1227896120) then
					RemoveItem(FetchUnitItem(u, 1227896118))
					RemoveItem(FetchUnitItem(u, 1227896119))
					RemoveItem(FetchUnitItem(u, 1227896120))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本绝学秘籍送给你了")
					unitadditembyidswapped(udg_juexue[GetRandomInt(1, 10)], u)
					udg_jdds[i] = udg_jdds[i] + 4
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--   if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝学秘籍吧")
					--endif
					udg_gudongC = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套C古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897141 then
		if Ce[i] == 4 then
			if udg_gudongB == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套B等级古董，我将送你一本秘籍")
				udg_gudongB = 1
			else
				if UnitHaveItem(u, 1227896121) and UnitHaveItem(u, 1227896129) and UnitHaveItem(u, 1227896130) then
					RemoveItem(FetchUnitItem(u, 1227896121))
					RemoveItem(FetchUnitItem(u, 1227896129))
					RemoveItem(FetchUnitItem(u, 1227896130))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本绝内秘籍送给你了")
					unitadditembyidswapped(udg_juenei[GetRandomInt(1, 8)], u)
					udg_jdds[i] = udg_jdds[i] + 6
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--   if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝内秘籍吧")
					--endif
					udg_gudongB = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套B古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897142 then
		if Ce[i] == 4 then
			if udg_gudongA == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集两个A等级古董，我将送你一本秘籍")
				udg_gudongA = 1
			else
				if UnitHaveItem(u, 1227896131) then
					RemoveItem(FetchUnitItem(u, 1227896131))
					if UnitHaveItem(u, 1227896131) then
						RemoveItem(FetchUnitItem(u, 1227896131))
						DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本残章送给你了")
						unitadditembyidswapped(udg_canzhang[GetRandomInt(1, 10)], u)
						udg_jdds[i] = udg_jdds[i] + 10
						if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
							DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
						end
						--   if Ce[1+GetPlayerId(p)]==4 then
						-- call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
						-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本残章吧")
						--endif
						udg_gudongA = 0
					else
						UnitAddItemById(u, 1227896131)
						DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐两个A古董哦")
					end
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐两个A古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	end
	if udg_jdds[i] >= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
		udg_jddsbool[i] = true
		if udg_zhangmen[i] == true then
		else
			SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓鉴定大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		end
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得鉴定大师")
		SetPlayerName(p, "〓鉴定大师〓" .. (GetPlayerName(p) or ""))
	end
	u = nil
	p = nil
end

----------守家积分换物品系统开始--------//
function IsJiFenHuan(it)
	if GetItemTypeId(it) == 1227896399 or GetItemTypeId(it) == 1227899184 or GetItemTypeId(it) == 1227896403 or GetItemTypeId(it) == 1227896404 or GetItemTypeId(it) == 1227896402 or GetItemTypeId(it) == 1227896405 or GetItemTypeId(it) == 1227896400 or GetItemTypeId(it) == 1227896401 then
		return true
	end
	return false
end
function JiFenHuan(u, it, id1, num, id2)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(it) == id1 then
		if shoujiajf[i] >= num then
			shoujiajf[i] = shoujiajf[i] - num
			if id1 == 1227896403 or id1 == 1227896404 or id1 == 1227896402 or id1 == 1227896405 or id1 == 1227896401 then
				unitadditembyidswapped(id2, u)
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			elseif id1 == 1227896400 then
				AdjustPlayerStateBJ(20 - udg_nandu * 2, p, PLAYER_STATE_RESOURCE_LUMBER)
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00获得珍稀币+" .. (I2S(20 - udg_nandu * 2) or ""))
			elseif id1 == 1227896399 then
				AdjustPlayerStateBJ(5000 - udg_nandu * 500, p, PLAYER_STATE_RESOURCE_GOLD)
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00获得金钱+" .. (I2S(5000 - udg_nandu * 500) or ""))
			elseif id1 == 1227899184 then
				unitadditembyidswapped(id2, udg_hero[i])
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			end
			DisplayTextToPlayer(p, 0, 0, "|cFF00CCff当前剩余守家积分：" .. (I2S(shoujiajf[i]) or ""))
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00守家积分不足")
		end
	end
	p = nil
end
function BuyKuanDong()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and IsJiFenHuan(GetManipulatedItem())
end
function KuanDongHua()
	local u = GetTriggerUnit()
	JiFenHuan(u, GetManipulatedItem(), 1227896399, 20, 300)
	JiFenHuan(u, GetManipulatedItem(), 1227899184, 50, 1227895892)
	JiFenHuan(u, GetManipulatedItem(), 1227896403, 200, YaoCao[GetRandomInt(1, 12)])
	JiFenHuan(u, GetManipulatedItem(), 1227896404, 100, 1227895374)
	JiFenHuan(u, GetManipulatedItem(), 1227896402, 300, 1227896395)
	JiFenHuan(u, GetManipulatedItem(), 1227896405, 600, 1227895372)
	JiFenHuan(u, GetManipulatedItem(), 1227896400, 100, 5)
	JiFenHuan(u, GetManipulatedItem(), 1227896401, 200, 1227896398)
	u = nil
end
----------江湖声望换物品系统开始--------//
function IsShengWangHuan(it)
	if GetItemTypeId(it) == 1227899215 or GetItemTypeId(it) == 1227899216 or GetItemTypeId(it) == 1227899217 or GetItemTypeId(it) == 1227899218 then
		return true
	end
	return false
end
function ShengWangHuan(u, it, id1, num, id2)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(it) == id1 then
		if shengwang[i] >= num then
			shengwang[i] = shengwang[i] - num
			unitadditembyidswapped(id2, u)
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFF00CCff当前剩余江湖声望：" .. (I2S(shengwang[i]) or ""))
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00江湖声望不足")
		end
	end
	p = nil
end
function BuyKuanDong_1()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and IsShengWangHuan(GetManipulatedItem())
end
function KuanDongHua_1()
	local u = GetTriggerUnit()
	ShengWangHuan(u, GetManipulatedItem(), 1227899215, 200, 1227896395)
	ShengWangHuan(u, GetManipulatedItem(), 1227899216, 4000, 1227896919)
	ShengWangHuan(u, GetManipulatedItem(), 1227899217, 2000, 1227899219)
	ShengWangHuan(u, GetManipulatedItem(), 1227899218, 1000, udg_canzhang[GetRandomInt(1, 10)])
	u = nil
end
function IsWuXueJingYao()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899219
end
function WuXueJingYao()
	local p = GetOwningPlayer(GetTriggerUnit())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local j = GetRandomInt(1, 8)
	local level = GetUnitAbilityLevel(u, I7[(i - 1) * 20 + j])
	if I7[(i - 1) * 20 + j] ~= 1093678418 then
		IncUnitAbilityLevel(u, I7[(i - 1) * 20 + j])
		if GetUnitAbilityLevel(u, I7[(i - 1) * 20 + j]) == level then
			unitadditembyidswapped(1227899219, GetTriggerUnit())
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00随机到九重或无法升重的技能，使用武学精要失败")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00恭喜技能" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "升重")
		end
	else
		unitadditembyidswapped(1227899219, GetTriggerUnit())
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00随机到凌波微步，使用武学精要失败")
	end
	u = nil
	p = nil
end


--遗忘武功
function YiWangJiNeng()
	return GetSpellAbilityId() == 1093678417
end
function ForgetAbility()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	if UnitHaveItem(u, 1227896395) or udg_yiwang[i] == true then
		DialogSetMessage(K7[i], "请选择遗忘的武功（遗忘后无法找回）！")
		if I7[(i - 1) * 20 + 1] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 1]))
			S4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 2] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 2]))
			T4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 3] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 3]))
			U4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 4] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 4]))
			V4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 5] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 5]))
			W4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 6] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 6]))
			X4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 7] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 7]))
			J7[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 8] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 8]))
			J78[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 9] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 9]))
			J79[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 10] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 10]))
			J710[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 11] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 11]))
			J711[i] = bj_lastCreatedButton
		end
		DialogAddButtonBJ(K7[i], "取消")
		l7[i] = bj_lastCreatedButton
		DialogDisplay(p, K7[i], true)
	else
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000遗忘武功需要消耗道具遗忘之石！")
	end
	u = nil
	p = nil
end
function Forget(p, num)
	local i = 1 + GetPlayerId(p)
	if I7[(i - 1) * 20 + num] == 1093677902 and UnitHasBuffBJ(udg_hero[i], 1112504171) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF9933" .. (GetObjectName(I7[(i - 1) * 20 + num]) or "") .. "施展期间不能遗忘！！！")
	else
		S9 = 1
		for _ in _loop_() do
			if S9 > 20 then break end
			if I7[20 * (i - 1) + num] == MM9[S9] then
				udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] - udg_jueneishjc[S9]
				ModifyHeroStat(1, udg_hero[i], 1, udg_jueneiminjie[S9])
				juexuelingwu[i] = juexuelingwu[i] - udg_jueneijxlw[S9]
				udg_baojilv[i] = udg_baojilv[i] - udg_jueneibaojilv[S9]
				udg_shanghaixishou[i] = udg_shanghaixishou[i] - udg_jueneishxs[S9]
			end
			S9 = S9 + 1
		end
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF9933成功遗忘技能：" .. (GetObjectName(I7[(i - 1) * 20 + num]) or ""))
		UnitRemoveAbility(udg_hero[i], I7[20 * (i - 1) + num])
		if I7[(i - 1) * 20 + num] == 1093677904 then
			UnitRemoveAbility(udg_hero[i], 1093677901)
		end
		if I7[(i - 1) * 20 + num] == 1093677908 then
			UnitRemoveAbility(udg_hero[i], 1093682242)
		end
		if I7[20 * (i - 1) + num] == 1093677634 then
			udg_zhemei[i] = 0
		end
		I7[20 * (i - 1) + num] = 1095067243
		RemoveItem(FetchUnitItem(P4[i], 1227896395))
	end
end
function jB()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetClickedButton() == S4[i] then
		Forget(p, 1)
	elseif GetClickedButton() == T4[i] then
		Forget(p, 2)
	elseif GetClickedButton() == U4[i] then
		Forget(p, 3)
	elseif GetClickedButton() == V4[i] then
		Forget(p, 4)
	elseif GetClickedButton() == W4[i] then
		Forget(p, 5)
	elseif GetClickedButton() == X4[i] then
		Forget(p, 6)
	elseif GetClickedButton() == J7[i] then
		Forget(p, 7)
	elseif GetClickedButton() == J78[i] then
		Forget(p, 8)
	elseif GetClickedButton() == J79[i] then
		Forget(p, 9)
	elseif GetClickedButton() == J710[i] then
		Forget(p, 10)
	elseif GetClickedButton() == J711[i] then
		Forget(p, 11)
	end
	DialogClear(K7[i])
	p = nil
end
function GetBookNum(id)
	local i = 1
	for _ in _loop_() do
		if i > MAX_WU_GONG_NUM then break end
		if LoadInteger(YDHT, StringHash("武学") + i, 1) == id then
			return i
		end
		i = i + 1
	end
	return 0
end
function LearnJiNeng(l__ut, it)
	local p = GetOwningPlayer(l__ut)
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local num = GetBookNum(GetItemTypeId(it))
	local id = LoadInteger(YDHT, StringHash("武学") + num, 2)
	local dp1 = LoadInteger(YDHT, StringHash("武学") + num, 4)
	local fy1 = LoadInteger(YDHT, StringHash("武学") + num, 5)
	local gg1 = LoadInteger(YDHT, StringHash("武学") + num, 6)
	local jm1 = LoadInteger(YDHT, StringHash("武学") + num, 7)
	local wx1 = LoadInteger(YDHT, StringHash("武学") + num, 8)
	local ys1 = LoadInteger(YDHT, StringHash("武学") + num, 9)
	if GetUnitAbilityLevel(u, id) > 0 then
		DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你已经拥有此武功了")
		unitadditembyidswapped(GetItemTypeId(it), l__ut)
	else
		if danpo[i] >= dp1 and fuyuan[i] >= fy1 and gengu[i] >= gg1 and jingmai[i] >= jm1 and wuxing[i] >= wx1 and yishu[i] >= ys1 then
			if id == 1093677905 then
				UnitAddAbility(u, id)
				UnitMakeAbilityPermanent(u, true, id)
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得" .. (GetObjectName(id) or ""))
				AddPlayerTechResearched(p, 1382576745, 1)
			else
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[20 * (i - 1) + L7[i]] ~= 1095067243 then
						if L7[i] == wugongshu[i] then
							DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习技能已达上限，请先遗忘部分技能")
							unitadditembyidswapped(GetItemTypeId(it), l__ut)
						end
					else
						UnitAddAbility(u, id)
						UnitMakeAbilityPermanent(u, true, id)
						if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5) >= 2 then
							SetUnitAbilityLevel(u, id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5))
						end
						I7[20 * (i - 1) + L7[i]] = id
						if GetUnitAbilityLevel(u, id) >= 2 then
							DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "想起" .. (GetObjectName(id) or ""))
						else
							DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得" .. (GetObjectName(id) or ""))
						end
						S9 = 1
						for _ in _loop_() do
							if S9 > 20 then break end
							if id == MM9[S9] then
								udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
								ModifyHeroStat(1, u, 0, udg_jueneiminjie[S9])
								udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
								juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
								udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
							end
							S9 = S9 + 1
						end
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习条件不足")
			if danpo[i] >= dp1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033胆魄缺少：" .. (I2S(dp1 - danpo[i]) or ""))
			end
			if gengu[i] >= gg1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033根骨缺少：" .. (I2S(gg1 - gengu[i]) or ""))
			end
			if fuyuan[i] >= fy1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033福缘缺少：" .. (I2S(fy1 - fuyuan[i]) or ""))
			end
			if wuxing[i] >= wx1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033悟性缺少：" .. (I2S(wx1 - wuxing[i]) or ""))
			end
			if jingmai[i] >= jm1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033经脉缺少：" .. (I2S(jm1 - jingmai[i]) or ""))
			end
			if yishu[i] >= ys1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033医术缺少：" .. (I2S(ys1 - yishu[i]) or ""))
			end
			unitadditembyidswapped(GetItemTypeId(it), l__ut)
		end
	end
	p = nil
	u = nil
end
--学习武功
function IsWuGongBook()
	return GetBookNum(GetItemTypeId(GetManipulatedItem())) ~= 0
end
function BookLearnWuGong()
	LearnJiNeng(GetTriggerUnit(), GetManipulatedItem())
end
--内功加成属性
function NeiGongJiaCheng(i, id, baoji, shxs, jxlw, minjie, shjc)
	MM9[i] = id
	udg_jueneibaojilv[i] = baoji
	udg_jueneishxs[i] = shxs
	udg_jueneijxlw[i] = jxlw
	udg_jueneiminjie[i] = minjie
	udg_jueneishjc[i] = shjc
end
function NeiGongJiaChengS()
	--序号、ID、暴击率、伤害吸收、绝学领悟、内力、伤害加成
	NeiGongJiaCheng(1, 1093682232, 0.15, 0.2, 5, 30, 1.0)
	NeiGongJiaCheng(2, 1093679154, 0.08, 0.25, 4, 150, 0.4)
	NeiGongJiaCheng(3, 1093679155, 0.05, 0.3, 3, 100, 0.3)
	NeiGongJiaCheng(4, 1093679428, 0.06, 0.4, 4, 120, 0.8)
	NeiGongJiaCheng(5, 1093679152, 0.12, 0.2, 3, 130, 0.7)
	NeiGongJiaCheng(6, 1093678936, 0.16, 0.15, 3, 60, 0.5)
	NeiGongJiaCheng(7, 1093679156, 0.1, 0.1, 2, 80, 0.6)
	NeiGongJiaCheng(8, 1395666994, 0.2, 0.2, 1, 50, 0.9)
	NeiGongJiaCheng(9, 1093678927, 0.04, 0, 0, 25, 0.2)
	NeiGongJiaCheng(10, 1093678928, 0.06, 0, 0, 30, 0.12)
	NeiGongJiaCheng(11, 1093678929, 0.08, 0, 0, 30, 0.14)
	NeiGongJiaCheng(12, 1093678930, 0.06, 0, 0, 20, 0.15)
	NeiGongJiaCheng(13, 1093678931, 0.1, 0, 0, 40, 0.25)
	NeiGongJiaCheng(14, 1093678932, 0.1, 0, 0, 30, 0.3)
	NeiGongJiaCheng(15, 1093678933, 0.07, 0, 0, 50, 0.18)
	NeiGongJiaCheng(16, 1093678935, 0.09, 0, 0, 50, 0.1)
	NeiGongJiaCheng(17, 1093682254, 0.03, 0, 0, 40, 0.18)
	NeiGongJiaCheng(18, 1093682226, 0.2, 0, 0, 80, 0.5)
	NeiGongJiaCheng(19, 1093682230, 0.8, 0, 0, 10, 0.15)
	NeiGongJiaCheng(20, 1093682228, -0.2, 0, 0, -40, -0.25)
end
--------学习武功系统结束------
--------武功效果系统开始------
function uC()
	return UnitHasBuffBJ(GetAttacker(), 1110454322)
end
function vC()
	local u = GetAttacker()
	if GetUnitState(u, UNIT_STATE_LIFE) <= 0.001 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
		SetWidgetLife(u, 1.0)
	else
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) - 0.001 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
	end
	u = nil
end
function xC()
	return UnitHasBuffBJ(GetAttacker(), 1112437615)
end
function yC()
	local u = GetAttacker()
	if GetUnitState(u, UNIT_STATE_LIFE) <= 0.003 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
		SetWidgetLife(u, 1.0)
	else
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) - 0.003 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
	end
	u = nil
end
function AC()
	return IsUnitAliveBJ(GetFilterUnit()) and (UnitHasBuffBJ(GetFilterUnit(), 1111847784) or UnitHasBuffBJ(GetFilterUnit(), 1110454602) or UnitHasBuffBJ(GetFilterUnit(), 1110454323) or UnitHasBuffBJ(GetFilterUnit(), 1113813609) or UnitHasBuffBJ(GetFilterUnit(), 1110454324) or UnitHasBuffBJ(GetFilterUnit(), 1110454342) or UnitHasBuffBJ(GetFilterUnit(), 1110454343))
end
function aC()
	local loc = GetUnitLoc(GetEnumUnit())
	local loc2 = nil
	if UnitHasBuffBJ(GetEnumUnit(), 1111847784) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.001 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.001 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454602) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454323) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.002 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.002 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1113813609) then
		loc2 = pu(loc, 256.0, GetRandomReal(0, 360.0))
		IssuePointOrderByIdLoc(GetEnumUnit(), 851986, loc2)
		RemoveLocation(loc2)
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454324) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454342) then
		if ModuloInteger(GetUnitPointValue(GetEnumUnit()), 10) ~= 0 then
			if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.01 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
				SetWidgetLife(GetEnumUnit(), 1.0)
			else
				SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.01 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
			end
		else
			if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
				SetWidgetLife(GetEnumUnit(), 1.0)
			else
				SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
			end
		end
		CreateTextTagLocBJ("脑神丹效果", loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454343) then
		--if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
		--	call SetWidgetLife(GetEnumUnit(),1.)
		--else
		SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE))
		--endif
		CreateTextTagLocBJ("化尸粉效果", loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	RemoveLocation(loc)
	loc = nil
	loc2 = nil
end
--每秒钟做一次
function BC()
	ForGroupBJ(wv(bj_mapInitialPlayableArea, Condition(AC)), aC)
end
-------激活残章-----
function ActCanZhang(l__ut, it, id1, lwd, id2, id3, id4, s, flag)
	local p = GetOwningPlayer(l__ut)
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	if GetUnitAbilityLevel(u, id1) <= 0 then
		DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你尚未学会该武功，无法激活隐藏招式")
		unitadditembyidswapped(GetItemTypeId(it), l__ut)
	else
		if flag >= 1 then
			DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你之前已经激活过了")
			unitadditembyidswapped(GetItemTypeId(it), l__ut)
		else
			if juexuelingwu[i] >= lwd and GetUnitAbilityLevel(u, id2) ~= 0 and GetUnitAbilityLevel(u, id3) ~= 0 and GetUnitAbilityLevel(u, id4) ~= 0 then
				flag = 1
				DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了" .. (s or ""))
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033条件不足，激活失败")
				unitadditembyidswapped(GetItemTypeId(it), l__ut)
			end
		end
	end
	u = nil
	p = nil
	return flag
end
function CC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896371
end
function cC()
	Jd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678920, 5, 1093678935, 1093678933, 1093679152, "反两仪刀法第1式：行气如虹", Jd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function EC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896370
end
function FC()
	Id[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093679157, 5, 1093678928, 1093678930, 1093679154, "六脉神剑第1式：少商剑", Id[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function HC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896369
end
function IC()
	Qd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678924, 5, 1093679154, 1093678929, 1093682254, "打狗棒法第1式：恶狗拦路", Qd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function JC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896374
end
function KC()
	ld[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678918, 5, 1093679428, 1093679152, 1093678897, "独孤九剑第1式：破剑式", ld[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function MC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896372
end
function NC()
	Od[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093679158, 5, 1093679155, 1093678936, 1093678669, "胡家刀法第1式：八方藏刀式", Od[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function PC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896368
end
function QC()
	Pd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093679161, 5, 1093679156, 1093682226, 1093678931, "西毒棍法第1式：蛇盘青竹", Pd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function SC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896377
end
function TC()
	Kd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678922, 5, 1093678666, 1093678932, 1395666994, "辟邪剑法第1式：流星赶月", Kd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function VC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896376
end
function WC()
	Ld[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678921, 5, 1093678926, 1093682232, 1093678936, "野球拳第1式：翻肘裂捶", Ld[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function YC()
	return GetItemTypeId(GetManipulatedItem()) == 1227896375
end
function ZC()
	Nd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678917, 5, 1093682232, 1093678927, 1093682254, "降龙十八掌第1式：神龙摆尾", Nd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
function ec()
	return GetItemTypeId(GetManipulatedItem()) == 1227896373
end
function gc()
	Md[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093678919, 5, 1093678664, 1093678931, 1093679156, "黯然销魂掌第1式：无中生有", Md[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
--九阳真经残卷
function isJiuYangCanJuan()
	return GetItemTypeId(GetManipulatedItem()) == 1227899735
end
function jiuYangCanJuan()
	JYd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 1093682254, 5, 1093682254, 1093679428, 1093678936, "九阳真经残卷", JYd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
end
--武魂石系统
function IsWuHunShi()
	if GetItemTypeId(GetManipulatedItem()) == 1227897169 then
		if De[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == false and Ee[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == false then
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFFFF0033未集齐决战套装或江湖套装，激活失败")
			return false
		else
			return true
		end
	end
	return false
end
function WuHunShi()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	DialogClear(wuhun)
	RemoveItem(GetManipulatedItem())
	DialogSetMessage(wuhun, "请选择要激活的残章")
	if Jd[i] == 0 then
		wuhun1[1] = DialogAddButtonBJ(wuhun, "反两仪刀法")
	end
	if Id[i] == 0 then
		wuhun1[2] = DialogAddButtonBJ(wuhun, "六脉神剑")
	end
	if Qd[i] == 0 then
		wuhun1[3] = DialogAddButtonBJ(wuhun, "打狗棒法")
	end
	if ld[i] == 0 then
		wuhun1[4] = DialogAddButtonBJ(wuhun, "独孤九剑")
	end
	if Od[i] == 0 then
		wuhun1[5] = DialogAddButtonBJ(wuhun, "胡家刀法")
	end
	if Pd[i] == 0 then
		wuhun1[6] = DialogAddButtonBJ(wuhun, "西毒棍法")
	end
	if Kd[i] == 0 then
		wuhun1[7] = DialogAddButtonBJ(wuhun, "辟邪剑法")
	end
	if Ld[i] == 0 then
		wuhun1[8] = DialogAddButtonBJ(wuhun, "野球拳法")
	end
	if Nd[i] == 0 then
		wuhun1[9] = DialogAddButtonBJ(wuhun, "降龙十八掌")
	end
	if Md[i] == 0 then
		wuhun1[10] = DialogAddButtonBJ(wuhun, "黯然销魂掌")
	end
	wuhun1[11] = DialogAddButtonBJ(wuhun, "取消")
	DialogDisplay(p, wuhun, true)
	u = nil
	p = nil
end
function JiHuoCanZhang()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetClickedButton() == wuhun1[1] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了反两仪刀法第1式：行气如虹")
		Jd[i] = 1
	end
	if GetClickedButton() == wuhun1[2] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了六脉神剑第1式：少商剑")
		Id[i] = 1
	end
	if GetClickedButton() == wuhun1[3] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了打狗棒法第1式：恶狗拦路")
		Qd[i] = 1
	end
	if GetClickedButton() == wuhun1[4] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了独孤九剑第1式：破剑式")
		ld[i] = 1
	end
	if GetClickedButton() == wuhun1[5] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了胡家刀法第1式：八方藏刀式")
		Od[i] = 1
	end
	if GetClickedButton() == wuhun1[6] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了西毒棍法第1式：蛇盘青竹")
		Pd[i] = 1
	end
	if GetClickedButton() == wuhun1[7] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了辟邪剑法第1式：流星赶月")
		Kd[i] = 1
	end
	if GetClickedButton() == wuhun1[8] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了野球拳第1式：翻肘裂捶")
		Ld[i] = 1
	end
	if GetClickedButton() == wuhun1[9] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了降龙十八掌第1式：神龙摆尾")
		Nd[i] = 1
	end
	if GetClickedButton() == wuhun1[10] then
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33恭喜激活了黯然销魂掌第1式：无中生有")
		Md[i] = 1
	end
	if GetClickedButton() == wuhun1[11] then
		UnitAddItemById(P4[i], 1227897169)
	end
	p = nil
end
--学习门派内功
function pR()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895856 -- INLINED!!
end
function LearnNeiGong()
	local b = GetClickedButton()
	local u = LoadUnitHandle(YDHT, StringHash("门派内功"), 3)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local id = LoadInteger(YDHT, StringHash("门派内功"), 4)
	local p = GetOwningPlayer(u)
	if b == LoadButtonHandle(YDHT, StringHash("门派内功"), 1) then
		UnitAddAbility(u, Q8[id])
		UnitMakeAbilityPermanent(u, true, Q8[id])
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Q8[id]) or ""))
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
		SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		L7[i] = 1
		for _ in _loop_() do
			if L7[i] > wugongshu[i] then break end
			if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
			else
				I7[(i - 1) * 20 + L7[i]] = Q8[id]
				if true then break end
			end
			L7[i] = L7[i] + 1
		end
	elseif b == LoadButtonHandle(YDHT, StringHash("门派内功"), 2) then
		if P8[id] == 1093678935 then
			if GetUnitAbilityLevel(u, 1093678935) >= 1 then
				IncUnitAbilityLevel(u, P8[id])
			else
				UnitAddAbility(u, P8[id])
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
					else
						I7[(i - 1) * 20 + L7[i]] = P8[id]
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
			IncUnitAbilityLevel(u, P8[id])
		else
			UnitAddAbility(u, P8[id])
			UnitMakeAbilityPermanent(u, true, P8[id])
			L7[i] = 1
			for _ in _loop_() do
				if L7[i] > wugongshu[i] then break end
				if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
				else
					I7[(i - 1) * 20 + L7[i]] = P8[id]
					if true then break end
				end
				L7[i] = L7[i] + 1
			end
		end
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(P8[id]) or ""))
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
		SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
	end
	DialogClear(udg_menpaineigong)
	FlushChildHashtable(YDHT, StringHash("门派内功"))
	DialogDestroy(udg_menpaineigong)
	udg_menpaineigong = nil
	b = nil
	u = nil
	p = nil
end
function qR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local b1 = nil
	local b2 = nil
	local t = CreateTrigger()
	local j = 0
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, i)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if UnitHaveItem(GetTriggerUnit(), 1227895642) == false then
		DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
	else
		if O8[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00你已经修行过了")
		else
			if GetUnitAbilityLevel(udg_hero[i], Y7[udg_runamen[i]]) < 2 then
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "你的" .. (GetAbilityName(Y7[udg_runamen[i]]) or "") .. "|r还没修炼到位")
			else
				j = 1
				for _ in _loop_() do
					if j > wugongshu[i] then break end
					if I7[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) * 20 + j] ~= 1095067243 then
						--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"j="+I2S(j))
						if j == wugongshu[i] then
							DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
						end
					else
						O8[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						RemoveItem(FetchUnitItem(GetTriggerUnit(), 1227895642))
						bj_forLoopBIndex = 1
						bj_forLoopBIndexEnd = 20
						for _ in _loop_() do
							if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
							if udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == 11 then
								DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "自由门派没有内功")
								if true then break end
							elseif udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == 13 then
								DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "该门派不在此学习内功")
								unitadditembyidswapped(1227895642, GetTriggerUnit())
								O8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
								if true then break end
							else
								if udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == bj_forLoopBIndex then
									udg_menpaineigong = DialogCreate()
									DialogSetMessage(udg_menpaineigong, "请选择你要修习的内功")
									b1 = DialogAddButtonBJ(udg_menpaineigong, GetObjectName(Q8[bj_forLoopBIndex]))
									b2 = DialogAddButtonBJ(udg_menpaineigong, GetObjectName(P8[bj_forLoopBIndex]))
									SaveButtonHandle(YDHT, StringHash("门派内功"), 1, b1)
									SaveButtonHandle(YDHT, StringHash("门派内功"), 2, b2)
									SaveUnitHandle(YDHT, StringHash("门派内功"), 3, GetTriggerUnit())
									SaveInteger(YDHT, StringHash("门派内功"), 4, bj_forLoopBIndex)
									DialogDisplay(GetOwningPlayer(GetTriggerUnit()), udg_menpaineigong, true)
									TriggerRegisterDialogEvent(t, udg_menpaineigong)
									TriggerAddAction(t, LearnNeiGong)
								end
							end
							bj_forLoopBIndex = bj_forLoopBIndex + 1
						end
						if true then break end
					end
					j = j + 1
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
	b1 = nil
	b2 = nil
end
function IsMuRongNeiGong()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227897158 -- INLINED!!
end
function MuRongNeiGong()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	if udg_runamen[i] ~= 13 then
		DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你没有拜入姑苏慕容")
	else
		if UnitHaveItem(u, 1227895642) == false then
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
		else
			if GetUnitAbilityLevel(u, Y7[udg_runamen[i]]) < 2 then
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "你的" .. (GetAbilityName(Y7[udg_runamen[i]]) or "") .. "|r还没修炼到位")
			else
				if O8[i] == 1 then
					DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你已经修行过了")
				else
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							O8[i] = 1
							RemoveItem(FetchUnitItem(u, 1227895642))
							if danpo[i] > 20 then
								UnitAddAbility(u, P8[13])
								UnitMakeAbilityPermanent(u, true, P8[13])
								DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(P8[13]) or ""))
								DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
								SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
								L7[i] = 1
								for _ in _loop_() do
									if L7[i] > wugongshu[i] then break end
									if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
									else
										I7[(i - 1) * 20 + L7[i]] = P8[13]
										if true then break end
									end
									L7[i] = L7[i] + 1
								end
							else
								UnitAddAbility(u, Q8[13])
								UnitMakeAbilityPermanent(u, true, Q8[13])
								DisplayTextToPlayer(p, 0, 0, "|cff00FF66你还是先掌握" .. (GetObjectName(Q8[13]) or "") .. "吧")
								DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
								SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
								L7[i] = 1
								for _ in _loop_() do
									if L7[i] > wugongshu[i] then break end
									if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
									else
										I7[(i - 1) * 20 + L7[i]] = Q8[13]
										if true then break end
									end
									L7[i] = L7[i] + 1
								end
							end
							if true then break end
						end
						j = j + 1
					end
				end
			end
		end
	end
	u = nil
	p = nil
end


--===========================================================================
--合成物品
function HeCheng_Conditions()
	--call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
	return Ce[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 or GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 or GetItemTypeId(GetManipulatedItem()) == 1227897154 or GetItemTypeId(GetManipulatedItem()) == 1227897156
end
function HeCheng_Actions()
	--二合一
	--if GetItemTypeId(GetManipulatedItem()) == 'I09C' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
	--   	call YDWENewItemsFormula( 'I09C', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00B' )
	--endif
	--if GetItemTypeId(GetManipulatedItem()) == 'I098' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
	--   	call YDWENewItemsFormula( 'I098', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	--endif
	if GetItemTypeId(GetManipulatedItem()) == 1227894850 or GetItemTypeId(GetManipulatedItem()) == 1227894852 then
		YDWENewItemsFormula(1227894850, 1, 1227894852, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227894852)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895379 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895379, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895373)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895373 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895373, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895377)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895377 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895377, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895378)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895378 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895378, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895376)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 then
		YDWENewItemsFormula(1227897145, 1, 1227897153, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227897155)
	end
	--三合一
	if GetItemTypeId(GetManipulatedItem()) == 1227896115 or GetItemTypeId(GetManipulatedItem()) == 1227896120 or GetItemTypeId(GetManipulatedItem()) == 1227896129 then
		YDWENewItemsFormula(1227896115, 1, 1227896120, 1, 1227896129, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227896131)
	end
	--四合一
	--五合一
	--六合一
	if GetItemTypeId(GetManipulatedItem()) == 1227895376 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895376, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227896918)
	end
--call BJDebugMsg(GetItemName(GetLastCombinedItem())+"A")
--if GetItemType(GetLastCombinedItem())==ITEM_TYPE_ARTIFACT then
--    call SaveInteger(YDHT,GetHandleId(GetLastCombinedItem()),0,WeaponNaiJiu(GetLastCombinedItem()))
--   endif
end
--锻造大师补属性
function DZDSBuShuXing(u)
	local ii7 = 0
	local ii8 = 0
	local ii9 = 0
	local it = nil
	local j = 1
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	for _ in _loop_() do
		if j >= 7 then break end
		it = UnitItemInSlotBJ(u, j)
		ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
		ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
		ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
		--call BJDebugMsg("第"+I2S(j)+"格子物品的数值为"+I2S(ii7*100+ii8*10+ii9))
		if ii7 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii7 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii7 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii7 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii7 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii7 == 6 then
			yishu[i] = yishu[i] + 2
		end
		if ii8 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii8 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii8 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii8 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii8 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii8 == 6 then
			yishu[i] = yishu[i] + 2
		end
		if ii9 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii9 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii9 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii9 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii9 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii9 == 6 then
			yishu[i] = yishu[i] + 2
		end
		j = j + 1
	end
	it = nil
end
--为合成的武器增加耐久度
function WuPinHeCheng()
	local it = bj_lastCombinedItem -- INLINED!!
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i] == 2 and LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it)) == false and udg_dzds[i] <= 5 then
		udg_dzds[i] = udg_dzds[i] + 1
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF66FF00恭喜您锻造成功第" .. (I2S(udg_dzds[i]) or "") .. "件装备，锻造成功5件装备可以获得锻造大师哦")
		SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it), true)
	end
	if Ce[i] == 2 and udg_dzds[i] >= 5 and udg_dzdsbool[i] == false then
		udg_dzdsbool[i] = true
		DZDSBuShuXing(udg_hero[i])
		if udg_zhangmen[i] == true then
		else
			SaveStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit())), "〓锻造大师〓" .. (LoadStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit()))) or ""))
		end
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "获得锻造大师")
		SetPlayerName(GetOwningPlayer(GetTriggerUnit()), "〓锻造大师〓" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or ""))
	end
	--call BJDebugMsg(GetItemName(it))
	if GetItemType(it) == ITEM_TYPE_ARTIFACT then
		SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
	end
	it = nil
end


--伴侣属性
function BanLvShuXing_1(num, id1, id2, blgg, blwx, bljm, blfy, bldp, blys)
	R8[num] = id1
	S8[num] = id2
	udg_blgg[num] = blgg
	udg_blwx[num] = blwx
	udg_bljm[num] = bljm
	udg_blfy[num] = blfy
	udg_bldp[num] = bldp
	udg_blys[num] = blys
end
function LO()
	BanLvShuXing_1(1, 1697656885, 1227895865, 2, 0, 0, 0, 3, 0)
	BanLvShuXing_1(2, 1697656886, 1227895874, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(3, 1697656887, 1227895380, 0, 0, 0, 0, 1, 1)
	BanLvShuXing_1(4, 1697656888, 1227895864, 0, 2, 2, 1, 0, 0)
	BanLvShuXing_1(5, 1697656889, 1227895858, 2, 0, 1, 0, 0, 0)
	BanLvShuXing_1(6, 1697656898, 1227895859, 0, 2, 0, 0, 0, 1)
	BanLvShuXing_1(7, 1697656897, 1227895857, 0, 0, 0, 2, 0, 0)
	BanLvShuXing_1(8, 1697656899, 1227895873, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(9, 1697656900, 1227895863, 2, 0, 0, 2, 1, 0)
	BanLvShuXing_1(10, 1697656901, 1227895862, 0, 1, 3, 0, 0, 1)
	BanLvShuXing_1(11, 1697656902, 1227895861, 1, 1, 0, 0, 0, 2)
	BanLvShuXing_1(12, 1697656903, 1227895860, 0, 0, 2, 1, 1, 0)
	BanLvShuXing_1(13, 1697657154, 1227899728, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(14, 1697657155, 1227899731, 3, 3, 3, 3, 3, 3) --白猿
end
--结成伴侣
function NO()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemType(GetManipulatedItem()) == ITEM_TYPE_PERMANENT
end
function OO()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	local loc = GetUnitLoc(u)
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		for _ in _loop_() do
			if j > MAX_BAN_LV_NUM then break end
			if GetUnitTypeId(k8[i]) == R8[j] then
				jingmai[i] = jingmai[i] - udg_bljm[j]
				fuyuan[i] = fuyuan[i] - udg_blfy[j]
				wuxing[i] = wuxing[i] - udg_blwx[j]
				yishu[i] = yishu[i] - udg_blys[j]
				gengu[i] = gengu[i] - udg_blgg[j]
				danpo[i] = danpo[i] - udg_bldp[j]
			end
			j = j + 1
		end
		RemoveUnit(k8[i])
		j = 1
		for _ in _loop_() do
			if j > MAX_BAN_LV_NUM then break end
			if GetItemTypeId(GetManipulatedItem()) == S8[j] then
				PlaySoundOnUnitBJ(Fh, 100, u)
				CreateNUnitsAtLoc(1, R8[j], p, loc, bj_UNIT_FACING)
				zw(bj_lastCreatedUnit, u, 1.0, 250.0, 1000.0, 1500.0, 75)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00恭喜你与" .. (GetUnitName(bj_lastCreatedUnit) or "") .. "结成伴侣")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00查看伴侣属性输入“bl”")
				k8[i] = bj_lastCreatedUnit
				jingmai[i] = jingmai[i] + udg_bljm[j]
				fuyuan[i] = fuyuan[i] + udg_blfy[j]
				wuxing[i] = wuxing[i] + udg_blwx[j]
				yishu[i] = yishu[i] + udg_blys[j]
				gengu[i] = gengu[i] + udg_blgg[j]
				danpo[i] = danpo[i] + udg_bldp[j]
				RemoveLocation(loc)
			end
			j = j + 1
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
	end
	u = nil
	p = nil
	loc = nil
end


--整理物品
function SO()
	if GetWidgetLife(GetEnumItem()) == 101.0 then --D古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(nh))
		RemoveLocation(GetRectCenter(nh))
	elseif GetWidgetLife(GetEnumItem()) == 102.0 then --C古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(oh))
		RemoveLocation(GetRectCenter(oh))
	elseif GetWidgetLife(GetEnumItem()) == 103.0 then --B古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(ph))
		RemoveLocation(GetRectCenter(ph))
	elseif GetWidgetLife(GetEnumItem()) == 104.0 then --A古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(qh))
		RemoveLocation(GetRectCenter(qh))
	elseif GetWidgetLife(GetEnumItem()) == 105.0 then --C草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(rh))
		RemoveLocation(GetRectCenter(rh))
	elseif GetWidgetLife(GetEnumItem()) == 106.0 then --B草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(sh))
		RemoveLocation(GetRectCenter(sh))
	elseif GetWidgetLife(GetEnumItem()) == 107.0 then --A草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(th))
		RemoveLocation(GetRectCenter(th))
	elseif GetWidgetLife(GetEnumItem()) == 108.0 then --18种江湖武功
		SetItemPosition(GetEnumItem(), -1819.0, 484.0)
	elseif GetWidgetLife(GetEnumItem()) == 109.0 then
		SetItemPosition(GetEnumItem(), -1300.0, -300.0)
	end
end
function TO()
	EnumItemsInRectBJ(bj_mapInitialPlayableArea, SO)
end


--------轻功系统------//
function Trig_ttConditions()
	return GetSpellAbilityId() == 1093677653 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true
end
function qinggongxiaoshi()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u)) + 1])
	PauseTimer(tm)
	DestroyTimer(tm)
	u = nil
	tm = nil
end
function Trig_ttActions()
	local d1 = GetUnitLoc(GetTriggerUnit())
	local d2 = GetSpellTargetLoc()
	local agi = I2R(GetHeroAgi(GetTriggerUnit(), false))
	local l__jd = AngleBetweenPoints(d1, d2)
	local distance = 500 + I2R(GetHeroStr(GetTriggerUnit(), false)) / 3
	local velocity = 48.027 * Pow(agi, 0.3131)
	local lasttime = 5.0
	local tm = CreateTimer()
	if velocity > 1000 then
		velocity = 1000
	end
	if distance > 2000 then
		distance = 2000
	end
	SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功distance"), distance)
	if distance > DistanceBetweenPoints(d1, d2) then
		distance = DistanceBetweenPoints(d1, d2)
	end
	lasttime = distance / velocity
	SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功velocity"), velocity)
	SaveUnitHandle(YDHT, GetHandleId(tm), 0, GetTriggerUnit())
	SetUnitFacing(GetTriggerUnit(), l__jd)
	DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1] = AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
	SetUnitAnimation(GetTriggerUnit(), "walk")
	YDWEJumpTimer(GetTriggerUnit(), l__jd, distance, lasttime, 0.03, 100)
	TimerStart(tm, lasttime, false, qinggongxiaoshi)
	RemoveLocation(d1)
	RemoveLocation(d2)
	d1 = nil
	d2 = nil
	tm = nil
end
--伤害测试桩
function IsCeShiShangHai()
	return GetItemTypeId(GetManipulatedItem()) == 1227899447
end
function CeShiJieShu()
	local t = GetExpiredTimer()
	ceshi = false
	SetUnitOwner(gg_unit_N00I_0116, Player(5), true)
	BJDebugMsg("|cff00ff00测试总伤害为" .. (R2S(ceshizongshanghai) or ""))
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
end
function CeShiShangHai()
	local t = CreateTimer()
	ceshi = true
	ceshizongshanghai = 0
	BJDebugMsg(GetUnitName(gg_unit_N00I_0116))
	SetUnitOwner(gg_unit_N00I_0116, Player(6), true)
	TimerStart(t, 10, false, CeShiJieShu)
	t = nil
end
function IsCalcShangHai()
	return ceshi
end
function CalcShangHai()
	ceshizongshanghai = ceshizongshanghai + GetEventDamage()
end
--抽血术
function ChouXie_Condition()
	return IsUnitInGroup(GetAttacker(), w7) and GetPlayerTechCountSimple(1378889777, Player(6)) == 50 and GetTriggerUnit() ~= udg_ZhengPaiWL and GetUnitTypeId(GetTriggerUnit()) ~= 1214409837 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429574 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429575
end
function ChouXie_Action()
	if GetRandomInt(1, 100) <= 20 then
		SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) - 6.0)
	end
end
--杀怪(进攻怪及练功房)
function ey()
	return IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnit())) and (GetOwningPlayer(GetTriggerUnit()) == Player(6) or GetOwningPlayer(GetTriggerUnit()) == Player(7))
end
function KillGuai()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 1
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	if GetOwningPlayer(GetTriggerUnit()) == Player(7) then
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896391) then
			T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
			U7 = T7 * (30.0 * (I2R(udg_boshu + 1) / 1.0))
			AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		else
			T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
			U7 = T7 * (15.0 * (I2R(udg_boshu + 1) / 1.0))
			AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896393) then
			if GetRandomInt(1, 100) <= 15 then
				AdjustPlayerStateBJ(1, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
			end
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896390) then
			shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + udg_boshu // 5
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896392) then
			AddHeroXP(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], GetUnitLevel(GetTriggerUnit()) * 20, true)
		end
	else
		T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
		U7 = T7 * (25.0 * (I2R(udg_boshu + 1) / 1.0))
		AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		if GetUnitPointValue(GetTriggerUnit()) == 102 then
			i = 1
			for _ in _loop_() do
				if i >= 6 then break end
				shoujiajf[i] = shoujiajf[i] + 15 * (10 - GetNumPlayer()) // 10
				i = i + 1
			end
			ae = ae + (10 + GetPlayerTechCountSimple(1378889777, Player(6)))
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀名门高手，每位玩家获得守家积分+" .. (I2S(shoujiajf[i] + 15 * (10 - GetNumPlayer()) // 10) or ""))
			SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
			if GetRandomInt(1, 50) <= 5 then
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				end
			end
			if GetRandomInt(1, 50) <= 2 then
				createitemloc(1227897138, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 100) <= 10 then
					createitemloc(1227896398, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 90) <= 10 then
						createitemloc(1227896395, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						if GetRandomInt(1, 80) <= 10 then
							createitemloc(1227896397, LoadLocationHandle(YDHT, id * cx, 392811314))
						end
					end
				end
			end
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			--判断是否为进攻BOSS
			if GetUnitPointValue(GetTriggerUnit()) == 101 then
				i = 1
				for _ in _loop_() do
					if i >= 6 then break end
					shoujiajf[i] = shoujiajf[i] + 30 * (10 - GetNumPlayer()) // 10
					i = i + 1
				end
				ae = ae + (10 + GetPlayerTechCountSimple(1378889777, Player(6)))
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀BOSS，每位玩家获得守家积分+" .. (I2S(shoujiajf[i] + 30 * (10 - GetNumPlayer()) // 10) or ""))
				ae = ae + (30 + GetPlayerTechCountSimple(1378889777, Player(6)))
				if GetRandomInt(1, 100) <= 50 then
					udg_shuxing[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = udg_shuxing[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 1
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFF33CC00" .. (GetPlayerName(GetOwningPlayer(GetKillingUnit())) or "") .. "|cFF33CC00击杀了BOSS" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cFF33CC00获得了一个自由属性点")
				end
				SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				end
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetKillingUnit() ~= nil then
					shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 1
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--魔教救人
function MoJiaoJiuRen_1()
	SetUnitPosition(GetEnumUnit(), -910, 750)
end
function MoJiaoJiuRen()
	DisplayTextToForce(GetPlayersAll(), "|CFFCCFF00魔教潜入监狱救走了被抓住的敌人")
	ForGroupBJ(YDWEGetUnitsInRectOfPlayerNull(udg_jail, Player(6)), MoJiaoJiuRen_1)
end
--杀怪加声望
function Xa()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function Ya()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local x
	local y
	shengwang[i] = shengwang[i] + udg_boshu // 7 + 1
	if ModuloInteger(GetUnitPointValue(u), 10) == 1 then
		shengwang[i] = shengwang[i] + 8
	end
	if p == Player(6) then
		zd = zd + GetRandomInt(1, 2)
		if zd >= 100 then
			zd = 0
			x = GetUnitX(u)
			y = GetUnitY(u)
			createitem(gudong[GetRandomInt(1, 6 + udg_boshu // 5)], x, y)
		end
	end
	u = nil
	p = nil
end
function dB()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function eB()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	shengwang[i] = shengwang[i] + 1
	if ModuloInteger(GetUnitPointValue(GetTriggerUnit()), 10) == 1 then
		shengwang[i] = shengwang[i] + 5
	elseif ModuloInteger(GetUnitPointValue(GetTriggerUnit()), 10) == 2 then
		shengwang[i] = shengwang[i] + 10
	end
end
--经验符
function oQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1952807024
end
function pQ()
	AddHeroXP(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 200000, true)
end
--购买等级
function rQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896154
end
function sQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetUnitLevel(udg_hero[i]) >= 100 then
		AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
		DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFCC00等级高于100无法购买等级")
	else
		if Ce[i] == 5 then
			AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFCC00选择该副职无法购买等级")
		else
			SetHeroLevel(udg_hero[i], GetUnitLevel(udg_hero[i]) + 1, true)
		end
	end
	u = nil
	p = nil
end
--新手大礼包
function uQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896394
end
function vQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	if GetRandomInt(1, 12) <= 3 then
		AdjustPlayerStateBJ(20000, p, PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用新手大礼包获得金钱+20000")
	else
		if GetRandomInt(1, 9) <= 3 then
			UnitAddItemById(u, udg_jianghu[GetRandomInt(1, 18)])
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用新手大礼包获得随机江湖武功")
		else
			if GetRandomInt(1, 6) <= 3 then
				UnitAddAbility(u, 1093679441)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用新手大礼包获得神行状态")
				TriggerSleepAction(300.0)
				UnitRemoveAbility(u, 1093679441)
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000失去神行效果")
			else
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 20000)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用新手大礼包获得狂暴状态")
				TriggerSleepAction(120.0)
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 1, 20000)
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000失去狂暴效果")
			end
		end
	end
	u = nil
	p = nil
end
--装备打孔
function xQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896398
end
function yQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i11 = 0
	local i12 = 0
	if GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_ARTIFACT or GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_PURCHASABLE or GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_CHARGED then
		i12 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 1000, 10)
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 100, 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 10, 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)), 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		if i12 < 3 then
			SetItemUserData(UnitItemInSlotBJ(u, 1), GetItemUserData(UnitItemInSlotBJ(u, 1)) + 1000)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cff00ffff打孔成功！")
		else
			unitadditembyidswapped(1227896398, u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000第一格物品不能再打孔了")
		end
	else
		unitadditembyidswapped(1227896398, u)
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000第一格物品不是装备")
	end
	u = nil
	p = nil
end
--加入副职
function AQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227896913 or GetItemTypeId(GetManipulatedItem()) == 1227899188 or GetItemTypeId(GetManipulatedItem()) == 1227899189 or GetItemTypeId(GetManipulatedItem()) == 1227899190 or GetItemTypeId(GetManipulatedItem()) == 1227899191 or GetItemTypeId(GetManipulatedItem()) == 1227896915 or GetItemTypeId(GetManipulatedItem()) == 1227896916 or GetItemTypeId(GetManipulatedItem()) == 1227899719)
end
function aQ()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i] == 0 then
		if GetItemTypeId(GetManipulatedItem()) == 1227896913 then
			yishu[i] = yishu[i] + 5
			Ce[i] = 1
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为炼丹师，获得医术+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227896915 then
			gengu[i] = gengu[i] + 5
			Ce[i] = 2
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为锻造师，获得根骨+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227896916 then
			danpo[i] = danpo[i] + 5
			Ce[i] = 3
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为兵器师，获得胆魄+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899188 then
			wuxing[i] = wuxing[i] + 5
			Ce[i] = 4
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为鉴定师，获得悟性+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899189 then
			jingmai[i] = jingmai[i] + 5
			Ce[i] = 5
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为练气师，获得经脉+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899190 then
			fuyuan[i] = fuyuan[i] + 5
			Ce[i] = 6
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为寻宝师，获得福缘+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899191 then
			if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558130 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558131 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558643 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558664 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558665 then
				Ce[i] = 7
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为丫鬟，获得全属性+1")
				danpo[i] = danpo[i] + 1
				wuxing[i] = wuxing[i] + 1
				gengu[i] = gengu[i] + 1
				fuyuan[i] = fuyuan[i] + 1
				jingmai[i] = jingmai[i] + 1
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00男性角色不可加入该副职")
			end
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899719 then
			if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558130 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558131 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558643 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558664 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558665 then
				Ce[i] = 8
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为精武师，获得全属性+1")
				danpo[i] = danpo[i] + 1
				wuxing[i] = wuxing[i] + 1
				gengu[i] = gengu[i] + 1
				fuyuan[i] = fuyuan[i] + 1
				jingmai[i] = jingmai[i] + 1
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00女性角色不可加入该副职")
			end
		end
	else
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffff0000你已经加入专精了！（每个角色只能选择一种专精，也可以不选择）")
	end
end
--结拜系统
function MaiHuangZhi_Conditions()
	return GetItemTypeId(GetManipulatedItem()) == 1227894832
end
function MaiHuangZhi()
	unitadditembyidswapped(1227896153, GetTriggerUnit())
	unitadditembyidswapped(1227896153, GetTriggerUnit())
end
function IsHuangZhi()
	return GetItemTypeId(GetManipulatedItem()) == 1227896153
end
function ShaoHuangZhi()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if Bd[i] then
		DisplayTimedTextToPlayer(p, 0, 0, 20.0, "|cffff0000你已经使用过黄纸了，还是等等另外一个人的响应吧")
		unitadditembyidswapped(1227896153, GetTriggerUnit())
	else
		Bd[i] = true
		ad = ad + 1
		bd[ad] = udg_hero[i]
		if ModuloInteger(ad, 2) == 0 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 20.0, "|cffff66ff恭喜" .. (GetPlayerName(GetOwningPlayer(bd[ad - 1])) or "") .. "和" .. (GetPlayerName(GetOwningPlayer(bd[ad])) or "") .. "结拜为兄弟")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 20.0, "|cffff66ff使用成功，等待另外一位玩家与你结拜....")
		end
	end
	u = nil
	p = nil
end
function kT()
	return Bd[1 + GetPlayerId(GetTriggerPlayer())]
end
function mT()
	local i = 1 + GetPlayerId(GetTriggerPlayer())
	local j = 1
	local x
	local y
	for _ in _loop_() do
		if j > 6 then break end
		if udg_hero[i] == bd[j] then
			if ModuloInteger(j, 2) == 0 then
				if bd[j - 1] ~= nil then
					x = GetUnitX(bd[j - 1])
					y = GetUnitY(bd[j - 1])
					SetUnitPosition(udg_hero[i], x, y)
					PanCameraToTimedForPlayer(GetTriggerPlayer(), x, y, 0)
				end
			else
				if bd[j + 1] ~= nil then
					x = GetUnitX(bd[j + 1])
					y = GetUnitY(bd[j + 1])
					SetUnitPosition(udg_hero[i], x, y)
					PanCameraToTimedForPlayer(GetTriggerPlayer(), x, y, 0)
				end
			end
		end
		j = j + 1
	end
end
function qT()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227899471 or GetItemTypeId(GetManipulatedItem()) == 1227896659)
end
function rT()
	--if GetItemTypeId(GetManipulatedItem())==1227896663 then
	--	set ue = 1
	--endif
	--if GetItemTypeId(GetManipulatedItem())==1227896661 then
	--	set ue = 2
	--endif
	--if GetItemTypeId(GetManipulatedItem())==1227896660 then
	--	set ue = 3
	--endif
	--if GetItemTypeId(GetManipulatedItem())==1227896662 then
	--	set ue = 4
	--endif
	if GetItemTypeId(GetManipulatedItem()) == 1227896659 then
		ue = 5
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30.0, "|cff00ffff有玩家开始预约名门挑战，本波进攻怪物将会增加名门高手，大家要小心应付了！")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899471 then
		ue = 0
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30.0, "|cff00ffff有玩家取消了预约名门挑战，下波进攻怪物将不会增加名门高手，大家要小心应付了！")
	end
end
-- 攻破城门
function cT()
	return GetUnitTypeId(GetTriggerUnit()) == 1752003700
end
function DT()
	ModifyGateBJ(1, Gt)
	YDWEPolledWaitNull((0.18 - 0.01 * I2R(O4)) * 2000.0)
	ModifyGateBJ(0, Gt)
end
--爆炸
function FT()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093681749) ~= 0
end
function GT()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function HT()
	local id = GetHandleId(GetTriggeringTrigger())
	SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443, GetEnumUnit())
	SetWidgetLife(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443), GetUnitState(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443), UNIT_STATE_LIFE) - 200.0 * I2R(GetUnitLevel(GetEnumUnit())))
end
function IT()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	AddSpecialEffectLocBJ(loc, "war3mapImported\\ChaosExplosion.mdl")
	DestroyEffect(bj_lastCreatedEffect)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.0, loc, Condition(GT)), HT)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
-- 流星
function JT()
	return GetUnitAbilityLevel(GetAttacker(), 1093681753) ~= 0 and GetRandomInt(1, 70) <= 5
end
function KT()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656919, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	UnitAddAbility(bj_lastCreatedUnit, 1093681754)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852183)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	ShowUnitHide(bj_lastCreatedUnit)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
-- 冰缓
function MT()
	return GetUnitAbilityLevel(GetAttacker(), 1093681968) ~= 0 and GetRandomInt(1, 70) <= 5
end
function NT()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656918, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
--辽国进攻
function LiaoGuoJinGong_1()
	local t = GetExpiredTimer()
	local j = LoadInteger(YDHT, GetHandleId(t), 0)
	local jmax = 40
	if j < jmax then
		CreateNUnitsAtLocFacingLocBJ(1, 1751871081, Player(6), Location(-5600, 100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		SaveInteger(YDHT, GetHandleId(t), 0, j + 1)
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	t = nil
end
function LiaoGuoJinGong()
	local t
	if Sd[1] ~= 2 and Sd[2] ~= 2 and Sd[3] ~= 2 and Sd[4] ~= 2 and Sd[5] ~= 2 and udg_teshushijian then
		t = CreateTimer()
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※边境入侵※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，辽国派出骑兵前来进攻，请准备防御")
		TimerStart(t, 2.0, true, LiaoGuoJinGong_1)
	end
	t = nil
end
--灵鹫宫进攻：触发条件，有玩家选择了灵鹫宫
function LingJiuGongJinGong()
	if (udg_runamen[1] == 12 or udg_runamen[2] == 12 or udg_runamen[3] == 12 or udg_runamen[4] == 12 or udg_runamen[5] == 12) and udg_teshushijian then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※灵鹫宫劫※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，灵鹫宫派出高手前来进攻，请准备防御")
		CreateNUnitsAtLocFacingLocBJ(1, 1852270642, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852207984, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852663652, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
	end
end


function GameLogic_Trigger()
	local t = CreateTrigger()
	--选择英雄
	Jh = CreateTrigger()
	TriggerRegisterPlayerSelectionEventBJ(Jh, Player(0), true)
	TriggerRegisterPlayerSelectionEventBJ(Jh, Player(1), true)
	TriggerRegisterPlayerSelectionEventBJ(Jh, Player(2), true)
	TriggerRegisterPlayerSelectionEventBJ(Jh, Player(3), true)
	TriggerRegisterPlayerSelectionEventBJ(Jh, Player(4), true)
	TriggerAddCondition(Jh, Condition(fx))
	TriggerAddAction(Jh, SelectHero)
	--查看当前可加入门派
	Lh = CreateTrigger()
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(0), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(1), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(2), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(3), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(4), true)
	TriggerAddCondition(Lh, Condition(kx))
	TriggerAddAction(Lh, MenPai)
	-- 加入门派
	Mh = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Mh, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Mh, Condition(ox))
	TriggerAddAction(Mh, JiaRuMenPai)
	-- 伤害测试
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsCeShiShangHai))
	TriggerAddAction(t, CeShiShangHai)
	t = CreateTrigger()
	TriggerRegisterUnitEvent(t, gg_unit_N00I_0116, EVENT_UNIT_DAMAGED)
	TriggerAddCondition(t, Condition(IsCalcShangHai))
	TriggerAddAction(t, CalcShangHai)
	-- 自由门派
	Mh = CreateTrigger()
	YDWETriggerRegisterLeaveRectSimpleNull(Mh, udg_xuanmenpai)
	TriggerAddCondition(Mh, Condition(WuMenPai_Condition))
	TriggerAddAction(Mh, WuMenPai_Action)
	-- 按ESC查看人物属性
	Rh = CreateTrigger()
	TriggerRegisterPlayerEventEndCinematic(Rh, Player(0))
	TriggerRegisterPlayerEventEndCinematic(Rh, Player(1))
	TriggerRegisterPlayerEventEndCinematic(Rh, Player(2))
	TriggerRegisterPlayerEventEndCinematic(Rh, Player(3))
	TriggerRegisterPlayerEventEndCinematic(Rh, Player(4))
	TriggerAddAction(Rh, RenWuShuXing)
	-- up提升游戏难度
	Sh = CreateTrigger()
	TriggerRegisterPlayerChatEvent(Sh, Player(0), "up", false)
	TriggerAddCondition(Sh, Condition(GameNanDu_Condition))
	TriggerAddAction(Sh, GameNanDu)
	-- 玩家英雄阵亡
	Th = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Th, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Th, Condition(Ex))
	TriggerAddAction(Th, PlayerDeath)
	-- 玩家英雄复活
	Uh = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Uh, udg_revivetimer[1])
	TriggerAddAction(Uh, PlayerReviveA)
	Vh = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Vh, udg_revivetimer[2])
	TriggerAddAction(Vh, PlayerReviveB)
	Wh = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Wh, udg_revivetimer[3])
	TriggerAddAction(Wh, PlayerReviveC)
	Xh = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Xh, udg_revivetimer[4])
	TriggerAddAction(Xh, PlayerReviveD)
	Yh = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Yh, udg_revivetimer[5])
	TriggerAddAction(Yh, PlayerReviveE)
	-- 生成F9信息
	Zh = CreateTrigger()
	TriggerRegisterTimerEventSingle(Zh, 5)
	TriggerAddAction(Zh, Qx)
	-- 玩家离开游戏
	fi = CreateTrigger()
	TriggerRegisterPlayerEventLeave(fi, Player(0))
	TriggerRegisterPlayerEventLeave(fi, Player(1))
	TriggerRegisterPlayerEventLeave(fi, Player(2))
	TriggerRegisterPlayerEventLeave(fi, Player(3))
	TriggerRegisterPlayerEventLeave(fi, Player(4))
	TriggerAddAction(fi, PlayerLeave)
	-- 杀进攻怪及练功房怪
	gi = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gi, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(gi, Condition(ey))
	TriggerAddAction(gi, KillGuai)
	-- 击杀最终BOSS游戏胜利
	hi = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(hi, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(hi, Condition(hy))
	TriggerAddAction(hi, Victory)
	-- 老家灭了游戏失败
	ii = CreateTrigger()
	TriggerRegisterUnitEvent(ii, udg_ZhengPaiWL, EVENT_UNIT_DEATH)
	TriggerAddAction(ii, Lose)
	-- 购买老家无敌
	ji = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ji, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ji, Condition(BuyJiDiWuDi))
	TriggerAddAction(ji, JiDiWuDi)
	-- 首次显示系统窗口信息
	ki = CreateTrigger()
	TriggerRegisterTimerEventSingle(ki, 10.0)
	TriggerAddAction(ki, SystemWindow)
	-- 刷新系统窗口信息
	mi = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(mi, 4.0)
	TriggerAddAction(mi, uuyy)
	-- 计算玩家最大伤害
	ni = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(ni)
	TriggerAddCondition(ni, Condition(wy))
	TriggerAddAction(ni, SetMaxDamage)
	-- 开启试玩模式
	oi = CreateTrigger()
	TriggerRegisterPlayerChatEvent(oi, Player(0), "sw", true)
	TriggerAddCondition(oi, Condition(BeforeAttack))
	TriggerAddAction(oi, SetShiWan)
	-- 购买城防
	pi = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pi, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(pi, Condition(BuyChengFang))
	TriggerAddAction(pi, ShengChengFang)
	-- 购买高级城防
	ri = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ri, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ri, Condition(BuyGaoChengFang))
	TriggerAddAction(ri, ShengGaoChengFang)
	-- 积分换物品
	si = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(si, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(si, Condition(BuyKuanDong))
	TriggerAddAction(si, KuanDongHua)
	-- 声望换物品
	si = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(si, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(si, Condition(BuyKuanDong_1))
	TriggerAddAction(si, KuanDongHua_1)
	-- FIXME 使用武学精要（目前有BUG）
	si = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(si, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(si, Condition(IsWuXueJingYao))
	TriggerAddAction(si, WuXueJingYao)

	--将地图上初始所有单位加入单位组
	Vi = CreateTrigger()
	TriggerRegisterTimerEventSingle(Vi, 2.0)
	TriggerAddAction(Vi, cA)
	--怪物死后重新刷怪
	Wi = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Wi, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerRegisterPlayerUnitEventSimple(Wi, Player(15), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddAction(Wi, EA)
	--刷进攻怪
	Xi = CreateTrigger()
	TriggerAddCondition(Xi, Condition(GA))
	TriggerAddAction(Xi, HA)
	--刷正面的进攻怪
	Yi = CreateTrigger()
	DisableTrigger(Yi)
	TriggerRegisterTimerEventPeriodic(Yi, 3.0)
	TriggerAddAction(Yi, FrontAttack)
	--刷背面的进攻怪
	Zi = CreateTrigger()
	DisableTrigger(Zi)
	TriggerRegisterTimerEventPeriodic(Zi, 2.0)
	TriggerAddAction(Zi, BackAttack)
	-- 刷名门
	dj = CreateTrigger()
	TriggerAddCondition(dj, Condition(MA))
	TriggerAddAction(dj, NA)
	-- 时间到刷怪
	ej = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ej, A7[1])
	TriggerAddAction(ej, PA)
	fj = CreateTrigger()
	TriggerRegisterTimerExpireEvent(fj, A7[2])
	TriggerAddAction(fj, RA)
	gj = CreateTrigger()
	TriggerRegisterTimerExpireEvent(gj, A7[3])
	TriggerAddAction(gj, TA)
	hj = CreateTrigger()
	TriggerAddAction(hj, VA)
	ij = CreateTrigger()
	TriggerAddAction(ij, XA)
	-- 停怪
	jj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(jj, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(jj, Condition(ZA))
	TriggerAddAction(jj, ea)
	-- 将死亡单位从单位组移除
	mj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(mj, Player(6), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(mj, Condition(ja))
	TriggerAddAction(mj, ka)
	-- 练功房刷怪
	nj = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(nj, 6.0)
	TriggerAddAction(nj, qa)
	-- 进入练功房
	oj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(oj, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(oj, Condition(sa))
	TriggerAddAction(oj, ua)
	-- 进入练功房
	pj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pj, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(pj, Condition(wa))
	TriggerAddAction(pj, xa)
	-- 进入练功房
	qj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(qj, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(qj, Condition(za))
	TriggerAddAction(qj, Aa)
	-- 切换背包
	rj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(rj, EVENT_PLAYER_UNIT_SPELL_CAST)
	TriggerAddCondition(rj, Condition(Ba))
	TriggerAddAction(rj, ba)
	-- 鸟的贩卖技能
	sj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(sj, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(sj, Condition(ca))
	TriggerAddAction(sj, Da)
	-- 轻功系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(Trig_ttConditions))
	TriggerAddAction(t, Trig_ttActions)
	-- 切换物品
	tj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(tj, EVENT_PLAYER_UNIT_SPELL_CAST)
	TriggerAddCondition(tj, Condition(IsQieHuanItem))
	TriggerAddAction(tj, QieHuanItem)
	-- 英雄达到某等级
	vj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vj, EVENT_PLAYER_HERO_LEVEL)
	TriggerAddCondition(vj, Condition(Ja))
	TriggerAddAction(vj, HeroLevel)
	-- 杀怪回血
	wj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(wj, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(wj, Condition(Ma))
	TriggerAddAction(wj, KillGuaiJiaXie)
	-- 每秒回血回蓝
	xj = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(xj, 1.0)
	TriggerAddAction(xj, YiShuHuiXie)
	-- 攻击回复（伤害回复）
	yj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(yj, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(yj, Condition(Ra))
	TriggerAddAction(yj, Sa)
	-- 伤害吸收
	zj = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(zj)
	TriggerAddCondition(zj, Condition(Ua))
	TriggerAddAction(zj, Va)
	-- 杀怪加声望
	Aj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Aj, Player(6), EVENT_PLAYER_UNIT_DEATH)
	TriggerRegisterPlayerUnitEventSimple(Aj, Player(7), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Aj, Condition(Xa))
	TriggerAddAction(Aj, Ya)
	aj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(aj, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(aj, Condition(dB))
	TriggerAddAction(aj, eB)
	-- 遗忘武功
	Bj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Bj, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(Bj, Condition(YiWangJiNeng))
	TriggerAddAction(Bj, ForgetAbility)
	-- 为合成的物品补属性
	t = CreateTrigger()
	YDWESyStemItemCombineRegistTrigger(t)
	TriggerAddAction(t, WuPinHeCheng)
	-- 选择遗忘的武功
	bj = CreateTrigger()
	TriggerRegisterDialogEvent(bj, K7[1])
	TriggerRegisterDialogEvent(bj, K7[2])
	TriggerRegisterDialogEvent(bj, K7[3])
	TriggerRegisterDialogEvent(bj, K7[4])
	TriggerRegisterDialogEvent(bj, K7[5])
	TriggerAddAction(bj, jB)
	-- 传送至桃花岛
	Cj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Cj, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(Cj, Condition(mB))
	TriggerAddAction(Cj, nB)
	-- 学习武功
	cj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(cj, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(cj, Condition(IsWuGongBook))
	TriggerAddAction(cj, BookLearnWuGong)
	-- 初始化内功加成
	fk = CreateTrigger()
	TriggerRegisterTimerEventSingle(fk, 0.1)
	TriggerAddAction(fk, NeiGongJiaChengS)
	pk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pk, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(pk, Condition(uC))
	TriggerAddAction(pk, vC)
	qk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(qk, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(qk, Condition(xC))
	TriggerAddAction(qk, yC)
	rk = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(rk, 1.0)
	TriggerAddAction(rk, BC)
	sk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(sk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(sk, Condition(CC))
	TriggerAddAction(sk, cC)
	tk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(tk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(tk, Condition(EC))
	TriggerAddAction(tk, FC)
	uk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(uk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(uk, Condition(HC))
	TriggerAddAction(uk, IC)
	vk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(vk, Condition(JC))
	TriggerAddAction(vk, KC)
	wk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(wk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(wk, Condition(MC))
	TriggerAddAction(wk, NC)
	xk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(xk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(xk, Condition(PC))
	TriggerAddAction(xk, QC)
	yk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(yk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(yk, Condition(SC))
	TriggerAddAction(yk, TC)
	zk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(zk, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(zk, Condition(VC))
	TriggerAddAction(zk, WC)
	Ak = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ak, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(Ak, Condition(YC))
	TriggerAddAction(Ak, ZC)
	ak = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ak, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(ak, Condition(ec))
	TriggerAddAction(ak, gc)
	ak = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ak, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(ak, Condition(isJiuYangCanJuan))
	TriggerAddAction(ak, jiuYangCanJuan)
	ak = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ak, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(ak, Condition(IsWuHunShi))
	TriggerAddAction(ak, WuHunShi)
	Bk = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(Bk)
	TriggerAddCondition(Bk, Condition(IsUnitBoss))
	TriggerAddAction(Bk, BossFangJiNeng)
	-- 预约名门和取消预约
	Gs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Gs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Gs, Condition(qT))
	TriggerAddAction(Gs, rT)
	-- 攻破城门
	Ks = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ks, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ks, Condition(cT))
	TriggerAddAction(Ks, DT)
	-- 爆炸
	Ht = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ht, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ht, Condition(FT))
	TriggerAddAction(Ht, IT)
	-- 流星
	It = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(It, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(It, Condition(JT))
	TriggerAddAction(It, KT)
	-- 冰缓
	Jt = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Jt, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(Jt, Condition(MT))
	TriggerAddAction(Jt, NT)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsYiZhan))
	TriggerAddAction(t, YiZhanChuanSong)
	--抽血术
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(ChouXie_Condition))
	TriggerAddAction(t, ChouXie_Action)
	-- 初始化伴侣属性
	uq = CreateTrigger()
	TriggerRegisterTimerEventSingle(uq, 0.2)
	TriggerAddAction(uq, LO)
	-- 结成伴侣
	vq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vq, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(vq, Condition(NO))
	TriggerAddAction(vq, OO)
	-- 整理物品
	xq = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(xq, 400.0)
	TriggerAddAction(xq, TO)

	-- 吃经验符
	kr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(kr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(kr, Condition(oQ))
	TriggerAddAction(kr, pQ)
	-- 购买等级
	mr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(mr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(mr, Condition(rQ))
	TriggerAddAction(mr, sQ)
	-- 新手大礼包
	nr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(nr, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(nr, Condition(uQ))
	TriggerAddAction(nr, vQ)
	-- 装备打孔
	pr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pr, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(pr, Condition(xQ))
	TriggerAddAction(pr, yQ)
	-- 加入副职
	qr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(qr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(qr, Condition(AQ))
	TriggerAddAction(qr, aQ)
	-- 传送到钟南山
	tr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(tr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(tr, Condition(GQ))
	TriggerAddAction(tr, HQ)
	-- 传送到少林寺后山（25级）
	ur = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ur, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ur, Condition(lQ))
	TriggerAddAction(ur, JQ)
	-- 传送到塞外
	vr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(vr, Condition(LQ))
	TriggerAddAction(vr, MQ)
	-- 传送到光明顶
	wr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(wr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(wr, Condition(OQ))
	TriggerAddAction(wr, PQ)
	-- 传送到少林寺后山（70级）
	xr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(xr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(xr, Condition(RQ))
	TriggerAddAction(xr, SQ)
	-- 传送到边疆
	yr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(yr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(yr, Condition(UQ))
	TriggerAddAction(yr, VQ)
	-- 学习门派内功
	br = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(br, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(br, Condition(pR))
	TriggerAddAction(br, qR)
	-- 学习慕容派内功
	br = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(br, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(br, Condition(IsMuRongNeiGong))
	TriggerAddAction(br, MuRongNeiGong)

	-- 初始化古董价格区间
	rs = CreateTrigger()
	TriggerRegisterTimerEventSingle(rs, 0.5)
	TriggerAddAction(rs, s5)
	-- 古董价格变动
	ss = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(ss, 200.0)
	TriggerAddAction(ss, u5)
	-- 查询古董价格
	ts = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ts, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ts, Condition(w5))
	TriggerAddAction(ts, x5)
	-- 卖古董
	us = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(us, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(us, Condition(z5))
	TriggerAddAction(us, A5)
	vs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(vs, Condition(B5))
	TriggerAddAction(vs, b5)
	-- 收集古董
	vs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(vs, Condition(CollectGuDong_Conditions))
	TriggerAddAction(vs, CollectGuDong_Actions)
	-- 合成物品
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(HeCheng_Conditions))
	TriggerAddAction(t, HeCheng_Actions)


	-- 买黄纸
	cs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(cs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(cs, Condition(MaiHuangZhi_Conditions))
	TriggerAddAction(cs, MaiHuangZhi)
	-- 烧黄纸
	Ds = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ds, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(Ds, Condition(IsHuangZhi))
	TriggerAddAction(Ds, ShaoHuangZhi)
	-- 跳到结拜兄弟/夫妻处
	Es = CreateTrigger()
	TriggerRegisterPlayerChatEvent(Es, Player(0), "~", true)
	TriggerRegisterPlayerChatEvent(Es, Player(1), "~", true)
	TriggerRegisterPlayerChatEvent(Es, Player(2), "~", true)
	TriggerRegisterPlayerChatEvent(Es, Player(3), "~", true)
	TriggerRegisterPlayerChatEvent(Es, Player(4), "~", true)
	TriggerRegisterPlayerChatEvent(Es, Player(5), "~", true)
	TriggerAddCondition(Es, Condition(kT))
	TriggerAddAction(Es, mT)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, udg_index)
	TriggerAddAction(t, ChooseMoShi_Action)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, wuhun)
	TriggerAddAction(t, JiHuoCanZhang)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, udg_nan)
	TriggerAddAction(t, ChooseNanDu_Action)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsJiDiBaoHu))
	TriggerAddAction(t, JiDiBaoHu)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(Trig_YunDaXianShenConditions))
	TriggerAddAction(t, Trig_YunDaXianShenActions)

	t = CreateTrigger()
	TriggerRegisterUnitEvent(t, udg_ZhengPaiWL, EVENT_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(JiDiAiDa_Conditions))
	TriggerAddAction(t, JiDiAiDa_Actions)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 1000.0)
	TriggerAddAction(t, MoJiaoJiuRen)
	t = nil
end
-----------------------------------
-- 武器和装备相关
-----------------------------------
--鸟拿东西显示附加属性
function Zy()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil == false and GetItemUserData(GetManipulatedItem()) > 0 -- INLINED!!
end
function dz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33附加属性：|r")
	if ii2 == 1 then
		j = j + ii3 * 300
	elseif ii2 == 2 then
		l__l = l__l + ii3 * 40
	elseif ii2 == 3 then
		m = m + ii3 * 40
	elseif ii2 == 4 then
		n = n + ii3 * 25
	elseif ii2 == 5 then
		o = o + ii3 * 25
	end
	if ii4 == 1 then
		j = j + ii5 * 300
	elseif ii4 == 2 then
		l__l = l__l + ii5 * 40
	elseif ii4 == 3 then
		m = m + ii5 * 40
	elseif ii4 == 4 then
		n = n + ii5 * 25
	elseif ii4 == 5 then
		o = o + ii5 * 25
	end
	if j > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
	end
	if l__l > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
	end
	if m > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
	end
	if n > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
	end
	if o > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
	end
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
	if ii7 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii7 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii7 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii7 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii7 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii7 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii8 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii8 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii8 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii8 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii8 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii8 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii9 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii9 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii9 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii9 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii9 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii9 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii1 == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件")
	elseif ii1 == 2 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得朱雀套件")
	elseif ii1 == 3 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得玄武套件")
	elseif ii1 == 4 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得白虎套件")
	end
	u = nil
	p = nil
	it = nil
end
--英雄拿上东西显示附加属性
function fz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function gz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	local q = 0
	if GetItemUserData(it) > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33获得附加属性：|r")
		if ii2 == 1 then
			j = j + ii3 * 300
		elseif ii2 == 2 then
			l__l = l__l + ii3 * 40
		elseif ii2 == 3 then
			m = m + ii3 * 40
		elseif ii2 == 4 then
			n = n + ii3 * 25
		elseif ii2 == 5 then
			o = o + ii3 * 25
		end
		if ii4 == 1 then
			j = j + ii5 * 300
		elseif ii4 == 2 then
			l__l = l__l + ii5 * 40
		elseif ii4 == 3 then
			m = m + ii5 * 40
		elseif ii4 == 4 then
			n = n + ii5 * 25
		elseif ii4 == 5 then
			o = o + ii5 * 25
		end
		if j > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, j)
		end
		if l__l > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, l__l)
		end
		if m > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
			ModifyHeroStat(0, u, 0, m)
		end
		if n > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
			ModifyHeroStat(1, u, 0, n)
		end
		if o > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
			ModifyHeroStat(2, u, 0, o)
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
		if ii7 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii7 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii7 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii7 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii7 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii7 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii8 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii8 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii8 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii8 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii8 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii8 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii9 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii9 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii9 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii9 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii9 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii9 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii1 == 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件")
		elseif ii1 == 2 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得朱雀套件")
		elseif ii1 == 3 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得玄武套件")
		elseif ii1 == 4 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得白虎套件")
		end
		k7 = 1
		for _ in _loop_() do
			if k7 > 6 then break end
			if GetItemUserData(UnitItemInSlotBJ(u, k7)) // 100000000 == ii1 and UnitItemInSlotBJ(u, k7) ~= GetManipulatedItem() then
				q = q + 1
			end
			k7 = k7 + 1
		end
		if q == 2 then
			if ii1 == 1 then
				ModifyHeroStat(0, u, 0, 200)
				juexuelingwu[i] = juexuelingwu[i] + 1
				udg_baojilv[i] = udg_baojilv[i] + 0.04
				UnitAddAbility(u, 1093677106)
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 1000)
				gengu[i] = gengu[i] + 2
				wuxing[i] = wuxing[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐青龙套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF招式伤害+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击率+4%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF攻击速度+50%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF攻击+1000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF根骨+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性+1")
			elseif ii1 == 2 then
				ModifyHeroStat(1, u, 0, 150)
				juexuelingwu[i] = juexuelingwu[i] + 1
				udg_baojishanghai[i] = udg_baojishanghai[i] + 0.5
				shaguaihufui[i] = shaguaihufui[i] + 1000.0
				UnitAddAbility(u, 1093677107)
				yishu[i] = yishu[i] + 1
				jingmai[i] = jingmai[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐朱雀套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF内力+150")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击伤害+50%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF杀怪回复+1000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF法术回复+10")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF医术+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF经脉+2")
			elseif ii1 == 3 then
				ModifyHeroStat(0, u, 0, 150)
				juexuelingwu[i] = juexuelingwu[i] + 1
				UnitAddAbility(u, 1093677108)
				UnitAddAbility(u, 1093677109)
				YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 200)
				wuxing[i] = wuxing[i] + 2
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐玄武套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF招式伤害+150")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF气血+30000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF气血回复+600")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF防御+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄+1")
			elseif ii1 == 4 then
				ModifyHeroStat(1, u, 0, 200)
				ModifyHeroStat(2, u, 0, 100)
				UnitAddAbility(u, 1093677110)
				juexuelingwu[i] = juexuelingwu[i] + 2
				fuyuan[i] = fuyuan[i] + 2
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐白虎套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF内力+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF真实伤害+100")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF移动速度最大化")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF福缘+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄+1")
			end
		else
			if ii1 == 1 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 2 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得朱雀套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 3 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得玄武套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 4 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得白虎套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			end
		end
	end
	u = nil
	p = nil
	it = nil
end
function iz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function jz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local i = 1 + GetPlayerId(p)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	local q = 0
	if GetItemUserData(it) > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33失去附加属性：|r")
		if ii2 == 1 then
			j = j + ii3 * 300
		elseif ii2 == 2 then
			l__l = l__l + ii3 * 40
		elseif ii2 == 3 then
			m = m + ii3 * 40
		elseif ii2 == 4 then
			n = n + ii3 * 25
		elseif ii2 == 5 then
			o = o + ii3 * 25
		end
		if ii4 == 1 then
			j = j + ii5 * 300
		elseif ii4 == 2 then
			l__l = l__l + ii5 * 40
		elseif ii4 == 3 then
			m = m + ii5 * 40
		elseif ii4 == 4 then
			n = n + ii5 * 25
		elseif ii4 == 5 then
			o = o + ii5 * 25
		end
		if j > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 3, 1, j)
		end
		if l__l > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, l__l)
		end
		if m > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
			ModifyHeroStat(0, u, 1, m)
		end
		if n > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
			ModifyHeroStat(1, u, 1, n)
		end
		if o > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
			ModifyHeroStat(2, u, 1, o)
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
		if ii7 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii7 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii7 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii7 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii7 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii7 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		if ii8 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii8 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii8 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii8 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii8 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii8 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		if ii9 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii9 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii9 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii9 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii9 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii9 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		k7 = 1
		for _ in _loop_() do
			if k7 > 6 then break end
			if GetItemUserData(UnitItemInSlotBJ(u, k7)) // 100000000 == ii1 and UnitItemInSlotBJ(u, k7) ~= GetManipulatedItem() then
				q = q + 1
			end
			k7 = k7 + 1
		end
		if q == 2 then
			if ii1 == 1 then
				ModifyHeroStat(0, u, 1, 200)
				juexuelingwu[i] = juexuelingwu[i] - 1
				udg_baojilv[i] = udg_baojilv[i] - 0.04
				UnitRemoveAbility(u, 1093677106)
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 1, 1000)
				gengu[i] = gengu[i] - 2
				wuxing[i] = wuxing[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去青龙套装")
			elseif ii1 == 2 then
				ModifyHeroStat(1, u, 1, 150)
				juexuelingwu[i] = juexuelingwu[i] - 1
				udg_baojishanghai[i] = udg_baojishanghai[i] - 0.5
				shaguaihufui[i] = shaguaihufui[i] - 1000.0
				UnitRemoveAbility(u, 1093677107)
				yishu[i] = yishu[i] - 1
				jingmai[i] = jingmai[i] - 2
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去朱雀套装")
			elseif ii1 == 3 then
				ModifyHeroStat(0, u, 1, 150)
				juexuelingwu[i] = juexuelingwu[i] - 1
				UnitRemoveAbility(u, 1093677108)
				UnitRemoveAbility(u, 1093677109)
				YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 200)
				wuxing[i] = wuxing[i] - 2
				danpo[i] = danpo[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去玄武套装")
			elseif ii1 == 4 then
				ModifyHeroStat(1, u, 1, 200)
				ModifyHeroStat(2, u, 1, 100)
				UnitRemoveAbility(u, 1093677110)
				juexuelingwu[i] = juexuelingwu[i] - 2
				fuyuan[i] = fuyuan[i] - 2
				danpo[i] = danpo[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去白虎套装")
			end
		end
	end
	u = nil
	p = nil
	it = nil
end
--穿上装备
function mz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE or GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED) -- INLINED!!
end
function nz()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local id = GetItemTypeId(GetManipulatedItem())
	local j = 1
	for _ in _loop_() do
		if j >= 30 then break end
		if id == s__ShopWeapon_id[shopweapon[j]] then --在smelt_weapon里
			sc__ShopWeapon_PickUpWeapon(shopweapon[j], GetTriggerUnit(), GetManipulatedItem())
			if true then break end
		end
		j = j + 1
	end
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, R2I(LoadReal(YDHT, id, StringHash("攻击力"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, R2I(LoadReal(YDHT, id, StringHash("防御"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 1, 0, R2I(LoadReal(YDHT, id, StringHash("法力上限"))))
	ModifyHeroStat(0, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("招式伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("招式伤害"))))
	ModifyHeroStat(1, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("内力"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("内力"))))
	ModifyHeroStat(2, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("真实伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("真实伤害"))))
	udg_baojishanghai[i] = udg_baojishanghai[i] + LoadReal(YDHT, id, StringHash("暴击伤害")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击伤害"))
	udg_baojilv[i] = udg_baojilv[i] + LoadReal(YDHT, id, StringHash("暴击率")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击率"))
	juexuelingwu[i] = juexuelingwu[i] + R2I(LoadReal(YDHT, id, StringHash("绝学领悟"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("绝学领悟")))
	gengu[i] = gengu[i] + R2I(LoadReal(YDHT, id, StringHash("根骨"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("根骨")))
	danpo[i] = danpo[i] + R2I(LoadReal(YDHT, id, StringHash("胆魄"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("胆魄")))
	wuxing[i] = wuxing[i] + R2I(LoadReal(YDHT, id, StringHash("悟性"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("悟性")))
	yishu[i] = yishu[i] + R2I(LoadReal(YDHT, id, StringHash("医术"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("医术")))
	jingmai[i] = jingmai[i] + R2I(LoadReal(YDHT, id, StringHash("经脉"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("经脉")))
	fuyuan[i] = fuyuan[i] + R2I(LoadReal(YDHT, id, StringHash("福缘"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("福缘")))
	shanghaihuifu[i] = shanghaihuifu[i] + LoadReal(YDHT, id, StringHash("伤害回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("伤害回复"))
	shaguaihufui[i] = shaguaihufui[i] + LoadReal(YDHT, id, StringHash("杀怪回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("杀怪回复"))
	shengminghuifu[i] = shengminghuifu[i] + LoadReal(YDHT, id, StringHash("生命回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("生命回复"))
	falihuifu[i] = falihuifu[i] + LoadReal(YDHT, id, StringHash("法力回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("法力回复"))
end
--脱下装备
function pz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE or GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED) -- INLINED!!
end
function qz()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local id = GetItemTypeId(GetManipulatedItem())
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 1, R2I(LoadReal(YDHT, id, StringHash("攻击力"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 1, R2I(LoadReal(YDHT, id, StringHash("防御"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 1, 1, R2I(LoadReal(YDHT, id, StringHash("法力上限"))))
	ModifyHeroStat(0, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("招式伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("招式伤害"))))
	ModifyHeroStat(1, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("内力"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("内力"))))
	ModifyHeroStat(2, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("真实伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("真实伤害"))))
	udg_baojishanghai[i] = udg_baojishanghai[i] - LoadReal(YDHT, id, StringHash("暴击伤害")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击伤害"))
	udg_baojilv[i] = udg_baojilv[i] - LoadReal(YDHT, id, StringHash("暴击率")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击率"))
	juexuelingwu[i] = juexuelingwu[i] - R2I(LoadReal(YDHT, id, StringHash("绝学领悟"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("绝学领悟")))
	gengu[i] = gengu[i] - R2I(LoadReal(YDHT, id, StringHash("根骨"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("根骨")))
	danpo[i] = danpo[i] - R2I(LoadReal(YDHT, id, StringHash("胆魄"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("胆魄")))
	wuxing[i] = wuxing[i] - R2I(LoadReal(YDHT, id, StringHash("悟性"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("悟性")))
	yishu[i] = yishu[i] - R2I(LoadReal(YDHT, id, StringHash("医术"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("医术")))
	jingmai[i] = jingmai[i] - R2I(LoadReal(YDHT, id, StringHash("经脉"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("经脉")))
	fuyuan[i] = fuyuan[i] - R2I(LoadReal(YDHT, id, StringHash("福缘"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("福缘")))
	shanghaihuifu[i] = shanghaihuifu[i] - LoadReal(YDHT, id, StringHash("伤害回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("伤害回复"))
	shaguaihufui[i] = shaguaihufui[i] - LoadReal(YDHT, id, StringHash("杀怪回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("杀怪回复"))
	shengminghuifu[i] = shengminghuifu[i] - LoadReal(YDHT, id, StringHash("生命回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("生命回复"))
	falihuifu[i] = falihuifu[i] - LoadReal(YDHT, id, StringHash("法力回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("法力回复"))
end
--江湖忠
function UnitHaveJueZhanBa()
	return UnitHaveItem(GetAttacker(), 1227896918)
end
function JueZhanBaXiaoGuo()
	local u = GetTriggerUnit()
	if ModuloInteger(GetUnitPointValue(u), 100) == 0 then
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.1 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.05 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	else
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	end
	u = nil
end
--决战霸
function UnitHaveJiangHuZhong()
	return UnitHaveItem(GetTriggerUnit(), 1227897136)
end
function JiangHuZhongXiaoGuo()
	local u = GetAttacker()
	if ModuloInteger(GetUnitPointValue(u), 100) == 0 then
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.1 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.05 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	else
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	end
	u = nil
end
--穿武器或衣服
function Mz()
	return (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE) and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function ItemChongFu()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	E8 = 1
	udg_wuqishu[i] = 0
	udg_yifushu[i] = 0
	for _ in _loop_() do
		if E8 > 6 then break end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == ITEM_TYPE_ARTIFACT then
			udg_wuqishu[i] = udg_wuqishu[i] + 1
		end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == ITEM_TYPE_PURCHASABLE then
			udg_yifushu[i] = udg_yifushu[i] + 1
		end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == GetItemType(GetManipulatedItem()) and UnitItemInSlotBJ(u, E8) ~= GetManipulatedItem() and Ce[i] ~= 7 then
			UnitRemoveItemSwapped(UnitItemInSlotBJ(u, E8), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000非丫鬟角色最多只能携带一件武器和衣服")
		end
		E8 = E8 + 1
	end
	if Ce[i] == 7 and udg_junzhu[i] == false then
		if GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT and udg_wuqishu[i] >= 3 then
			UnitRemoveItemSwapped(GetManipulatedItem(), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000丫鬟最多只能携带两件武器")
		end
		if GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE and udg_yifushu[i] >= 3 then
			UnitRemoveItemSwapped(GetManipulatedItem(), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000丫鬟最多只能穿两件衣服")
		end
	end
	u = nil
	p = nil
end
---------套装系统开始--------
function Pz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemLevel(GetManipulatedItem()) == 3 or GetItemLevel(GetManipulatedItem()) == 6) -- INLINED!!
end
function Qz()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if F8[i] == false and UnitHaveItem(u, 1227895116) and UnitHaveItem(u, 1227895117) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※精钢套装※|R\n|CFFB2FF00招式伤害+150\n暴击率+4%\n暴击伤害+30%\n杀怪回复+500\n根骨+1\n胆魄+1|R")
		F8[i] = true
		ModifyHeroStat(0, u, 0, 150)
		udg_baojilv[i] = udg_baojilv[i] + 0.04
		udg_baojishanghai[i] = udg_baojishanghai[i] + 0.3
		shaguaihufui[i] = shaguaihufui[i] + 500.0
		gengu[i] = gengu[i] + 1
		danpo[i] = danpo[i] + 1
	end
	if XNKL[i] == false and UnitHaveItem(u, 1227899192) and UnitHaveItem(u, 1227899193) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※新年快乐套装※|R\n|CFFB2FF00全属性+1000\n全性格属性+5|R")
		XNKL[i] = true
		ModifyHeroStat(0, u, 0, 1000)
		ModifyHeroStat(1, u, 0, 1000)
		ModifyHeroStat(2, u, 0, 1000)
		jingmai[i] = jingmai[i] + 5
		fuyuan[i] = fuyuan[i] + 5
		wuxing[i] = wuxing[i] + 5
		yishu[i] = yishu[i] + 5
		gengu[i] = gengu[i] + 5
		danpo[i] = danpo[i] + 5
	end
	if H8[i] == false and UnitHaveItem(u, 1227895118) and UnitHaveItem(u, 1227895119) and UnitHaveItem(u, 1227895120) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※七星套装※|R\n|CFFB2FF00招式伤害+200\n魔法上限+15\n法力恢复+5\n气血+10000\n每秒恢复+130\n医术+1\n悟性+1|R")
		H8[i] = true
		ModifyHeroStat(0, u, 0, 200)
		YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, 15)
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 10000)
		UnitAddAbility(u, 1093678424)
		UnitAddAbility(u, 1093678425)
		wuxing[i] = wuxing[i] + 1
		yishu[i] = yishu[i] + 1
	end
	if I8[i] == false and UnitHaveItem(u, 1227895121) and UnitHaveItem(u, 1227895122) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※破军套装※|R\n|CFFB2FF00攻击速度+30%\n气血+10000\n每秒回复+400\n防御+30\n胆魄+1\n福缘+1")
		I8[i] = true
		UnitAddAbility(u, 1093678426)
		UnitAddAbility(u, 1093678640)
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 10000)
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 30)
		danpo[i] = danpo[i] + 1
		fuyuan[i] = fuyuan[i] + 1
	end
	if l8[i] == false and UnitHaveItem(u, 1227894872) and UnitHaveItem(u, 1227894873) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※绝恋套装※|R\n|CFFB2FF00招式伤害+150\n真实伤害+100\n绝学领悟力+1\n气血+15000\n每秒回复+300\n伤害回复+300\n全性格属性+1")
		l8[i] = true
		ModifyHeroStat(0, u, 0, 150)
		ModifyHeroStat(2, u, 0, 100)
		juexuelingwu[i] = juexuelingwu[i] + 1
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 15000)
		UnitAddAbility(u, 1093678641)
		shanghaihuifu[i] = shanghaihuifu[i] + 300.0
		jingmai[i] = jingmai[i] + 1
		fuyuan[i] = fuyuan[i] + 1
		wuxing[i] = wuxing[i] + 1
		yishu[i] = yishu[i] + 1
		gengu[i] = gengu[i] + 1
		danpo[i] = danpo[i] + 1
	end
	if G8[i] == false and UnitHaveItem(u, 1227894874) and UnitHaveItem(u, 1227895088) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※倾城套装※|R\n|CFFB2FF00防御+170\n绝学领悟力+1\n暴击率+4%\n暴击伤害+30%\n杀怪回复+600\n全性格属性+1")
		G8[i] = true
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 170)
		juexuelingwu[i] = juexuelingwu[i] + 1
		udg_baojilv[i] = udg_baojilv[i] + 0.04
		udg_baojishanghai[i] = udg_baojishanghai[i] + 0.3
		shaguaihufui[i] = shaguaihufui[i] + 600.0
		jingmai[i] = jingmai[i] + 1
		fuyuan[i] = fuyuan[i] + 1
		wuxing[i] = wuxing[i] + 1
		yishu[i] = yishu[i] + 1
		gengu[i] = gengu[i] + 1
		danpo[i] = danpo[i] + 1
	end
	if Ee[i] == false and UnitHaveItem(u, 1227896918) and UnitHaveItem(u, 1227896919) and UnitHaveItem(u, 1227896920) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※江湖套装※|R\n|CFFB2FF00内力+300\n真实伤害+200\n暴击伤害+150%\n法力恢复+10\n暴击率+20%\n绝学领悟力+4\n全性格属性+3\n武功伤害+60%")
		Ee[i] = true
		ModifyHeroStat(1, u, 0, 300)
		ModifyHeroStat(2, u, 0, 200)
		UnitAddAbility(u, 1093681741)
		udg_baojilv[i] = udg_baojilv[i] + 0.2
		udg_baojishanghai[i] = udg_baojishanghai[i] + 1.5
		juexuelingwu[i] = juexuelingwu[i] + 4
		jingmai[i] = jingmai[i] + 3
		fuyuan[i] = fuyuan[i] + 3
		wuxing[i] = wuxing[i] + 3
		yishu[i] = yishu[i] + 3
		gengu[i] = gengu[i] + 3
		danpo[i] = danpo[i] + 3
		udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + 0.6
	end
	if De[i] == false and UnitHaveItem(u, 1227897136) and UnitHaveItem(u, 1227896922) and UnitHaveItem(u, 1227896921) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffFF4d00※决战套装※|R\n|CFFB2FF00招式伤害+1000\n伤害回复+600\n气血+100000\n每秒恢复+1000\n防御+1000\n绝学领悟力+4\n全性格属性+3\n伤害吸收+30%")
		De[i] = true
		ModifyHeroStat(0, u, 0, 1000)
		shanghaihuifu[i] = shanghaihuifu[i] + 600.0
		UnitAddAbility(u, 1093681742)
		UnitAddAbility(u, 1093681743)
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 1000)
		juexuelingwu[i] = juexuelingwu[i] + 4
		jingmai[i] = jingmai[i] + 3
		fuyuan[i] = fuyuan[i] + 3
		wuxing[i] = wuxing[i] + 3
		yishu[i] = yishu[i] + 3
		gengu[i] = gengu[i] + 3
		danpo[i] = danpo[i] + 3
		udg_shanghaixishou[i] = udg_shanghaixishou[i] + 0.3
	end
	u = nil
	p = nil
end
--失去套装
function Sz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemLevel(GetManipulatedItem()) == 3 or GetItemLevel(GetManipulatedItem()) == 6) -- INLINED!!
end
function Tz()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	YDWEPolledWaitNull(0.01)
	if F8[i] and (UnitHaveItem(u, 1227895116) == false or UnitHaveItem(u, 1227895117) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去精钢套装属性|R")
		F8[i] = false
		ModifyHeroStat(0, u, 1, 150)
		udg_baojilv[i] = udg_baojilv[i] - 0.04
		udg_baojishanghai[i] = udg_baojishanghai[i] - 0.3
		shaguaihufui[i] = shaguaihufui[i] - 500.0
		gengu[i] = gengu[i] - 1
		danpo[i] = danpo[i] - 1
	end
	if XNKL[i] and (UnitHaveItem(u, 1227899192) == false or UnitHaveItem(u, 1227899193) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去新年快乐套装属性|R")
		XNKL[i] = false
		ModifyHeroStat(0, u, 1, 1000)
		ModifyHeroStat(1, u, 1, 1000)
		ModifyHeroStat(2, u, 1, 1000)
		jingmai[i] = jingmai[i] - 5
		fuyuan[i] = fuyuan[i] - 5
		wuxing[i] = wuxing[i] - 5
		yishu[i] = yishu[i] - 5
		gengu[i] = gengu[i] - 5
		danpo[i] = danpo[i] - 5
	end
	if H8[i] and (UnitHaveItem(u, 1227895118) == false or UnitHaveItem(u, 1227895119) == false or UnitHaveItem(u, 1227895120) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去七星套装属性|R")
		H8[i] = false
		ModifyHeroStat(0, u, 1, 200)
		YDWEGeneralBounsSystemUnitSetBonus(u, 1, 1, 15)
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 10000)
		UnitRemoveAbility(u, 1093678424)
		UnitRemoveAbility(u, 1093678425)
		wuxing[i] = wuxing[i] - 1
		yishu[i] = yishu[i] - 1
	end
	if I8[i] and (UnitHaveItem(u, 1227895121) == false or UnitHaveItem(u, 1227895122) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去破军套装属性|R")
		I8[i] = false
		UnitRemoveAbility(u, 1093678426)
		UnitRemoveAbility(u, 1093678640)
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 10000)
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 30)
		danpo[i] = danpo[i] - 1
		fuyuan[i] = fuyuan[i] - 1
	end
	if l8[i] and (UnitHaveItem(u, 1227894872) == false or UnitHaveItem(u, 1227894873) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去绝恋套装属性|R")
		l8[i] = false
		ModifyHeroStat(0, u, 1, 150)
		ModifyHeroStat(2, u, 1, 100)
		juexuelingwu[i] = juexuelingwu[i] - 1
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 15000)
		UnitRemoveAbility(u, 1093678641)
		shanghaihuifu[i] = shanghaihuifu[i] - 300.0
		jingmai[i] = jingmai[i] - 1
		fuyuan[i] = fuyuan[i] - 1
		wuxing[i] = wuxing[i] - 1
		yishu[i] = yishu[i] - 1
		gengu[i] = gengu[i] - 1
		danpo[i] = danpo[i] - 1
	end
	if G8[i] and (UnitHaveItem(u, 1227894874) == false or UnitHaveItem(u, 1227895088) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去倾城套装属性|R")
		G8[i] = false
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 170)
		juexuelingwu[i] = juexuelingwu[i] - 1
		udg_baojilv[i] = udg_baojilv[i] - 0.04
		udg_baojishanghai[i] = udg_baojishanghai[i] - 0.3
		shaguaihufui[i] = shaguaihufui[i] - 600.0
		jingmai[i] = jingmai[i] - 1
		fuyuan[i] = fuyuan[i] - 1
		wuxing[i] = wuxing[i] - 1
		yishu[i] = yishu[i] - 1
		gengu[i] = gengu[i] - 1
		danpo[i] = danpo[i] - 1
	end
	if Ee[i] and (UnitHaveItem(u, 1227896918) == false or UnitHaveItem(u, 1227896919) == false or UnitHaveItem(u, 1227896920) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去江湖套装属性|R")
		Ee[i] = false
		ModifyHeroStat(1, u, 1, 300)
		ModifyHeroStat(2, u, 1, 200)
		UnitRemoveAbility(u, 1093681741)
		udg_baojilv[i] = udg_baojilv[i] - 0.2
		udg_baojishanghai[i] = udg_baojishanghai[i] - 1.5
		juexuelingwu[i] = juexuelingwu[i] - 4
		jingmai[i] = jingmai[i] - 3
		fuyuan[i] = fuyuan[i] - 3
		wuxing[i] = wuxing[i] - 3
		yishu[i] = yishu[i] - 3
		gengu[i] = gengu[i] - 3
		danpo[i] = danpo[i] - 3
		udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] - 0.6
	end
	if De[i] and (UnitHaveItem(u, 1227897136) == false or UnitHaveItem(u, 1227896922) == false or UnitHaveItem(u, 1227896921) == false) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去决战套装属性|R")
		De[i] = false
		ModifyHeroStat(0, u, 1, 1000)
		shanghaihuifu[i] = shanghaihuifu[i] - 600.0
		UnitRemoveAbility(u, 1093681742)
		UnitRemoveAbility(u, 1093681743)
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 1000)
		juexuelingwu[i] = juexuelingwu[i] - 4
		jingmai[i] = jingmai[i] - 3
		fuyuan[i] = fuyuan[i] - 3
		wuxing[i] = wuxing[i] - 3
		yishu[i] = yishu[i] - 3
		gengu[i] = gengu[i] - 3
		danpo[i] = danpo[i] - 3
		udg_shanghaixishou[i] = udg_shanghaixishou[i] - 0.3
	end
	u = nil
	p = nil
end
--镇妖升级
function DoHaveZhenYao(uc, l__ut)
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(uc))]
	if uc == nil or GetUnitTypeId(l__ut) == 1848651824 or GetUnitPointValue(l__ut) == 10 then
		return false
	else
		if UnitHaveItem(u, 1227895379) or UnitHaveItem(u, 1227895373) or UnitHaveItem(u, 1227895377) or UnitHaveItem(u, 1227895378) then
			return true
		end
	end
	return false
end
function Vz()
	return DoHaveZhenYao(GetKillingUnit(), GetTriggerUnit())
end
function ZhenYaoLevelUp(u, id, id2, value)
	local i = 0
	SetWidgetLife(FetchUnitItem(u, id), GetWidgetLife(FetchUnitItem(u, id)) - 1)
	if UnitHaveItem(u, id) then
		if 500000.0 - GetWidgetLife(FetchUnitItem(u, id)) < I2R(value) then
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "成长值：" .. (I2S(R2I(500000.0 - GetWidgetLife(FetchUnitItem(u, id)))) or "") .. " / " .. (I2S(value) or ""))
		else
			i = GetItemUserData(FetchUnitItem(u, id))
			RemoveItem(FetchUnitItem(u, id))
			createitemloc(id2, v7[9])
			SetItemUserData(bj_lastCreatedItem, i)
			UnitAddItem(u, bj_lastCreatedItem)
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFF33FF00恭喜养武等级获得提升")
		end
	end
end
function Wz()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
	ZhenYaoLevelUp(u, 1227895379, 1227895373, 200)
	ZhenYaoLevelUp(u, 1227895373, 1227895377, 500)
	ZhenYaoLevelUp(u, 1227895377, 1227895378, 800)
	ZhenYaoLevelUp(u, 1227895378, 1227895376, 1200)
end

require 'map.系统.镶嵌'

function Equipment_Trigger()
	local t = CreateTrigger()
	--鸟拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Zy))
	TriggerAddAction(t, dz)
	--英雄拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(fz))
	TriggerAddAction(t, gz)
	--英雄放下东西显示失去附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(iz))
	TriggerAddAction(t, jz)
	--英雄穿上装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(mz))
	TriggerAddAction(t, nz)
	--英雄脱下装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(pz))
	TriggerAddAction(t, qz)
	--只能穿一件衣服或武器的判断
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Mz))
	TriggerAddAction(t, ItemChongFu)
	--集齐套装
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Pz))
	TriggerAddAction(t, Qz)
	--失去套装
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(Sz))
	TriggerAddAction(t, Tz)
	--镇妖升级
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Vz))
	TriggerAddAction(t, Wz)
	--镶嵌宝石系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(kA))
	TriggerAddAction(t, mA)
	t = nil
end
require 'map.系统.副本'
require 'map.系统.历练'
require 'map.系统.任务'
require 'map.系统.神器'
require 'map.系统.炼丹'

--------桃花岛系统------//
function IsTaoHua()
	return GetItemTypeId(GetManipulatedItem()) == 1227897171 or GetItemTypeId(GetManipulatedItem()) == 1227899187
end
function TaoHuaDao()
	if GetItemTypeId(GetManipulatedItem()) == 1227897171 then
		if taohuakai == true or udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == true then
			if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
				SetUnitPosition(GetTriggerUnit(), 9631, 1139)
				PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 9631, 1139, 0)
				DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00有玩家进入桃花岛")
				DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
			else
				AdjustPlayerStateBJ(500, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
			end
		else
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00桃花岛尚未开放")
			AdjustPlayerStateBJ(500, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899187 then
		if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
			SetUnitPosition(GetTriggerUnit(), 12800, -14800)
			PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 12800, -14800, 0)
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00有玩家去救火")
		else
			AdjustPlayerStateBJ(200000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
	end
end
function TaoKaiFang()
	local t = GetExpiredTimer()
	local r = Rect(8800, -4500, 14300, 4500)
	local l__rg = CreateRegion()
	local i = 0
	local td = LoadTimerDialogHandle(YDHT, GetHandleId(t), 0)
	taohuakai = false
	RegionAddRect(l__rg, r)
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if IsUnitInRegion(l__rg, udg_hero[i]) then
			SetUnitPosition(udg_hero[i], -1174, -678)
			PanCameraToTimedForPlayer(GetOwningPlayer(udg_hero[i]), -1174, -678, 0)
			DisplayTextToPlayer(GetOwningPlayer(udg_hero[i]), 0, 0, "|cFFFFCC00时间到，离开桃花岛")
		end
		i = i + 1
	end
	DestroyTimerDialog(td)
	PauseTimer(t)
	DestroyTimer(t)
	RemoveRegion(l__rg)
	RemoveRect(r)
	r = nil
	l__rg = nil
	t = nil
	td = nil
end
function TaoHuaKaiFang()
	local t = GetExpiredTimer()
	local tm = CreateTimer()
	local td = LoadTimerDialogHandle(YDHT, GetHandleId(t), 0)
	taohuakai = true
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00桃花岛已开放，你可以由正派武林右侧NPC我是随风处进入")
	PingMinimapForForce(GetPlayersAll(), 9631, 1139, 5)
	TimerStart(tm, 600, false, TaoKaiFang)
	--call TimerStart(tm,60,false,function TaoKaiFang)
	CreateTimerDialogBJ(tm, "桃花岛关闭倒计时：")
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	SaveTimerDialogHandle(YDHT, GetHandleId(tm), 0, bj_lastCreatedTimerDialog)
	DestroyTimerDialog(td)
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	tm = nil
	td = nil
end
function TaoHuaDaoKaiFang()
	local t = CreateTimer()
	TimerStart(t, 1800, false, TaoHuaKaiFang)
	--call TimerStart(t,20,false,function TaoHuaKaiFang)
	CreateTimerDialogBJ(t, "桃花岛开放倒计时：")
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	SaveTimerDialogHandle(YDHT, GetHandleId(t), 0, bj_lastCreatedTimerDialog)
	t = nil
end
function TaoHuaGun()
	local u = GetKillingUnit()
	--call BJDebugMsg("出现了么A")
	--set lh_r=Rect(8800,-4500,14300,4500)
	if RectContainsUnit(lh_r, u) then
		--call BJDebugMsg("出现了么B")
		if GetUnitTypeId(GetTriggerUnit()) == 1865429553 or GetUnitTypeId(GetTriggerUnit()) == 1865429554 or GetUnitTypeId(GetTriggerUnit()) == 1853320818 or GetUnitTypeId(GetTriggerUnit()) == 1869050475 or GetUnitTypeId(GetTriggerUnit()) == 1853058150 or GetUnitTypeId(GetTriggerUnit()) == 1848651841 or GetUnitTypeId(GetTriggerUnit()) == 1848651844 then
			SetUnitPosition(u, -1174, -678)
			PanCameraToTimedForPlayer(GetOwningPlayer(u), -1174, -678, 0)
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00有玩家杀死了" .. (GetUnitName(GetTriggerUnit()) or "") .. "，离开桃花岛")
			if GetUnitTypeId(GetTriggerUnit()) == 1869050475 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227899185, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1853058150 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897154, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1853320818 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897143, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1865429553 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896375, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1865429554 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896369, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1848651841 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896368, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1848651844 and (GetRandomInt(1, 100) <= 60 or GetRandomInt(1, 100) <= 100 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897159, u)
			end
		end
	end
	u = nil
end
function TaoHua_Condition()
	return GetOwningPlayer(GetTriggerUnit()) == Player(15) and (GetUnitTypeId(GetTriggerUnit()) == 1865429554 or GetUnitTypeId(GetTriggerUnit()) == 1865429553 or GetUnitTypeId(GetTriggerUnit()) == 1853320818 or GetUnitTypeId(GetTriggerUnit()) == 1869050475 or GetUnitTypeId(GetTriggerUnit()) == 1853058150 or GetUnitTypeId(GetTriggerUnit()) == 1848651841)
end
function TaoHua_Action()
	SetUnitOwner(GetTriggerUnit(), Player(12), true)
	UnitAddAbility(GetTriggerUnit(), 1093678934)
	UnitAddAbility(GetTriggerUnit(), 1093678153)
	UnitAddAbility(GetTriggerUnit(), 1093678155)
end
function OuYangFeng_Condition()
	return RectContainsUnit(lh_r, GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit()) == 1853058150 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(), 1113813609) or UnitHasBuffBJ(GetTriggerUnit(), 1113813619) or UnitHasBuffBJ(GetTriggerUnit(), 1112437615))
end
function OuYangFeng_Action()
	local loc = GetUnitLoc(GetTriggerUnit())
	KillUnit(GetTriggerUnit())
	CreateNUnitsAtLoc(1, 1848651844, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
	RemoveLocation(loc)
	loc = nil
end
function HongQiGong_Condition()
	return RectContainsUnit(lh_r, GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit()) == 1853320818 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(), 1111847784) or UnitHasBuffBJ(GetTriggerUnit(), 1112109154) or UnitHasBuffBJ(GetTriggerUnit(), 1112109156))
end
function HongQiGong_Action()
	KillUnit(GetTriggerUnit())
	ShowUnitShow(gg_unit_n00E_0066)
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00洪七公已中毒，现正在某处疗伤")
end
--------桃花岛系统结束------//
function TaoHuaDao_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsTaoHua))
	TriggerAddAction(t, TaoHuaDao)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 2400.0)
	TriggerAddAction(t, TaoHuaDaoKaiFang)
	t = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(t, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddAction(t, TaoHuaGun)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(TaoHua_Condition))
	TriggerAddAction(t, TaoHua_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(OuYangFeng_Condition))
	TriggerAddAction(t, OuYangFeng_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(HongQiGong_Condition))
	TriggerAddAction(t, HongQiGong_Action)
	t = nil
end

require 'util.najitest'
--========================================================================
--键盘输入系统
--========================================================================
function KeyInput()
	local s = GetEventPlayerChatString()
	local it = nil
	local p = GetTriggerPlayer()
	local i = GetPlayerId(p) + 1
	local j = 0
	local loc = nil
	local str = nil
	local shanghai = _array_(0.0)
	if s == "+" then
		SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 200.0, 1.0)
	end
	if s == "-" then
		SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 200.0, 1.0)
	end
	if s == "hg" then
		SetUnitPosition(udg_hero[i], -1174, -678)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -1174, -678, 0)
	end
	if s == "q" then
		SetUnitPosition(udg_hero[i], -869, 796)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -869, 796, 0)
	end
	if s == "3" then
		SetUnitPosition(udg_hero[i], -869, -2000)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -869, -2000, 0)
	end
	if s == "4" then
		SetUnitPosition(udg_hero[i], 10692, -14847)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), 10692, -14847, 0)
	end
	if SubStringBJ(s, 1, 2) == "wq" then
		if UnitHaveItem(udg_hero[i], 1227899464) == false then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前未装备自制武器")
		else
			it = FetchUnitItem(udg_hero[i], 1227899464)
			SaveStr(YDHT, GetHandleId(it), StringHash("武器名称"), SubStringBJ(s, 3, 40))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自制武器已更名为" .. (SubStringBJ(s, 3, 40) or ""))
		end
	end
	--if s == "randreal" then
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--endif
	if SubStringBJ(s, 1, 2) == "tx" then
		if S2I(SubStringBJ(s, 3, 4)) >= 1 and S2I(SubStringBJ(s, 3, 4)) <= 10 then
			s__ZiZhiWuGong_texiao[zizhiwugong[i]] = S2I(SubStringBJ(s, 3, 4))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自创武功已更改为第" .. (SubStringBJ(s, 3, 40) or "") .. "种特效")
		end
	end
	if SubStringBJ(s, 1, 2) == "wg" then
		if GetUnitAbilityLevel(udg_hero[i], 1093677878) == 0 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前无自创武功")
		else
			s__ZiZhiWuGong_name[zizhiwugong[i]] = SubStringBJ(s, 3, 40)
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自创武功已更名为" .. (SubStringBJ(s, 3, 40) or ""))
		end
	end
	if s == "ckwg" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余自创武功点：" .. (I2S(wuxuedian[i]) or ""))
		if GetUnitAbilityLevel(udg_hero[i], 1093677878) == 0 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前无自创武功")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000武功：" .. (s__ZiZhiWuGong_name[zizhiwugong[i]] or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000伤害范围：" .. (I2S(R2I(400.0 + 100.0 * I2R(s__ZiZhiWuGong_range[zizhiwugong[i]]))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000伤害系数：" .. (R2S(1.0 + 0.5 * I2R(s__ZiZhiWuGong_xishu[zizhiwugong[i]])) or ""))
			j = 1
			for _ in _loop_() do
				if j > s__ZiZhiWuGong_dapeishu[zizhiwugong[i]] then break end
				DisplayTextToPlayer(p, 0, 0, sc__DaPei_XiaoGuoShuoMing(dapei[20 * i + j]))
				j = j + 1
			end
		end
	end
	if s == "ckwq" then
		if UnitHaveItem(udg_hero[i], 1227899464) == false then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前未装备自制武器")
		else
			it = FetchUnitItem(udg_hero[i], 1227899464)
			if LoadStr(YDHT, GetHandleId(it), StringHash("武器名称")) == "" then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FF00武器名称：尚未输入")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFF00FF00武器名称：" .. (LoadStr(YDHT, GetHandleId(it), StringHash("武器名称")) or ""))
			end
			DisplayTextToPlayer(p, 0, 0, "|cFFFF6600升级概率：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("升级概率")))) or "") .. "%")
			DisplayTextToPlayer(p, 0, 0, "|cFFE500AF招式伤害：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("招式伤害")))) or "") .. " 内力：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("内力")))) or "") .. " 真实伤害：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("真实伤害")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0033暴击伤害：" .. (I2S(R2I(100 * LoadReal(YDHT, GetHandleId(it), StringHash("暴击伤害")))) or "") .. "% 暴击率：" .. (I2S(R2I(100 * LoadReal(YDHT, GetHandleId(it), StringHash("暴击率")))) or "") .. "% 绝学领悟：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("绝学领悟")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFFFF33根骨：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("根骨")))) or "") .. " 胆魄：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("胆魄")))) or "") .. " 悟性：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("悟性")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFFFF33医术：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("医术")))) or "") .. " 经脉：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("经脉")))) or "") .. " 福缘：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("福缘")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFF9933FF伤害回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("伤害回复")))) or "") .. " 杀怪回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("杀怪回复")))) or "") .. " 生命回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("生命回复")))) or "") .. " 法力回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("法力回复")))) or ""))
		end
	end
	if s == "ckjn" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000人物性格：你学武资质" .. (XingGeA(udg_xinggeA[i]) or "") .. "，态度" .. (XingGeB(udg_xinggeB[i]) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
		j = 1
		for _ in _loop_() do
			if j > wugongshu[i] then break end
			DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "第" .. (I2S(GetUnitAbilityLevel(udg_hero[i], I7[(i - 1) * 20 + j])) or "") .. "重，升级进度：" .. (LoadStr(YDHT, GetHandleId(p), I7[(i - 1) * 20 + j] * 2) or ""))
			j = j + 1
		end
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	end
	if s == "ckhf" then
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF杀怪回复：" .. (I2S(R2I(shaguaihufui[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF伤害回复：" .. (I2S(R2I(shanghaihuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF生命回复：" .. (I2S(R2I(shengminghuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF法力回复：" .. (I2S(R2I(falihuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	end
	if s == "ck" then
		j = 1
		for _ in _loop_() do
			if j > wugongshu[i] then break end
			shanghai[j] = LoadReal(YDHT, 1 + GetPlayerId(p), I7[(i - 1) * 20 + j] * 3)
			if I7[(i - 1) * 20 + j] == 1093677876 then
				shanghai[j] = LoadReal(YDHT, 1 + GetPlayerId(p), 1093677877 * 3)
			end
			if shanghai[j] < 10000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j]) or ""))
			elseif shanghai[j] < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 10000.0) or "") .. "万")
			elseif shanghai[j] / 10000.0 < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0) or "") .. "亿")
			elseif shanghai[j] / 100000000.0 < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0 / 10000.0) or "") .. "万亿")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0 / 100000000.0) or "") .. "亿亿")
			end
			j = j + 1
		end
	end
	if s == "1" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 0 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(J9[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			J9[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "2" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 0 and IsUnitAliveBJ(udg_hero[i]) then
		if J9[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“1”来设置")
		else
			loc = GetUnitLoc(J9[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "11" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 1 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(qiankun2hao[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			qiankun2hao[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "22" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 1 and IsUnitAliveBJ(udg_hero[i]) then
		if qiankun2hao[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“11”来设置")
		else
			loc = GetUnitLoc(qiankun2hao[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "111" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 2 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(qiankun3hao[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			qiankun3hao[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "222" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 2 and IsUnitAliveBJ(udg_hero[i]) then
		if qiankun3hao[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“111”来设置")
		else
			loc = GetUnitLoc(qiankun3hao[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "-ms" then
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF您当前的移动速度为" .. (I2S(R2I(s__ModSpeed_getSpeed(udg_hero[i]))) or "")) -- INLINED!!
	end
	if s == "-random" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		if GetRandomInt(1, 100) <= 90 then
			if GetRandomInt(1, 12) <= 11 then
				udg_runamen[i] = GetRandomInt(1, 11)
			else
				udg_runamen[i] = 15
			end
		else
			udg_runamen[i] = GetRandomInt(12, 14)
		end
		if udg_runamen[i] == 11 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓自由门派〓|r")
			SetPlayerName(p, "〓自由门派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			AdjustPlayerStateBJ(60, p, PLAYER_STATE_RESOURCE_LUMBER)
			udg_shuxing[i] = udg_shuxing[i] + 5
		elseif udg_runamen[i] == 14 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓明教〓|r")
			SetPlayerName(p, "〓明教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 12 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓灵鹫宫〓|r")
			SetPlayerName(p, "〓灵鹫宫〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 2
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 1
		elseif udg_runamen[i] == 13 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓姑苏慕容〓|r")
			SetPlayerName(p, "〓姑苏慕容〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			udg_shuxing[i] = udg_shuxing[i] + 5
		elseif udg_runamen[i] == 1 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓少林派〓|r")
			SetPlayerName(p, "〓少林派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 3
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 3 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓丐帮〓|r")
			SetPlayerName(p, "〓丐帮〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 3
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 4 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓华山派〓|r")
			SetPlayerName(p, "〓华山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			danpo[i] = danpo[i] + 2
		elseif udg_runamen[i] == 5 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓全真教〓|r")
			SetPlayerName(p, "〓全真教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			jingmai[i] = jingmai[i] + 3
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 6 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓血刀门〓|r")
			SetPlayerName(p, "〓血刀门〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 2
			danpo[i] = danpo[i] + 3
		elseif udg_runamen[i] == 7 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓恒山派〓|r")
			SetPlayerName(p, "〓恒山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			yishu[i] = yishu[i] + 3
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 8 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓峨眉派〓|r")
			SetPlayerName(p, "〓峨眉派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 3
		elseif udg_runamen[i] == 10 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓星宿派〓|r")
			SetPlayerName(p, "〓星宿派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 2
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 9 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓武当派〓|r")
			SetPlayerName(p, "〓武当派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 1
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 2 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓古墓派〓|r")
			SetPlayerName(p, "〓古墓派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 2
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 15 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓衡山派〓|r")
			SetPlayerName(p, "〓衡山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			yishu[i] = yishu[i] + 2
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了，请在NPC郭靖处选择副职")
		UnitAddAbility(udg_hero[i], 1093678418)
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end
	if s == "www.juezhanjianghu.com" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		udg_runamen[i] = 12
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "选择了隐藏门派〓灵鹫宫〓|r")
		SetPlayerName(p, "〓灵鹫宫〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		danpo[i] = danpo[i] + 2
		jingmai[i] = jingmai[i] + 2
		fuyuan[i] = fuyuan[i] + 1
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了")
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678418)
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end	
	if s == "jzjh.uuu9.com" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		udg_runamen[i] = 13
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "选择了隐藏门派〓姑苏慕容〓|r")
		SetPlayerName(p, "〓姑苏慕容〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		udg_shuxing[i] = udg_shuxing[i] + 5
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了")
		UnitAddAbility(udg_hero[i], 1093678418)
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end
	--if s=="jiafuyuan" then
	--	set fuyuan[i]=fuyuan[i]+20
	--	call DisplayTextToPlayer(p,0,0,"|cFFFF0000福缘+20")
	--endif
	if s == "cksx" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
	end
	if s == "ckjf" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余守家积分：" .. (I2S(shoujiajf[i]) or ""))
	end
	if s == "累积积分" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000累积游戏积分：" .. (I2S(udg_MeiJuJiFen[i]) or ""))
	end
	if SubStringBJ(s, 1, 5) == "zy500" and udg_MeiJuJiFen[i] >= 500 then
		udg_MeiJuJiFen[S2I(SubStringBJ(s, 6, 6))] = udg_MeiJuJiFen[S2I(SubStringBJ(s, 6, 6))] + 500
		udg_MeiJuJiFen[i] = udg_MeiJuJiFen[i] - 500
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFF0000" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or "") .. "已向" .. (LoadStr(YDHT, GetHandleId(Player(S2I(SubStringBJ(s, 6, 6)) - 1)), GetHandleId(Player(S2I(SubStringBJ(s, 6, 6)) - 1))) or "") .. "转移500点积分")
	end
	if s == "baolv" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000锁喉枪的爆率为：" .. (I2S(udg_baolv[1]) or ""))
	end
	if s == "+ys" or s == "+YS" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 200.0, 1.0)
	end
	if s == "+js" or s == "+JS" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 200.0, 1.0)
	end
	if s == "sj" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, 1800.0, 0)
	end
	if s == "fb" then
		FBdaojishi()
	end
	if s == "bl" then
		BanLvShuXing()
	end
	if s == "yx" then
		YaoXing()
	end
	if s == "jy" then
		TransferJY()
	end
	--自由属性点系统
	if SubStringBJ(s, 1, 2) == "wx" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				wuxing[i] = wuxing[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点悟性，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				wuxing[i] = wuxing[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点悟性，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "fy" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				fuyuan[i] = fuyuan[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点福缘，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				fuyuan[i] = fuyuan[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点福缘，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "gg" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				gengu[i] = gengu[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点根骨，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				gengu[i] = gengu[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点根骨，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "dp" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				danpo[i] = danpo[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点胆魄，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				danpo[i] = danpo[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点胆魄，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "ys" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				yishu[i] = yishu[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点医术，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				yishu[i] = yishu[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点医术，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "jm" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				jingmai[i] = jingmai[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点经脉，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				jingmai[i] = jingmai[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点经脉，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	end
	p = nil
	it = nil
	--测试码
	if s == "要高冷一点" then
		SetHeroLevel(udg_hero[i], GetHeroLevel(udg_hero[i]) + 5, true)
		wuxuedian[i] = wuxuedian[i] + 5
		unitadditembyidswapped(1227895642, udg_hero[i])
		unitadditembyidswapped(1227896115, udg_hero[i])
		unitadditembyidswapped(1227896116, udg_hero[i])
		unitadditembyidswapped(1227896117, udg_hero[i])
		unitadditembyidswapped(1227895877, udg_hero[i])
		unitadditembyidswapped(1227895379, udg_hero[i])
		--call CreateNUnitsAtLoc(1,'o01U',GetTriggerPlayer(),GetUnitLoc(udg_hero[i]),bj_UNIT_FACING)
		shengwang[i] = shengwang[i] + 5000
		xiuxing[i] = 5
		udg_lilianxishu[i] = udg_lilianxishu[i] + 3
		udg_shuxing[i] = udg_shuxing[i] + 300
		shoujiajf[i] = shoujiajf[i] + 1000
	end
	if s == "boshu" then
		udg_boshu = udg_boshu + 1
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000已跳转至下一波")
	end
	if s == "ChuBoss1" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[1], Player(6), v7[6], v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, u7[1], Player(0), v7[6], v7[4])
	elseif s == "ChuBoss2" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[2], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss3" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[3], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss4" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[4], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss5" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[5], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss6" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[6], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss7" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[7], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss8" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[8], Player(6), v7[6], v7[4])
	elseif s == "ChuLiaoGuo" then
		LiaoGuoJinGong()
	elseif s == "ChuLingJiu" then
		LingJiuGongJinGong()
	end
end
function KeyInputSystem()
	local t = CreateTrigger()
	local i = 0
	for _ in _loop_() do
		if i > 6 then break end
		TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
		i = i + 1
	end
	TriggerAddAction(t, KeyInput)
	t = nil
end
-- 包含门派库
----------少林开始--------//
require 'map.门派.少林.init'
require 'map.门派.丐帮.init'
require 'map.门派.血刀.init'
require 'map.门派.峨眉.init'
require 'map.门派.武当.init'
require 'map.门派.华山.init'
require 'map.门派.星宿.init'
require 'map.门派.古墓.init'
require 'map.门派.恒山.init'
require 'map.门派.衡山.init'
require 'map.门派.灵鹫.init'
require 'map.门派.慕容.init'
require 'map.门派.神龙.init'
require 'map.门派.全真.init'
require 'map.门派.铁掌.init'
require 'map.门派.泰山.init'

require 'map.门派.江湖武学.init'
require 'map.门派.绝世武学.init'
require 'map.门派.江湖内功.init'

require 'map.系统.挑战场'

require 'map.门派.自创武学.init'
require 'map.门派.阵法.init'

require 'map.系统.自制武器'

require 'map.门派.奇武.init'

require 'map.系统.剑意'
require 'map.系统.四圣兽'

require 'map.门派.掌门技.init'

require 'map.static.environment'
require 'map.static.detail'

function CunWuGong(num, id1, id2, s, dp1, fy1, gg1, jm1, wx1, ys1)
	local i = StringHash("武学")
	SaveInteger(YDHT, i + num, 0, num)
	SaveInteger(YDHT, i + num, 1, id1)
	SaveInteger(YDHT, i + num, 2, id2)
	SaveStr(YDHT, i + num, 3, s)
	SaveInteger(YDHT, i + num, 4, dp1)
	SaveInteger(YDHT, i + num, 5, fy1)
	SaveInteger(YDHT, i + num, 6, gg1)
	SaveInteger(YDHT, i + num, 7, jm1)
	SaveInteger(YDHT, i + num, 8, wx1)
	SaveInteger(YDHT, i + num, 9, ys1)
end
function CunWuGongS()
	--顺序：胆魄、福缘、根骨、经脉、悟性、医术
	CunWuGong(1, 1227895626, 1093678913, "江湖武学", 0, 10, 0, 0, 14, 15)
	CunWuGong(2, 1227895624, 1093678664, "江湖武学", 14, 12, 18, 0, 0, 0)
	CunWuGong(3, 1227895382, 1093678929, "江湖内功", 0, 12, 0, 18, 0, 14)
	CunWuGong(4, 1227895381, 1093678928, "江湖内功", 17, 0, 0, 22, 0, 0)
	CunWuGong(5, 1227895623, 1093678668, "江湖武学", 0, 0, 0, 15, 10, 12)
	CunWuGong(6, 1227895386, 1093682254, "江湖内功", 17, 14, 18, 0, 0, 0)
	CunWuGong(7, 1227895384, 1093678931, "九阴内功", 0, 17, 17, 17, 20, 0)
	CunWuGong(8, 1227895625, 1093678926, "九阴武学", 13, 0, 12, 12, 16, 0)
	CunWuGong(9, 1227895385, 1093678932, "江湖内功", 22, 20, 0, 17, 0, 0)
	CunWuGong(10, 1227895627, 1093678666, "江湖武学", 14, 0, 0, 16, 20, 0)
	CunWuGong(11, 1227895620, 1093678927, "江湖内功", 0, 16, 0, 0, 0, 16)
	CunWuGong(12, 1227895628, 1093678925, "江湖武学", 0, 14, 14, 14, 14, 0)
	CunWuGong(13, 1227895600, 1093678935, "江湖内功", 0, 0, 0, 23, 18, 17)
	CunWuGong(14, 1227895601, 1093678933, "江湖内功", 18, 20, 16, 0, 0, 0)
	CunWuGong(15, 1227895621, 1093678669, "江湖武学", 0, 0, 18, 18, 0, 0)
	CunWuGong(16, 1227895603, 1093678897, "江湖武学", 0, 12, 0, 16, 0, 11)
	CunWuGong(17, 1227895383, 1093678930, "江湖内功", 0, 0, 0, 14, 12, 11)
	CunWuGong(18, 1227895622, 1093678672, "江湖武学", 0, 0, 22, 17, 15, 0)
	CunWuGong(19, 1227895609, 1093678919, "绝世武学", 18, 21, 27, 0, 0, 0)
	CunWuGong(20, 1227895604, 1093678924, "绝世武学", 20, 0, 26, 18, 0, 0)
	CunWuGong(21, 1227895608, 1093678918, "绝世武学", 0, 19, 0, 22, 28, 0)
	CunWuGong(22, 1227895607, 1093678920, "绝世武学", 17, 25, 0, 0, 17, 0)
	CunWuGong(23, 1227895618, 1093679158, "绝世武学", 0, 23, 20, 0, 29, 0)
	CunWuGong(24, 1227895602, 1093678917, "绝世武学", 24, 0, 30, 24, 0, 0)
	CunWuGong(25, 1227895605, 1093679157, "绝世武学", 0, 0, 0, 24, 19, 16)
	CunWuGong(26, 1227895606, 1093678922, "绝世武学", 23, 0, 0, 18, 0, 16)
	CunWuGong(27, 1227895619, 1093679161, "绝世武学", 23, 0, 0, 20, 22, 0)
	CunWuGong(28, 1227895617, 1093678921, "绝世武学", 25, 0, 25, 25, 20, 0)
	CunWuGong(29, 1227895635, 1093679154, "绝世内功", 22, 32, 0, 22, 0, 25)
	CunWuGong(30, 1227895631, 1093679156, "绝世内功", 28, 19, 0, 28, 0, 0)
	CunWuGong(31, 1227895636, 1395666994, "绝世内功", 20, 0, 29, 0, 0, 23)
	CunWuGong(32, 1227895633, 1093678936, "绝世内功", 0, 23, 31, 33, 0, 0)
	CunWuGong(33, 1227895629, 1093682232, "绝世内功", 28, 24, 0, 33, 0, 30)
	CunWuGong(34, 1227895632, 1093679152, "绝世内功", 25, 0, 0, 32, 22, 32)
	CunWuGong(35, 1227895637, 1093679155, "绝世内功", 0, 24, 0, 30, 24, 21)
	CunWuGong(36, 1227895634, 1093679428, "绝世内功", 0, 30, 0, 27, 34, 23)
	CunWuGong(37, 1227897159, 1093682226, "九阴内功", 0, 17, 17, 17, 20, 0)
	CunWuGong(38, 1227897160, 1093682228, "九阴内功", 0, 17, 17, 17, 20, 0)
	CunWuGong(39, 1227897161, 1093682230, "九阴内功", 0, 17, 17, 17, 20, 0)
	CunWuGong(40, 1227897162, 1093682225, "九阴武学", 13, 0, 12, 12, 16, 0)
	CunWuGong(41, 1227897163, 1093682227, "九阴武学", 13, 0, 12, 12, 16, 0)
	CunWuGong(42, 1227899698, 1093677902, "奇武", 0, 0, 0, 15, 14, 16)
	CunWuGong(43, 1227899699, 1093677904, "奇武", 0, 18, 26, 0, 0, 16)
	CunWuGong(44, 1227899700, 1093677900, "奇武", 12, 14, 16, 0, 0, 0)
	CunWuGong(45, 1227899701, 1093677905, "奇武", 17, 0, 0, 0, 20, 0)
	CunWuGong(46, 1227899702, 1093677903, "奇武", 14, 15, 16, 0, 0, 12)
	CunWuGong(47, 1227899704, 1093681989, "奇武", 12, 0, 0, 0, 18, 0)
	CunWuGong(48, 1227899705, 1093677908, "奇武", 14, 17, 0, 16, 0, 0)
	CunWuGong(49, 1227899713, 1093677909, "奇武", 0, 0, 0, 20, 0, 0)
	CunWuGong(50, 1227899714, 1093677911, "奇武", 0, 0, 0, 14, 14, 0)
	CunWuGong(51, 1227899715, 1093677910, "奇武", 0, 0, 0, 0, 15, 12)
	CunWuGong(52, 1227899716, 1093677914, "奇武", 13, 17, 16, 0, 0, 0)
	CunWuGong(53, 1227899722, 1093678166, "奇武", 15, 0, 16, 0, 17, 0)
	CunWuGong(54, 1227899732, 1093678657, "奇武", 15, 0, 15, 15, 15, 0) --《寿木长生功》
	CunWuGong(55, 1227899733, 1093678658, "奇武", 20, 20, 0, 18, 0, 0) --《黄沙万里鞭法》
	CunWuGong(56, 1227899734, 1093678675, "奇武", 0, 0, 0, 25, 0, 25) --《九阳真经散篇》
end
--万能装备系统
function Cun(id, name, s11, i11, s12, i12, s13, i13, s14, i14)
	local it = CreateItem(id, 0, 0)
	local l__hp = R2I(GetWidgetLife(it))
	local lv = 0
	if HaveSavedInteger(YDHT, id, id) == false then
		SaveInteger(YDHT, id, id, id)
	end
	if StringLength(s11) > 0 and i11 > 0 then
		SaveReal(YDHT, id, StringHash(s11), i11)
	end
	if StringLength(s12) > 0 and i12 > 0 then
		SaveReal(YDHT, id, StringHash(s12), i12)
	end
	if StringLength(s13) > 0 and i13 > 0 then
		SaveReal(YDHT, id, StringHash(s13), i13)
	end
	if StringLength(s14) > 0 and i14 > 0 then
		SaveReal(YDHT, id, StringHash(s14), i14)
	end
	SaveReal(YDHT, id, StringHash("升级概率"), 100.0)
	RemoveItem(it)
	it = nil
end

function Cuns()
	--攻击力、护甲、招式伤害、内力、真实伤害
	--call BJDebugMsg("开始存储装备属性")
	Cun(1227894851, "龙鳞剑", "攻击力", 5000, "招式伤害", 750, "内力", 200, "真实伤害", 200)
	Cun(1227894850, "倚天剑", "攻击力", 4500, "招式伤害", 700, "内力", 190, "真实伤害", 0)
	Cun(1227894852, "屠龙刀", "攻击力", 4850, "招式伤害", 720, "内力", 195, "真实伤害", 300)
	Cun(1227895878, "断肠", "攻击力", 1000, "招式伤害", 150, "内力", 0, "真实伤害", 80)
	Cun(1227894864, "晶玉扇", "攻击力", 3000, "招式伤害", 250, "内力", 150, "真实伤害", 0)
	Cun(1227894865, "紫金刀", "攻击力", 2700, "招式伤害", 230, "内力", 0, "真实伤害", 100)
	Cun(1227895116, "精钢剑", "攻击力", 650, "招式伤害", 80, "内力", 0, "真实伤害", 0)
	Cun(1227895118, "七星扇", "攻击力", 800, "招式伤害", 100, "内力", 0, "真实伤害", 40)
	Cun(1227894872, "鸳鸯刀", "攻击力", 1500, "招式伤害", 150, "内力", 50, "真实伤害", 0)
	Cun(1227897143, "打狗棒", "攻击力", 4500, "招式伤害", 650, "内力", 0, "真实伤害", 0)
	Cun(1227897145, "君子剑", "攻击力", 2000, "招式伤害", 100, "内力", 50, "真实伤害", 50)
	Cun(1227897154, "蛇杖", "攻击力", 4500, "招式伤害", 0, "内力", 0, "真实伤害", 1000)
	Cun(1227897153, "淑女剑", "攻击力", 1800, "招式伤害", 50, "内力", 100, "真实伤害", 50)
	Cun(1227897155, "双剑合璧", "攻击力", 3800, "招式伤害", 220, "内力", 220, "真实伤害", 150)
	Cun(1227897144, "血刀", "攻击力", 50000, "招式伤害", 700, "内力", 0, "真实伤害", 0)
	Cun(1227897156, "玉箫", "攻击力", 4850, "招式伤害", 0, "内力", 900, "真实伤害", 0)
	Cun(1227896918, "江湖·忠", "攻击力", 10000, "招式伤害", 350, "内力", 350, "真实伤害", 350)
	Cun(1227895379, "镇妖+1", "攻击力", 1000, "招式伤害", 150, "内力", 0, "真实伤害", 0)
	Cun(1227895373, "镇妖+2", "攻击力", 2000, "招式伤害", 300, "内力", 0, "真实伤害", 0)
	Cun(1227895377, "镇妖+3", "攻击力", 3000, "招式伤害", 450, "内力", 0, "真实伤害", 0)
	Cun(1227895378, "镇妖+4", "攻击力", 4000, "招式伤害", 600, "内力", 0, "真实伤害", 0)
	Cun(1227895376, "镇妖+5", "攻击力", 5000, "招式伤害", 750, "内力", 0, "真实伤害", 0)
	Cun(1227895110, "点金", "攻击力", 500, "招式伤害", 50, "内力", 20, "真实伤害", 0)
	Cun(1227895123, "开山斧", "攻击力", 450, "招式伤害", 30, "内力", 0, "真实伤害", 0)
	Cun(1227895344, "青铜刀", "攻击力", 0, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895109, "秋叶刃", "攻击力", 600, "招式伤害", 60, "内力", 0, "真实伤害", 0)
	Cun(1227895345, "锁候枪", "攻击力", 200, "招式伤害", 15, "内力", 0, "真实伤害", 0)
	Cun(1227895094, "宣花斧", "攻击力", 800, "招式伤害", 100, "内力", 0, "真实伤害", 0)
	Cun(1227895091, "饮血枪", "攻击力", 1200, "招式伤害", 120, "内力", 0, "真实伤害", 50)
	Cun(1227895346, "布衣", "防御", 35, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895124, "彩衣", "防御", 60, "招式伤害", 0, "内力", 15, "真实伤害", 0)
	Cun(1227895112, "虎皮衣", "防御", 85, "招式伤害", 0, "内力", 40, "真实伤害", 0)
	Cun(1227895111, "蛇皮裘", "防御", 90, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895095, "开阳衣", "防御", 150, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895092, "烈火衣", "防御", 300, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895119, "七星锦服", "防御", 150, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895877, "金蝉衣", "防御", 250, "招式伤害", 0, "内力", 80, "真实伤害", 0)
	Cun(1227894863, "软猬甲", "防御", 450, "招式伤害", 0, "内力", 100, "真实伤害", 0)
	Cun(1227894854, "六合纵横", "防御", 700, "招式伤害", 200, "内力", 100, "真实伤害", 200)
	Cun(1227894855, "破军无双", "防御", 800, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227897136, "决战·霸", "防御", 1000, "招式伤害", 0, "内力", 250, "真实伤害", 0)
	Cun(1227899212, "少林袈裟", "防御", 500, "招式伤害", 300, "内力", 0, "真实伤害", 0)
	Cun(1227897178, "通神", "防御", 500, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895121, "破军帽", "防御", 20, "招式伤害", 0, "内力", 0, "真实伤害", 30)
	Cun(1227894861, "灭云冠", "防御", 300, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227896922, "决战·恶", "防御", 500, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895122, "破军鞋", "防御", 25, "招式伤害", 0, "内力", 0, "真实伤害", 30)
	Cun(1227894868, "神行鞋", "防御", 200, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227894862, "踏风靴", "防御", 200, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227896921, "决战·魁", nil, 0, "招式伤害", 0, "内力", 0, "真实伤害", 500)
	Cun(1227895126, "苍蟒护腕", "攻击力", 0, "招式伤害", 0, "内力", 0, "真实伤害", 10)
	Cun(1227895125, "纱绒护腕", "攻击力", 0, "招式伤害", 15, "内力", 0, "真实伤害", 0)
	Cun(1227895096, "彩云腕", nil, 0, "招式伤害", 50, "内力", 20, "真实伤害", 0)
	Cun(1227895108, "天璇护腕", nil, 0, "招式伤害", 100, "内力", 100, "真实伤害", 100)
	Cun(1227895117, "精钢护腕", "防御", 30, "招式伤害", 40, "内力", 20, "攻击力", 250)
	Cun(1227894874, "追月手", nil, 0, "招式伤害", 120, "内力", 0, "真实伤害", 0)
	Cun(1227894866, "天玑毒掌", "攻击力", 1200, "招式伤害", 0, "内力", 0, "真实伤害", 150)
	Cun(1227894867, "无魅雷手", nil, 0, "招式伤害", 200, "内力", 100, "真实伤害", 0)
	Cun(1227894856, "魔影炎掌", "攻击力", 2000, "招式伤害", 300, "内力", 0, "真实伤害", 0)
	Cun(1227894857, "踏风冰手", "攻击力", 1800, "招式伤害", 0, "内力", 150, "真实伤害", 0)
	Cun(1227895347, "护身符", "防御", 0, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895348, "环戒", "攻击力", 0, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895128, "琥珀项链", nil, 0, "招式伤害", 0, "内力", 15, "真实伤害", 0)
	Cun(1227895129, "水碧护符", nil, 0, "招式伤害", 10, "内力", 15, "真实伤害", 0)
	Cun(1227895130, "闪避护符", "防御", 0, "招式伤害", 15, "内力", 0, "真实伤害", 0)
	Cun(1227895127, "传家符", "防御", 0, "招式伤害", 0, "内力", 0, "真实伤害", 15)
	Cun(1227895114, "七绝护符", nil, 0, "招式伤害", 50, "内力", 50, "真实伤害", 50)
	Cun(1227895115, "青竹戒指", "攻击力", 200, "招式伤害", 20, "内力", 0, "真实伤害", 0)
	Cun(1227895113, "星云戒指", nil, 0, "招式伤害", 30, "内力", 0, "真实伤害", 0)
	Cun(1227895097, "白虎符", "攻击力", 300, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227895105, "蓝魔项链", "防御", 50, "招式伤害", 0, "内力", 40, "真实伤害", 0)
	Cun(1227895106, "北斗护符", "攻击力", 500, "招式伤害", 0, "内力", 0, "真实伤害", 60)
	Cun(1227895107, "梦蝶项链", nil, 0, "招式伤害", 50, "内力", 0, "真实伤害", 40)
	Cun(1227895120, "七星戒指", nil, 0, "招式伤害", 0, "内力", 30, "真实伤害", 0)
	Cun(1227895088, "云海链", nil, 0, "招式伤害", 120, "内力", 60, "真实伤害", 0)
	Cun(1227894873, "七情束", nil, 0, "招式伤害", 100, "内力", 0, "真实伤害", 0)
	Cun(1227895089, "影岚护符", nil, 0, "招式伤害", 100, "内力", 0, "真实伤害", 0)
	Cun(1227895090, "玉修护符", nil, 0, "招式伤害", 0, "内力", 0, "真实伤害", 50)
	Cun(1227894869, "云灭护符", "攻击力", 1000, "招式伤害", 200, "内力", 0, "真实伤害", 0)
	Cun(1227894870, "抗魔护符", nil, 0, "招式伤害", 0, "内力", 150, "真实伤害", 100)
	Cun(1227894871, "重生链", "防御", 100, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227894858, "神迹戒", nil, 0, "招式伤害", 0, "内力", 150, "真实伤害", 200)
	Cun(1227894859, "如意戒", "攻击力", 1500, "招式伤害", 0, "内力", 150, "真实伤害", 0)
	Cun(1227894860, "绿扳指", "防御", 200, "招式伤害", 0, "内力", 0, "真实伤害", 0)
	Cun(1227896919, "江湖·情", nil, 0, "招式伤害", 900, "内力", 400, "真实伤害", 0)
	Cun(1227896920, "江湖·义", nil, 0, "招式伤害", 800, "内力", 0, "真实伤害", 500)
	--根骨、悟性、绝学领悟
	Cun(1227894851, "龙鳞剑", "根骨", 3, "胆魄", 2, "绝学领悟", 2, nil, 0)
	Cun(1227894850, "倚天剑", "悟性", 3, "医术", 2, "绝学领悟", 2, nil, 0)
	Cun(1227894852, "屠龙刀", "经脉", 3, "福缘", 2, "绝学领悟", 1, nil, 0)
	Cun(1227895878, "断肠", "经脉", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227894864, "晶玉扇", "悟性", 2, "福缘", 2, "绝学领悟", 1, nil, 0)
	Cun(1227894865, "紫金刀", "经脉", 2, "医术", 2, nil, 0, nil, 0)
	Cun(1227895118, "七星扇", "医术", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895109, "秋叶刃", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227894872, "鸳鸯刀", "福缘", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227897143, "打狗棒", "胆魄", 3, "全属性", 1, "绝学领悟", 2, nil, 0)
	Cun(1227897145, "君子剑", "悟性", 1, "医术", 1, "绝学领悟", 1, nil, 0)
	Cun(1227897154, "蛇杖", "根骨", 4, "全属性", 2, "绝学领悟", 1, nil, 0)
	Cun(1227897153, "淑女剑", "福缘", 1, "经脉", 1, "绝学领悟", 1, nil, 0)
	Cun(1227897155, "双剑合璧", "悟性", 3, "全属性", 1, "绝学领悟", 3, nil, 0)
	Cun(1227897144, "血刀", "根骨", 7, "胆魄", 4, "绝学领悟", 2, nil, 0)
	Cun(1227897156, "玉箫", "福缘", 2, "全属性", 2, "绝学领悟", 3, nil, 0)
	Cun(1227896918, "江湖·忠", "全属性", 2, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227895091, "饮血枪", "胆魄", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895116, "精钢剑", "胆魄", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895111, "蛇皮裘", "经脉", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895092, "烈火衣", "经脉", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895119, "七星锦服", "胆魄", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895877, "金蝉衣", "悟性", 1, "福缘", 1, nil, 0, nil, 0)
	Cun(1227894863, "软猬甲", "根骨", 2, "胆魄", 2, "绝学领悟", 1, nil, 0)
	Cun(1227894854, "六合纵横", "根骨", 2, "胆魄", 2, "福缘", 1, nil, 0)
	Cun(1227894855, "破军无双", "医术", 3, "悟性", 2, nil, 0, nil, 0)
	Cun(1227897136, "决战·霸", "全属性", 1, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227899212, "少林袈裟", "全属性", 1, "根骨", 2, nil, 0, nil, 0)
	Cun(1227895121, "破军帽", "悟性", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227894861, "灭云冠", "根骨", 1, "悟性", 2, "经脉", 1, "绝学领悟", 1)
	Cun(1227896922, "决战·恶", "全属性", 1, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227895122, "破军鞋", "福缘", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227894868, "神行鞋", "福缘", 3, "经脉", 3, nil, 0, nil, 0)
	Cun(1227894862, "踏风靴", "悟性", 2, "福缘", 1, "医术", 1, nil, 0)
	Cun(1227896921, "决战·魁", "全属性", 1, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227895126, "苍蟒护腕", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895125, "纱绒护腕", "悟性", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895108, "天璇护腕", "胆魄", 3, nil, 0, nil, 0, nil, 0)
	Cun(1227895093, "霓云手套", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895117, "精钢护腕", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227894874, "追月手", "悟性", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227894866, "天玑毒掌", "胆魄", 2, "经脉", 1, nil, 0, nil, 0)
	Cun(1227894867, "无魅雷手", "悟性", 3, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227894856, "魔影炎掌", "根骨", 2, "经脉", 2, "绝学领悟", 1, nil, 0)
	Cun(1227894857, "踏风冰手", "悟性", 2, "胆魄", 2, nil, 0, nil, 0)
	Cun(1227895127, "传家符", "医术", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227899213, "神木王鼎", "医术", 5, nil, 0, nil, 0, nil, 0)
	Cun(1227895128, "琥珀项链", "经脉", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895129, "水碧护符", "胆魄", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895130, "闪避护符", "福缘", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895114, "七绝护符", "福缘", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895113, "星云戒指", "医术", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895105, "蓝魔项链", "医术", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895106, "北斗护符", "福缘", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895107, "梦蝶项链", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895120, "七星戒指", "经脉", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895088, "云海链", "医术", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227894873, "七情束", "经脉", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227899720, "郭靖戴过的环戒", "根骨", 1, nil, 0, nil, 0, nil, 0)
	Cun(1227895089, "影岚护符", "悟性", 2, "经脉", 1, nil, 0, nil, 0)
	Cun(1227895090, "玉修护符", "根骨", 1, "胆魄", 2, nil, 0, nil, 0)
	Cun(1227894869, "云灭护符", "根骨", 2, "医术", 1, nil, 0, nil, 0)
	Cun(1227894870, "抗魔护符", "胆魄", 1, "经脉", 2, nil, 0, nil, 0)
	Cun(1227894871, "重生链", "医术", 3, nil, 0, nil, 0, nil, 0)
	Cun(1227894858, "神迹戒", "福缘", 4, nil, 0, nil, 0, nil, 0)
	Cun(1227894859, "如意戒", "经脉", 1, "胆魄", 3, nil, 0, nil, 0)
	Cun(1227894860, "绿扳指", "医术", 1, "胆魄", 1, "福缘", 2, nil, 0)
	Cun(1227896919, "江湖·情", "全属性", 1, "绝学领悟", 1, nil, 0, nil, 0)
	Cun(1227896920, "江湖·义", "全属性", 1, "绝学领悟", 1, nil, 0, nil, 0)
	--攻击速度、暴击伤害、暴击率、杀怪回复、生命回复等等
	Cun(1227894851, "龙鳞剑", "攻击速度", 30, "暴击伤害", 0.6, "暴击率", 0.05, nil, 0)
	Cun(1227894850, "倚天剑", "闪避", 15, "法力回复", 5, "杀怪回复", 2000, "伤害回复", 500)
	Cun(1227895878, "断肠", "攻击速度", 30, "暴击率", 0.02, nil, 0, nil, 0)
	Cun(1227894864, "晶玉扇", "攻击速度", 25, "杀怪回复", 1500, nil, 0, nil, 0)
	Cun(1227894865, "紫金刀", "暴击伤害", 0.6, "暴击率", 0.05, "杀怪回复", 1500, nil, 0)
	Cun(1227895116, "精钢剑", "攻击速度", 20, "吸血", 0.05, "暴击率", 0.03, nil, 0)
	Cun(1227895118, "七星扇", "法力回复", 2, nil, 0, nil, 0, nil, 0)
	Cun(1227894872, "鸳鸯刀", "攻击速度", 20, nil, 0, nil, 0, nil, 0)
	Cun(1227897143, "打狗棒", "攻击速度", 60, "暴击伤害", 1.5, nil, 0, nil, 0)
	Cun(1227897145, "君子剑", "吸血", 0.15, "法力回复", 2, "杀怪回复", 500, "生命回复", 200)
	Cun(1227897154, "蛇杖", "暴击伤害", 0.9, "暴击率", 0.5, nil, 0, nil, 0)
	Cun(1227897153, "淑女剑", "闪避", 15, "伤害回复", 500, "暴击伤害", 0.3, "暴击率", 0.03)
	Cun(1227897155, "双剑合璧", "吸血", 0.15, "法力回复", 5, "杀怪回复", 2000, "生命回复", 500)
	Cun(1227897155, "双剑合璧", "闪避", 15, "伤害回复", 800, "暴击伤害", 0.5, "暴击率", 0.05)
	Cun(1227897144, "血刀", "攻击速度", 60, "暴击伤害", 0.8, "杀怪回复", 10000, nil, 0)
	Cun(1227897156, "玉箫", "法力回复", 15, "杀怪回复", 2000, "生命回复", 1500, nil, 0)
	Cun(1227896918, "江湖·忠", "攻击速度", 60, "暴击伤害", 1, "暴击率", 0.2, "杀怪回复", 3000)
	Cun(1227895379, "镇妖+1", "攻击速度", 20, "暴击伤害", 0.15, "杀怪回复", 300, nil, 0)
	Cun(1227895373, "镇妖+2", "攻击速度", 30, "暴击伤害", 0.3, "杀怪回复", 600, nil, 0)
	Cun(1227895377, "镇妖+3", "攻击速度", 40, "暴击伤害", 0.45, "杀怪回复", 900, nil, 0)
	Cun(1227895378, "镇妖+4", "攻击速度", 50, "暴击伤害", 0.6, "杀怪回复", 1200, nil, 0)
	Cun(1227895376, "镇妖+5", "攻击速度", 60, "暴击伤害", 0.75, "杀怪回复", 1500, nil, 0)
	Cun(1227895123, "开山斧", "暴击伤害", 0.15, "杀怪回复", 300, nil, 0, nil, 0)
	Cun(1227895344, "青铜刀", "攻击速度", 40, "杀怪回复", 0, nil, 0, nil, 0)
	Cun(1227899721, "张无忌用过的青铜刀", "攻击速度", 60, "杀怪回复", 0, nil, 0, nil, 0)
	Cun(1227895109, "秋叶刃", "攻击速度", 15, "杀怪回复", 500, nil, 0, nil, 0)
	Cun(1227895345, "锁候枪", "分裂", 0.3, "暴击率", 0.03, nil, 0, nil, 0)
	Cun(1227895094, "宣花斧", "吸血", 0.15, nil, 0, nil, 0, nil, 0)
	Cun(1227895091, "饮血枪", "攻击速度", 20, nil, 0, nil, 0, nil, 0)
	Cun(1227895346, "布衣", "气血", 1000, "杀怪回复", 30, "移动速度", 30, nil, 0)
	Cun(1227895124, "彩衣", "气血", 3000, "伤害回复", 70, nil, 0, nil, 0)
	Cun(1227895112, "虎皮衣", "气血", 3000, nil, 0, nil, 0, nil, 0)
	Cun(1227895111, "蛇皮裘", "气血", 5000, "伤害回复", 100, "生命回复", 250, nil, 0)
	Cun(1227895095, "开阳衣", "气血", 10000, nil, 0, nil, 0, nil, 0)
	Cun(1227895092, "烈火衣", "气血", 20000, "闪避", 10, nil, 0, nil, 0)
	Cun(1227895119, "七星锦服", "气血", 7000, "攻击速度", 30, "伤害回复", 300, nil, 0)
	Cun(1227895877, "金蝉衣", "气血", 15000, "生命回复", 700, "法力上限", 20, "法力回复", 5)
	Cun(1227894863, "软猬甲", "气血", 40000, "生命回复", 1200, "法力上限", 20, nil, 0)
	Cun(1227894854, "六合纵横", "气血", 30000, "伤害回复", 500, nil, 0, nil, 0)
	Cun(1227894855, "破军无双", "气血", 50000, "生命回复", 1500, "闪避", 20, nil, 0)
	Cun(1227897136, "决战·霸", "气血", 100000, "生命回复", 2000, "暴击率", 0.05, nil, 0)
	Cun(1227899212, "少林袈裟", "气血", 100000, "伤害回复", 2000, "暴击伤害", 0.7, nil, 0)
	Cun(1227897178, "通神", "气血", 40000, nil, 0, nil, 0, nil, 0)
	Cun(1227895121, "破军帽", "气血", 1500, "伤害回复", 150, nil, 0, nil, 0)
	Cun(1227894861, "灭云冠", "法力上限", 40, "暴击伤害", 0.2, nil, 0, nil, 0)
	Cun(1227896922, "决战·恶", "气血", 50000, "攻击速度", 50, "伤害回复", 800, "法力上限", 100)
	Cun(1227895122, "破军鞋", "生命回复", 150, "移动速度", 70, nil, 0, nil, 0)
	Cun(1227894868, "神行鞋", "气血", 25000, "移动速度", 160, "法力上限", 25, "法力回复", 10)
	Cun(1227894862, "踏风靴", "移动速度", 180, "杀怪回复", 1000, "生命回复", 500, "法力回复", 4)
	Cun(1227896921, "决战·魁", "移动速度", 200, "闪避", 30, "伤害回复", 600, "暴击伤害", 0.8)
	Cun(1227895126, "苍蟒护腕", "攻击速度", 15, "暴击率", 0.05, nil, 0, nil, 0)
	Cun(1227895125, "纱绒护腕", "攻击速度", 15, "暴击伤害", 0.15, nil, 0, nil, 0)
	Cun(1227895096, "彩云腕", "生命回复", 200, nil, 0, nil, 0, nil, 0)
	Cun(1227895108, "天璇护腕", "攻击速度", 20, nil, 0, "气血", 6000, nil, 0)
	Cun(1227895093, "霓云手套", "吸血", 0.03, "生命回复", 300, "法力上限", 20, nil, 0)
	Cun(1227895117, "精钢护腕", "气血", 2000, nil, 0, nil, 0, nil, 0)
	Cun(1227894874, "追月手", "攻击速度", 25, "伤害回复", 400, "法力回复", 5, nil, 0)
	Cun(1227894866, "天玑毒掌", "攻击速度", 30, "伤害回复", 400, "暴击伤害", 0.3, "暴击率", 0.02)
	Cun(1227894867, "无魅雷手", "攻击速度", 30, "杀怪回复", 1500, "法力回复", 5, nil, 0)
	Cun(1227894856, "魔影炎掌", "攻击速度", 40, "杀怪回复", 2000, nil, 0, nil, 0)
	Cun(1227894857, "踏风冰手", "攻击速度", 40, "伤害回复", 500, "暴击伤害", 0.5, "暴击率", 0.05)
	Cun(1227895347, "护身符", "伤害回复", 40, nil, 0, nil, 0, nil, 0)
	Cun(1227895348, "环戒", "杀怪回复", 100, "生命回复", 50, nil, 0, nil, 0)
	Cun(1227899720, "郭靖戴过的环戒", "闪避", 20, "杀怪回复", 100, "生命回复", 50, nil, 0)
	Cun(1227895127, "传家符", "杀怪回复", 150, "生命回复", 300, nil, 0, nil, 0)
	Cun(1227895128, "琥珀项链", "杀怪回复", 250, "生命回复", 150, nil, 0, nil, 0)
	Cun(1227895129, "水碧护符", "杀怪回复", 200, "生命回复", 120, "法力回复", 3, "伤害回复", 60)
	Cun(1227895130, "闪避护符", "杀怪回复", 150, "闪避", 10, "伤害回复", 80, nil, 0)
	--call Cun('I01J',"七绝护符","攻击速度",30,"暴击率",0.02,null,0,null,0)
	Cun(1227895115, "青竹戒指", "法力回复", 3, nil, 0, nil, 0, nil, 0)
	Cun(1227895113, "星云戒指", "杀怪回复", 300, "暴击伤害", 0.1, nil, 0, nil, 0)
	Cun(1227895097, "白虎符", "气血", 5000, nil, 0, nil, 0, nil, 0)
	Cun(1227895105, "蓝魔项链", "杀怪回复", 800, "法力上限", 40, "法力回复", 5, nil, 0)
	Cun(1227895106, "北斗护符", "移动速度", 80, "生命回复", 600, nil, 0, nil, 0)
	Cun(1227895107, "梦蝶项链", nil, 0, "攻击速度", 15, "气血", 8000, "伤害回复", 100)
	Cun(1227895120, "七星戒指", nil, 0, "攻击速度", 15, "生命回复", 200, "暴击伤害", 0.15)
	Cun(1227895088, "云海链", "气血", 13000, "杀怪回复", 500, "法力上限", 25, "暴击伤害", 0.2)
	Cun(1227894873, "七情束", "生命回复", 400, "法力上限", 20, "法力回复", 5, "暴击率", 0.02)
	Cun(1227895089, "影岚护符", "吸血", 0.05, "攻击速度", 20, "移动速度", 100, "生命回复", 400)
	Cun(1227895090, "玉修护符", "气血", 25000, "杀怪回复", 700, "生命回复", 600, "暴击率", 0.01)
	Cun(1227894869, "云灭护符", "攻击速度", 40, "杀怪回复", 1000, "暴击伤害", 0.3, nil, 0)
	Cun(1227894870, "抗魔护符", "吸血", 0.1, "气血", 25000, "法力上限", 15, "暴击伤害", 0.4)
	Cun(1227894871, "重生链", "吸血", 0.05, "攻击速度", 45, "生命回复", 700, "暴击率", 0.01)
	Cun(1227894858, "神迹戒", "杀怪回复", 1000, "伤害回复", 500, "法力回复", 8, nil, 0)
	Cun(1227894859, "如意戒", "攻击速度", 40, "伤害回复", 400, "法力上限", 50, nil, 0)
	Cun(1227894860, "绿扳指", "攻击速度", 50, "生命回复", 500, "气血", 20000, "暴击伤害", 0.5)
	Cun(1227896919, "江湖·情", "生命回复", 1000, "法力回复", 7, "暴击率", 0.1, nil, 0)
	Cun(1227896920, "江湖·义", "吸血", 0.3, "攻击速度", 0.5, "暴击伤害", 1, "暴击率", 0.05)
end
--刚进入地图
function Zw()
	FogEnableOff()
	FogMaskEnableOff()
	SetCreepCampFilterState(false)
	jw(false)
	SetPlayerAllianceStateBJ(Player(12), Player(6), 3)
	SetPlayerHandicapXP(Player(0), 0.43)
	SetPlayerHandicapXP(Player(1), 0.43)
	SetPlayerHandicapXP(Player(2), 0.43)
	SetPlayerHandicapXP(Player(3), 0.43)
	SetPlayerHandicapXP(Player(4), 0.43)
	SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1800.0, 0.0)
	PlayMusicBJ(xh)
	K4[1] = Ls
	K4[2] = Qs
	K4[3] = Os
	K4[4] = Ns
	K4[5] = Ps
	K4[6] = LanXin
	K4[7] = XuanJin
	GroupAddUnit(i7, Ls)
	GroupAddUnit(i7, Ns)
	GroupAddUnit(i7, Qs)
	GroupAddUnit(i7, Os)
	GroupAddUnit(i7, Ps)
	GroupAddUnit(i7, LanXin)
	GroupAddUnit(i7, XuanJin)
	y7[1] = 1969711215
	y7[2] = 1970498413
	y7[3] = 1852798821
	y7[4] = 1851879023
	y7[5] = 1852008562
	y7[6] = 1852273524
	y7[7] = 1969381742
	y7[8] = 1852466993
	y7[9] = 1869898354
	y7[10] = 1853320292
	y7[11] = 1852208244
	y7[12] = 1701077869
	y7[13] = 1751410807
	y7[14] = 1852076648
	y7[15] = 1970107511
	y7[16] = 1852990571
	y7[17] = 1852207714
	y7[18] = 1869898347
	y7[19] = 1853517677
	y7[20] = 1869311844
	y7[21] = 1852076404
	y7[22] = 1852076662
	y7[23] = 1852204908
	y7[24] = 1701013613
	y7[25] = 1853125236
	y7[26] = 1852601452
	y7[27] = 1702064246
	y7[28] = 1852403302
	y7[29] = 1851941995
	y7[30] = 1852340580
	u7[1] = 1852007794
	u7[2] = 1852335457
	u7[3] = 1852599148
	u7[4] = 1852140645
	u7[5] = 1852141168
	u7[6] = 1851941985
	u7[7] = 1848651826
	u7[8] = 1851942003
	--call SetHeroLevel(gg_unit_N008_0054,99,true)
	SetUnitLifePercentBJ(gg_unit_N007_0055, 5)
	--call UnitAddAbility(gg_unit_N00F_0112,'A02Z')
	--call IssueTargetOrderById(gg_unit_N00F_0112, 852063, gg_unit_N007_0055)
	AddSpecialEffectTargetUnitBJ("overhead", Ts, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Ft, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Ss, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", vt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", ot, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", nt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Et, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", ct, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", zt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Ct, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", ut, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", xt, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", yt, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Dt, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", At, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", Bt, "Objects\\RandomObject\\RandomObject.mdl")
	AddSpecialEffectTargetUnitBJ("overhead", gg_unit_N007_0055, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	CreateTextTagUnitBJ("点我加门派后可离开此地", Rs, 0.0, 15.0, 100.0, 100.0, 0.0, 50.0)
	CreateTextTagLocBJ("决战江湖1.53名人榜", GetRectCenter(uh), 100.0, 10, 100, 100, 0.0, 50.0)
	v7[1] = GetRectCenter(Ie)
	v7[2] = GetRectCenter(le)
	v7[3] = GetRectCenter(Je)
	v7[4] = GetRectCenter(Ke)
	v7[5] = GetRectCenter(Le)
	v7[6] = GetRectCenter(Me)
	v7[7] = GetRectCenter(Ne)
	v7[8] = GetRectCenter(Oe)
	v7[9] = GetRectCenter(Ge)
	v7[10] = GetRectCenter(Re)
	v7[11] = GetRectCenter(ff)
	C7[1] = ft
	C7[2] = gt
	C7[3] = ht
	C7[4] = jt
	C7[5] = kt
	b7[1] = Us
	b7[2] = Zs
	b7[3] = Ys
	b7[4] = Xs
	b7[5] = Ws
	AdjustPlayerStateBJ(10, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
	AdjustPlayerStateBJ(10, Player(1), PLAYER_STATE_RESOURCE_LUMBER)
	AdjustPlayerStateBJ(10, Player(2), PLAYER_STATE_RESOURCE_LUMBER)
	AdjustPlayerStateBJ(10, Player(3), PLAYER_STATE_RESOURCE_LUMBER)
	AdjustPlayerStateBJ(10, Player(4), PLAYER_STATE_RESOURCE_LUMBER)
	ChooseMoShi()
	print("选择模式")
	TaoHuaDaoKaiFang()
	bj_forLoopAIndex = 0
	for _ in _loop_() do
		if bj_forLoopAIndex >= 5 then break end
		if GetPlayerController(Player(bj_forLoopAIndex)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex)) == PLAYER_SLOT_STATE_PLAYING then
			SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)), GetPlayerName(Player(bj_forLoopAIndex)))
			SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)) * 2, GetPlayerName(Player(bj_forLoopAIndex)))
		end
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
	YDWEPolledWaitNull(40.0)
	StartTimerBJ(A7[3], false, 120.0)
	CreateTimerDialogBJ(bj_lastStartedTimer, "邪教进攻倒计时：")
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	z7[3] = bj_lastCreatedTimerDialog
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000欢迎来到|cffff00de金庸群侠传之决战江湖1.53|r")
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000游戏初期您可以完成难度为一星到二星的任务来提升角色的能力，游戏前期金钱较匮乏，可以在守家积分商店使用积分兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎前往游戏专区论坛jzjhbbs.uuu9.com查看游戏攻略以及提出您的宝贵意见|R")
	YDWEPolledWaitNull(40.0)
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解，欢迎前往游戏专区论坛jzjhbbs.uuu9.com提出您的宝贵意见。游戏中的特殊玩法，请到NPC随风而逝de风处查看，在基地右侧|R")
	YDWEPolledWaitNull(40.0)
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000游戏里的相关指令\n按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n输入属性拼音首字母加数值如fy5：|cFFCCFF33增加相应点数的自由属性（福缘+5）|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n更多游戏帮助，请按F9打开任务面板进行查询")
	YDWEPolledWaitNull(40.0)
	TriggerExecute(ss)
	hd = true
end
function InitFamouses()
	ve[1] = 1328558411
	xe[1] = 400
	ye[1] = 20
	ze[1] = 600
	ve[2] = 1429221424
	xe[2] = 350
	ye[2] = 15
	ze[2] = 730
	ve[3] = 1160786002
	xe[3] = 260
	ye[3] = 12
	ze[3] = 540
	ve[4] = 1211117633
	xe[4] = 250
	ye[4] = 18
	ze[4] = 500
	ve[5] = 1328558412
	xe[5] = 310
	ye[5] = 16
	ze[5] = 750
	ve[6] = 1328558413
	xe[6] = 220
	ye[6] = 19
	ze[6] = 700
	ve[7] = 1328558414
	xe[7] = 340
	ye[7] = 17
	ze[7] = 640
	ve[8] = 1160786003
	xe[8] = 320
	ye[8] = 10
	ze[8] = 780
	ve[9] = 1160786004
	xe[9] = 200
	ye[9] = 12
	ze[9] = 550
	ve[10] = 1311780913
	xe[10] = 380
	ye[10] = 11
	ze[10] = 580
	ve[11] = 1328558415
	xe[11] = 280
	ye[11] = 14
	ze[11] = 800
end
function InitBosses()
	Ae[1] = 1227896898
	Ae[2] = 1227896665
	Ae[3] = 1227896666
	Ae[4] = 1227896880
	Ae[5] = 1227896881
	Ae[6] = 1227896882
	Ae[7] = 1227896883
	Ae[8] = 1227896884
	Ae[9] = 1227896885
	Ae[10] = 1227896886
	Ae[11] = 1227896887
	Ae[12] = 1227896888
	Ae[13] = 1227896889
	Ae[14] = 1227896897
	Ae[15] = 1227896911
	Ae[16] = 1227896899
	Ae[17] = 1227896900
	Ae[18] = 1227896901
	Ae[19] = 1227896902
	Ae[20] = 1227896903
	Ae[21] = 1227896904
	Ae[22] = 1227896905
	Ae[23] = 1227896906
	Ae[24] = 1227896907
	Ae[25] = 1227896908
	Ae[26] = 1227896909
	Ae[27] = 1227896910
	Ae[28] = 1227896912
end
function InitHerbs()
	YaoCao[1] = 1227896646
	YaoCao[2] = 1227896647
	YaoCao[3] = 1227896645
	YaoCao[4] = 1227896630
	YaoCao[5] = 1227896631
	YaoCao[6] = 1227896632
	YaoCao[7] = 1227896633
	YaoCao[8] = 1227896642
	YaoCao[9] = 1227896641
	YaoCao[10] = 1227896643
	YaoCao[11] = 1227896644
	YaoCao[12] = 1227896648
end
function InitEquipments()
	--衣服清单
	ZhuangBei[1] = 1227895346
	ZhuangBei[2] = 1227895124
	ZhuangBei[3] = 1227895112
	ZhuangBei[4] = 1227895111
	ZhuangBei[5] = 1227895095
	ZhuangBei[6] = 1227895092
	ZhuangBei[7] = 1227895119
	ZhuangBei[8] = 1227895877
	ZhuangBei[9] = 1227897178
	ZhuangBei[10] = 1227894863
	ZhuangBei[11] = 1227894854
	ZhuangBei[12] = 1227894855
	ZhuangBei[13] = 1227899212
	ZhuangBei[14] = 1227897136
	--饰品清单
	--白字
	ShiPin[1] = 1227895347
	ShiPin[2] = 1227895347
	ShiPin[3] = 1227895125
	ShiPin[4] = 1227895126
	ShiPin[5] = 1227895127
	ShiPin[6] = 1227895128
	ShiPin[7] = 1227895129
	ShiPin[8] = 1227895130
	ShiPin[9] = 1227895113
	ShiPin[10] = 1227895114
	ShiPin[11] = 1227895115
	ShiPin[12] = 1227895093
	ShiPin[13] = 1227895096
	ShiPin[14] = 1227895097
	ShiPin[15] = 1227895105
	ShiPin[16] = 1227895106
	ShiPin[17] = 1227895107
	ShiPin[18] = 1227895108
	--蓝字
	ShiPin[19] = 1227895117
	ShiPin[20] = 1227895089
	ShiPin[21] = 1227895090
	ShiPin[22] = 1227895121
	ShiPin[23] = 1227895122
	ShiPin[24] = 1227895119
	ShiPin[25] = 1227895120
	ShiPin[26] = 1227894873
	ShiPin[27] = 1227894874
	ShiPin[28] = 1227894866
	ShiPin[29] = 1227894867
	ShiPin[30] = 1227894868
	ShiPin[31] = 1227894869
	ShiPin[32] = 1227894870
	ShiPin[33] = 1227894871
	--紫字
	ShiPin[34] = 1227894856
	ShiPin[35] = 1227894857
	ShiPin[36] = 1227894858
	ShiPin[37] = 1227894859
	ShiPin[38] = 1227894860
	ShiPin[39] = 1227894861
	ShiPin[40] = 1227894862
	--红字
	ShiPin[41] = 1227896919
	ShiPin[42] = 1227896920
	ShiPin[43] = 1227896921
	ShiPin[44] = 1227896922
end
--门派武功
function InitDenominationSkills()
	udg_menpainame[1] = "少林派"
	X7[1] = 1093678407
	Z7[1] = 1093677104
	Y7[1] = 1093678411
	Q8[1] = 1093678415
	P8[1] = 1395666992
	udg_menpainame[2] = "古墓派"
	X7[2] = 1093679429
	Z7[2] = 1093679434
	Y7[2] = 1093679437
	Q8[2] = 1093679444
	P8[2] = 1093679445
	udg_menpainame[3] = "丐帮"
	X7[3] = 1093681977
	Z7[3] = 1093681986
	Y7[3] = 1093681976
	Q8[3] = 1093681985
	P8[3] = 1093682249
	udg_menpainame[4] = "华山派"
	X7[4] = 1093679193
	Z7[4] = 1093679191
	Y7[4] = 1093679192
	Q8[4] = 1093677879
	P8[4] = 1093679409
	udg_menpainame[5] = "全真教"
	X7[5] = 1093681990
	Z7[5] = 1093682241
	Y7[5] = 1093681997
	Q8[5] = 1093681992
	P8[5] = 1093682245
	udg_menpainame[6] = "血刀门"
	X7[6] = 1093681993
	Z7[6] = 1093681994
	Y7[6] = 1093681998
	Q8[6] = 1093681995
	P8[6] = 1093682248
	udg_menpainame[7] = "恒山派"
	X7[7] = 1093677617
	Z7[7] = 1093677402
	Y7[7] = 1093681988
	Q8[7] = 1093677619
	P8[7] = 1093677620
	udg_menpainame[8] = "峨眉派"
	X7[8] = 1093681975
	Z7[8] = 1093681970
	Y7[8] = 1093681973
	Q8[8] = 1093681972
	P8[8] = 1093681974
	udg_menpainame[9] = "武当派"
	X7[9] = 1093678148
	Z7[9] = 1093679187
	Y7[9] = 1093679186
	Q8[9] = 1093679185
	P8[9] = 1093679190
	udg_menpainame[10] = "星宿派"
	X7[10] = 1093681744
	Z7[10] = 1093681747
	Y7[10] = 1093681745
	Q8[10] = 1093681748
	P8[10] = 1093681750
	udg_menpainame[11] = "自由门派"
	X7[11] = 1095067243
	Z7[11] = 1095067243
	Y7[11] = 1095067243
	Q8[11] = 1095067243
	P8[11] = 1095067243
	udg_menpainame[12] = "灵鹫宫"
	X7[12] = 1093677634
	Z7[12] = 1093677635
	Y7[12] = 1093677638
	Q8[12] = 1093677639
	P8[12] = 1093677640
	udg_menpainame[13] = "姑苏慕容"
	X7[13] = 1093677643
	Z7[13] = 1093681987
	Y7[13] = 1093677645
	Q8[13] = 1093677654
	P8[13] = 1093677650
	udg_menpainame[14] = "明教"
	X7[14] = 1093677872
	Z7[14] = 1093677874
	Y7[14] = 1093678674
	Q8[14] = 1093677876
	P8[14] = 1093678935
	udg_menpainame[15] = "衡山派"
	X7[15] = 1093678157
	Z7[15] = 1093678158
	Y7[15] = 1093678160
	Q8[15] = 1093677622
	P8[15] = 1093678162
	udg_menpainame[16] = "神龙教"
	X7[16] = 1093678167
	Z7[16] = 1093678170
	Y7[16] = 1093678385
	Q8[16] = 1093678391
	P8[16] = 1093678393
	udg_menpainame[17] = "神龙教"
	X7[17] = 1093678390
	Z7[17] = 1093678388
	Y7[17] = 1093678168
	Q8[17] = 1093678391
	P8[17] = 1093678393
	udg_menpainame[18] = "泰山派"
	X7[18] = 1093679169
	Z7[18] = 1093679170
	Y7[18] = 1093679173
	Q8[18] = 1093679175
	P8[18] = 1093679176
end
function InitSkillBooks()
	udg_jianghu[1] = 1227895626
	udg_jianghu[2] = 1227895624
	udg_jianghu[3] = 1227895382
	udg_jianghu[4] = 1227895381
	udg_jianghu[5] = 1227895623
	udg_jianghu[6] = 1227895386
	udg_jianghu[7] = 1227895625
	udg_jianghu[8] = 1227895384
	udg_jianghu[9] = 1227895385
	udg_jianghu[10] = 1227895627
	udg_jianghu[11] = 1227895620
	udg_jianghu[12] = 1227895628
	udg_jianghu[13] = 1227895600
	udg_jianghu[14] = 1227895601
	udg_jianghu[15] = 1227895621
	udg_jianghu[16] = 1227895603
	udg_jianghu[17] = 1227895383
	udg_jianghu[18] = 1227895622
	udg_juexue[1] = 1227895609
	udg_juexue[2] = 1227895604
	udg_juexue[3] = 1227895608
	udg_juexue[4] = 1227895607
	udg_juexue[5] = 1227895618
	udg_juexue[6] = 1227895602
	udg_juexue[7] = 1227895605
	udg_juexue[8] = 1227895606
	udg_juexue[9] = 1227895619
	udg_juexue[10] = 1227895617
	udg_juenei[1] = 1227895635
	udg_juenei[2] = 1227895631
	udg_juenei[3] = 1227895636
	udg_juenei[4] = 1227895633
	udg_juenei[5] = 1227895629
	udg_juenei[6] = 1227895632
	udg_juenei[7] = 1227895637
	udg_juenei[8] = 1227895634
	udg_canzhang[1] = 1227896373
	udg_canzhang[2] = 1227896369
	udg_canzhang[3] = 1227896374
	udg_canzhang[4] = 1227896372
	udg_canzhang[5] = 1227896375
	udg_canzhang[6] = 1227896370
	udg_canzhang[7] = 1227896377
	udg_canzhang[8] = 1227896368
	udg_canzhang[9] = 1227896376
	udg_canzhang[10] = 1227896371
	udg_canzhang[11] = 1227899735
	udg_diershi[1] = 1227897157
	udg_diershi[2] = 1227897158
	udg_diershi[3] = 1227897159
	udg_diershi[4] = 1227897160
	udg_diershi[5] = 1227897161
	udg_diershi[6] = 1227897162
	udg_diershi[7] = 1227897163
	udg_diershi[8] = 1227897164
	udg_diershi[9] = 1227897165
	udg_diershi[10] = 1227897166
end
function InitKillingTaskCreatures()
	--阳寿已尽任务怪
	udg_yangshou[1] = 1868853091
	udg_yangshou[2] = 1869767017
	udg_yangshou[3] = 1752395634
	udg_yangshou[4] = 1851942007
	udg_yangshou[5] = 1852076663
	udg_yangshou[6] = 1852076403
	udg_yangshou[7] = 1853059439
	udg_yangshou[8] = 1852338802
	udg_yangshou[9] = 1852796263
	udg_yangshou[10] = 1853186679
	udg_yangshou[11] = 1852996194
	udg_yangshou[12] = 1852207221
	udg_yangshou[13] = 1852270642
	udg_yangshou[14] = 1852207984
	udg_yangshou[15] = 1852663652
	udg_yangshou[16] = 1969976430
	udg_yangshou[17] = 1853059688
	udg_yangshou[18] = 1752395892
	udg_yangshou[19] = 1848651844
	udg_yangshou[20] = 1215130471
	udg_yangshou[21] = 1852207203
end
function InitGlobalVariables()
	InitFamouses() --初始化名门
	InitBosses() --初始化BOSS
	InitHerbs() --初始化草药
	InitEquipments() --初始化装备
	InitDenominationSkills() --初始化门派武功
	InitSkillBooks() --初始化武功书
	InitKillingTaskCreatures() --初始化阳寿已尽任务怪
end

function MenPai_Trigger()
	EMei_Trigger() --峨眉武功触发
	GaiBang_Trigger() --丐帮武功触发
	GuMu_Trigger() --古墓武功触发
	HuaShan_Trigger() --华山武功触发
	HengShan_Trigger() --恒山武功触发
	HengShan2_Trigger() --衡山武功触发
	LingJiuGong_Trigger() --灵鹫宫武功触发
	MuRongJia_Trigger() --慕容世家武功触发
	QuanZhen_Trigger() --全真武功触发
	ShaoLin_Trigger() --少林武功触发
	ShenLong_Trigger() --神龙教武功触发
	TieZhang_Trigger() --铁掌帮武功触发
	TaiShan_Trigger() --泰山派武功触发
	VIPMingJiao_Trigger() --明教武功触发
	WuDang_Trigger() --武当武功触发
	XueDao_Trigger() --血刀门武功触发
	XingXiu_Trigger() --星宿武功触发

	JiangHuNeiGong_Trigger() --江湖内功触发（含九阴、绝内）
	JiangHuWuGong_Trigger() --江湖武功触发
	JueShiWuGong_Trigger() --绝世武功触发
end
--地图初始化
function main1()
	local t
	local life
	local itemID
	local i
	local cu
	local Du
	local v
	local wu
	MapStartCreateUnitsAndInitEnvironments() -- 创建单位并初始化环境
	ConfigureNeutralVictim()
	ju = Filter(bu)
	filterIssueHauntOrderAtLocBJ = Filter(IssueHauntOrderAtLocBJFilter)
	filterEnumDestructablesInCircleBJ = Filter(tu)
	filterGetUnitsInRectOfPlayer = Filter(GetUnitsInRectOfPlayerFilter)
	filterGetUnitsOfTypeIdAll = Filter(GetUnitsOfTypeIdAllFilter)
	filterGetUnitsOfPlayerAndTypeId = Filter(GetUnitsOfPlayerAndTypeIdFilter)
	filterMeleeTrainedUnitIsHeroBJ = Filter(MeleeTrainedUnitIsHeroBJFilter)
	filterLivingPlayerUnitsOfTypeId = Filter(LivingPlayerUnitsOfTypeIdFilter)

	udg_baolv[1] = 20
	udg_baolv[2] = 25
	udg_baolv[3] = 25
	udg_baolv[4] = 25
	udg_baolv[5] = 25
	udg_baolv[6] = 33
	udg_baolv[7] = 33
	udg_baolv[8] = 34
	udg_baolv[9] = 25
	udg_baolv[10] = 25
	udg_baolv[11] = 25
	udg_baolv[12] = 25
	udg_baolv[13] = 33
	udg_baolv[14] = 33
	udg_baolv[15] = 34
	udg_baolv[16] = 50
	udg_baolv[17] = 50
	udg_baolv[18] = 50
	udg_baolv[19] = 50
	udg_baolv[20] = 50
	udg_baolv[21] = 50
	udg_baolv[22] = 33
	udg_baolv[23] = 33
	udg_baolv[24] = 34
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		udg_shuxing[i] = 10
		qiuhun[i] = 0
		zhaoyangguo[i] = 0
		linganran[i] = 0
		touxiao[i] = 0
		bihai[i] = 0
		aidacishu[i] = 0
		udg_wuqishu[i] = 0
		udg_yifushu[i] = 0
		i = i + 1
	end
	cu = 0
	for _ in _loop_() do
		if cu == 16 then break end
		bj_FORCE_PLAYER[cu] = CreateForce()
		ForceAddPlayer(bj_FORCE_PLAYER[cu], Player(cu))
		cu = cu + 1
	end
	bj_FORCE_ALL_PLAYERS = CreateForce()
	ForceEnumPlayers(bj_FORCE_ALL_PLAYERS, nil)
	bj_cineModePriorSpeed = GetGameSpeed()
	bj_cineModePriorFogSetting = IsFogEnabled()
	bj_cineModePriorMaskSetting = IsFogMaskEnabled()
	cu = 0
	for _ in _loop_() do
		if cu >= bj_MAX_QUEUED_TRIGGERS then break end
		bj_queuedExecTriggers[cu] = nil
		bj_queuedExecUseConds[cu] = false
		cu = cu + 1
	end
	bj_isSinglePlayer = false
	Du = 0
	cu = 0
	for _ in _loop_() do
		if cu >= 12 then break end
		if GetPlayerController(Player(cu)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(cu)) == PLAYER_SLOT_STATE_PLAYING then
			Du = Du + 1
		end
		cu = cu + 1
	end
	bj_isSinglePlayer = Du == 1
	bj_rescueSound = CreateSoundFromLabel("Rescue", false, false, false, 10000, 10000)
	bj_questDiscoveredSound = CreateSoundFromLabel("QuestNew", false, false, false, 10000, 10000)
	bj_questUpdatedSound = CreateSoundFromLabel("QuestUpdate", false, false, false, 10000, 10000)
	bj_questCompletedSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
	bj_questFailedSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
	bj_questHintSound = CreateSoundFromLabel("Hint", false, false, false, 10000, 10000)
	bj_questSecretSound = CreateSoundFromLabel("SecretFound", false, false, false, 10000, 10000)
	bj_questItemAcquiredSound = CreateSoundFromLabel("ItemReward", false, false, false, 10000, 10000)
	bj_questWarningSound = CreateSoundFromLabel("Warning", false, false, false, 10000, 10000)
	bj_victoryDialogSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
	bj_defeatDialogSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
	DelayedSuspendDecayCreate()
	v = VersionGet()
	if v == VERSION_REIGN_OF_CHAOS then
		bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V0
	else
		bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V1
	end
	InitQueuedTriggers()
	YDWEInitRescuableBehaviorBJNull()
	InitDNCSounds()
	InitMapRects()
	InitSummonableCaps()
	wu = 0
	for _ in _loop_() do
		bj_stockAllowedPermanent[wu] = false
		bj_stockAllowedCharged[wu] = false
		bj_stockAllowedArtifact[wu] = false
		wu = wu + 1
		if wu > 10 then break end
	end
	SetAllItemTypeSlots(11)
	SetAllUnitTypeSlots(11)
	bj_stockUpdateTimer = CreateTimer()
	TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INITIAL_DELAY, false, au)
	bj_stockItemPurchased = CreateTrigger()
	TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased, Player(15), EVENT_PLAYER_UNIT_SELL_ITEM, nil)
	TriggerAddAction(bj_stockItemPurchased, RemovePurchasedItem)
	DetectGameStarted()
	ExecuteFunc("Hu")
	ExecuteFunc("SetCamera")
	ExecuteFunc("mv")
	ExecuteFunc("Pw")
	i = 0
	i = 0
	for _ in _loop_() do
		if i > 16 then break end
		udg_jdds[i] = 0
		udg_jddsbool[i] = false
		udg_ldds[i] = 0
		udg_lddsbool[i] = false
		udg_xbds[i] = 0
		udg_xbdsbool[i] = false
		udg_bqds[i] = 0
		udg_bqdsbool[i] = false
		udg_dzds[i] = 0
		udg_dzdsbool[i] = false
		udg_jwjs[i] = 0
		udg_jwjsbool[i] = false
		udg_junzhu[i] = false
		juexuelingwu[i] = 1
		udg_baojishanghai[i] = 1.5
		udg_baojilv[i] = 0.03
		shanghaihuifu[i] = 100.0
		shaguaihufui[i] = 200.0
		shengminghuifu[i] = 0
		falihuifu[i] = 0
		udg_lilianxishu[i] = 1.0
		udg_hashero[i] = false
		udg_baoji[i] = false
		udg_yiwang[i] = false
		R4[i] = DialogCreate()
		Y4[i] = 1
		udg_xinggeA[i] = 0
		udg_xinggeB[i] = 0
		chilian[i] = false
		udg_zhangmen[i] = false
		udg_whichzhangmen[i] = 0
		wugongshu[i] = 8
		udg_zhemei[i] = 0

		wuxing[i] = 9
		jingmai[i] = 9
		gengu[i] = 9
		fuyuan[i] = 9
		danpo[i] = 9
		yishu[i] = 9
		udg_runamen[i] = 0
		D7[i] = 0
		F7[i] = 0
		G7[i] = 0
		K7[i] = DialogCreate()
		L7[i] = 0
		P7[i] = 0
		udg_revivetimer[i] = CreateTimer()
		S7[i] = 0
		udg_MaxDamage[i] = 0
		d8[i] = 0
		e8[i] = 0
		shengwang[i] = 0
		g8[i] = 0
		h8[i] = 0
		i8[i] = 0
		j8[i] = 0
		o8[i] = false
		v8[i] = DialogCreate()
		b8[i] = false
		C8[i] = false
		c8[i] = false
		D8[i] = DialogCreate()
		F8[i] = false
		XNKL[i] = false
		G8[i] = false
		H8[i] = false
		I8[i] = false
		l8[i] = false
		J8[i] = 0
		xiuxing[i] = 0
		MM8[i] = 0
		N8[i] = 0
		O8[i] = 0
		Z8[i] = false
		d9[i] = false
		e9[i] = false
		f9[i] = CreateTimer()
		h9[i] = false
		i9[i] = 0
		v9[i] = false
		w9[i] = false
		x9[i] = false
		y9[i] = false
		z9[i] = 0
		A9[i] = 0
		G9[i] = 0
		H9[i] = 0
		I9[i] = 0
		l9[i] = 0
		udg_shanghaijiacheng[i] = 0.0
		udg_shanghaixishou[i] = 0
		T9[i] = false
		LLguaiA[i] = 0
		LLguaiE[i] = 0
		LLguaiB[i] = 0
		LLguaiC[i] = 0
		LLguaiD[i] = 0
		LLguaiF[i] = 0
		LLguaiG[i] = 0
		Z9[i] = CreateTimer()
		ed[i] = false
		fd[i] = CreateTimer()
		jd[i] = 0
		kd[i] = 0
		qd[i] = 0
		rd[i] = 0
		ud[i] = 0
		wugongxiuwei[i] = 0
		xd[i] = 0
		yd[i] = 0
		Ad[i] = false
		Bd[i] = false
		Cd[i] = 0
		cd[i] = false
		Dd[i] = 0
		Ed[i] = 0
		Fd[i] = CreateGroup()
		Gd[i] = 0
		Id[i] = 0
		ld[i] = 0
		Jd[i] = 0
		Kd[i] = 0
		Ld[i] = 0
		Md[i] = 0
		Nd[i] = 0
		Od[i] = 0
		Pd[i] = 0
		Qd[i] = 0
		Rd[i] = false
		Sd[i] = 0
		Td[i] = 0
		Ud[i] = 0
		Vd[i] = 0
		Wd[i] = 0
		jiuazi[i] = 0
		shoujiajf[i] = 0
		ge[i] = false
		he[i] = false
		je[i] = DialogCreate()
		te[i] = 0
		Ce[i] = 0
		ce[i] = 0
		De[i] = false
		Ee[i] = false
		i = i + 1
	end
	--set udg_menpaineigong=DialogCreate()
	udg_index = DialogCreate()
	udg_nan = DialogCreate()
	i7 = CreateGroup()
	udg_shanghaidanweizu = CreateGroup()
	udg_boshu = 1
	w7 = CreateGroup()
	i = 0
	for _ in _loop_() do
		if i > 5 then break end
		A7[i] = CreateTimer()
		i = i + 1
	end
	ShiFouShuaGuai = true
	i = 0
	for _ in _loop_() do
		if i > 100 then break end
		I7[i] = 1095067243
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 20 then break end
		udg_menpainame[i] = "未加入"
		X7[i] = 1095067243
		Y7[i] = 1095067243
		Z7[i] = 1095067243
		P8[i] = 1095067243
		Q8[i] = 1095067243
		nd[i] = 0
		od[i] = 0
		i = i + 1
	end
	pd[1] = 2000
	pd[2] = 2000
	pd[3] = 2000
	pd[4] = 5000
	pd[5] = 5000
	pd[6] = 5000
	pd[7] = 15000
	pd[8] = 15000
	pd[9] = 15000
	pd[10] = 500000
	i = 0
	for _ in _loop_() do
		if i > 10 then break end
		m8[i] = false
		q8[i] = 1668446579
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 13 then break end
		udg_blgg[i] = 0
		udg_blwx[i] = 0
		udg_bljm[i] = 0
		udg_blfy[i] = 0
		udg_bldp[i] = 0
		udg_blys[i] = 0
		i = i + 1
	end
	j9 = CreateGroup()
	k9 = CreateGroup()
	r9 = CreateGroup()
	s9 = CreateGroup()
	i = 0
	for _ in _loop_() do
		if i > 20 then break end
		udg_jueneishxs[i] = 0
		udg_jueneishjc[i] = 0
		udg_jueneiminjie[i] = 0
		udg_jueneijxlw[i] = 0
		udg_jueneibaojilv[i] = 0
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 7 then break end
		Hd[i] = CreateTimer()
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i > 15 then break end
		xe[i] = 0
		ye[i] = 0
		ze[i] = 0
		i = i + 1
	end
	Fe = CreateGroup()
	--刚进入地图
	print("lh触发器执行了一次")
	lh = CreateTrigger()
	TriggerRegisterTimerEventSingle(lh, 0.1)
	TriggerAddAction(lh, Zw)

	InitGlobalVariables() --初始化全局变量

	KeyInputSystem() --键盘输入系统
	SmeltingWeaponSystem() --决战江湖1.4之大辽金匠
	MonsterCome() --决战江湖1.52之圣兽来了
	CreateDestructables() --创建可破坏物
	Cuns() --存储装备属性
	CunWuGongS() --存储武功
	najitest() --纳吉的测试代码
end
function main2()
	GameLogic_Trigger() -- 游戏逻辑触发器
	GameDetail_Trigger() -- 游戏细节处理
	Equipment_Trigger() --装备属性触发器
	MenPai_Trigger() --门派触发器
	ZiZhi_Trigger() --自制武器触发器
	ZhenFa_Trigger() --阵法触发器
	TiaoZhan_Trigger() --挑战场触发器
	QiWu_Trigger() --奇武触发器
	TaoHuaDao_Trigger() --桃花岛触发器
	Instances_Trigger() --副本和任务系统
	Experiences_Trigger() --历练系统
	ElixirSystem_Trigger() --丹药系统
	Tasks_Trigger() --任务系统 
	JianYi_Trigger() --剑意系统 
end
--#include "./denomination/XueDao.j"
--***************************************************************************
--*
--*  Triggers
--*
--***************************************************************************
--===========================================================================
-- Trigger: import_lua
--===========================================================================
--TESH.scrollpos=0
--TESH.alwaysfold=0

--===========================================================================
-- Trigger: 未命名触发器 001
--===========================================================================
function Trig____________________001Actions()
	SetPlayerStateBJ(Player(0), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	SetPlayerStateBJ(Player(2), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	SetPlayerStateBJ(Player(3), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	SetPlayerStateBJ(Player(4), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	SetPlayerStateBJ(Player(5), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
	ShowUnit(gg_unit_n00E_0066, false)
	ShowUnit(gg_unit_nvl2_0005, false)
	ShowUnit(gg_unit_n00M_0131, false)
	ShowUnit(gg_unit_n00N_0132, false)
	ShowUnit(gg_unit_N00I_0116, true)
	ShowUnit(gg_unit_N007_0055, true)
	main1()
	--Function not found: call InitTrig_AM_1_Orig()
	if DzAPI_Map_HasMallItem(Player(0), "QS8K6F5NV2") == true then
		DoNothing()
	else
		DoNothing()
	end
end
--===========================================================================
function InitTrig____________________001()
	gg_trg____________________001 = CreateTrigger()
	TriggerAddAction(gg_trg____________________001, Trig____________________001Actions)
end
--===========================================================================
-- Trigger: 未命名触发器 004
--===========================================================================
function Trig____________________004Actions()
	main2()
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 0, 0, 300)
	YDWESetLocalVariableReal("R", YDWELogarithm__Log2(0.01 * 1.0) * 0.30103) -- INLINED!!
end
--===========================================================================
function InitTrig____________________004()
	gg_trg____________________004 = CreateTrigger()
	TriggerRegisterTimerEventSingle(gg_trg____________________004, 0.0)
	TriggerAddAction(gg_trg____________________004, Trig____________________004Actions)
end
--===========================================================================
-- Trigger: 未命名触发器 005
--===========================================================================
--TESH.scrollpos=9
--TESH.alwaysfold=0
function Trig____________________005Conditions()
	return YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit(), 1952807024) == true
end
function Trig____________________005Actions()
	YDWENewItemsFormula(1227897145, 1, 1227897153, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227897155)
	SelectHeroSkill(gg_unit_N007_0055, 1095262842)
end
--===========================================================================
function InitTrig____________________005()
--set gg_trg____________________005 = CreateTrigger()
--call YDWESyStemItemCombineRegistTrigger( gg_trg____________________005 )
--call TriggerAddCondition(gg_trg____________________005, Condition(function Trig____________________005Conditions))
--call TriggerAddAction(gg_trg____________________005, function Trig____________________005Actions)
end
--===========================================================================
-- Trigger: 未命名触发器 002
--===========================================================================
--TESH.scrollpos=0
--TESH.alwaysfold=0
function Trig____________________002Actions()
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 0, 0, 300)
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 1, 0, 300)
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, 300)
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, 300)
	YDWEJumpTimer(GetTriggerUnit(), 0, 0.0, 2, 0.01, GetRandomReal(100, 500))
	YDWEJumpTimer(GetTriggerUnit(), 0, 0.0, 2, 0.01, GetRandomReal(100, 500))
	YDWETimerDestroyEffect(15.0, AddSpecialEffectLoc("war3mapImported\\kineticfield_fx_stand.mdx", Location(0, 0)))
	YDWETimerDestroyLightning(2, GetLastCreatedLightningBJ())
end
--===========================================================================
function InitTrig____________________002()
	gg_trg____________________002 = CreateTrigger()
	TriggerAddAction(gg_trg____________________002, Trig____________________002Actions)
end
--===========================================================================
-- Trigger: 未命名触发器 003
--===========================================================================
function Trig____________________003Actions()
end
--===========================================================================
function InitTrig____________________003()
	gg_trg____________________003 = CreateTrigger()
	DisableTrigger(gg_trg____________________003)
	YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg____________________003)
	YDWETriggerRegisterLeaveRectSimpleNull(gg_trg____________________003, GetCurrentCameraBoundsMapRectBJ())
	TriggerAddAction(gg_trg____________________003, Trig____________________003Actions)
end
--===========================================================================
-- Trigger: 读取存档积分
--===========================================================================
function Trig___________________uActions()
	bj_forLoopBIndex = 1
	bj_forLoopBIndexEnd = 6
	for _ in _loop_() do
		if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
		YDWE_PreloadSL_Load(ConvertedPlayer(bj_forLoopBIndex), "JueZhan", "JiangHu", 1)
		udg_MeiJuJiFen[bj_forLoopBIndex] = udg_MeiJuJiFen[bj_forLoopBIndex] + YDWE_PreloadSL_Get(ConvertedPlayer(bj_forLoopBIndex), "总积分", 1)
		bj_forLoopBIndex = bj_forLoopBIndex + 1
	end
end
--===========================================================================
function InitTrig___________________u()
	gg_trg___________________u = CreateTrigger()
	DisableTrigger(gg_trg___________________u)
	TriggerRegisterTimerEventSingle(gg_trg___________________u, 1.0)
	TriggerAddAction(gg_trg___________________u, Trig___________________uActions)
end
--===========================================================================
-- Trigger: 存档积分
--===========================================================================
function Trig_____________uActions()
	udg_MeiJuJiFen[1] = udg_MeiJuJiFen[1] + 500
	YDWE_PreloadSL_Set(Player(0), "总积分", 1, udg_MeiJuJiFen[1])
	YDWE_PreloadSL_Save(Player(0), "JueZhan", "JiangHu", 1)
end
--===========================================================================
function InitTrig_____________u()
	gg_trg_____________u = CreateTrigger()
	DisableTrigger(gg_trg_____________u)
	TriggerRegisterPlayerChatEvent(gg_trg_____________u, Player(0), "-Test", true)
	TriggerAddAction(gg_trg_____________u, Trig_____________uActions)
end
--===========================================================================
-- Trigger: ChangeClothes
--===========================================================================
--TESH.scrollpos=0
--TESH.alwaysfold=0
function Trig_ChangeClothesConditions()
	return GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558664 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558665
end
function Trig_ChangeClothesActions()
	--if udg_HuanZhuangCD[1+GetPlayerId(GetTriggerPlayer())]==false then
	--set udg_HuanZhuangCD[1+GetPlayerId(GetTriggerPlayer())]=true
	--黑变绿或粉
	if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558664 then
		if GetRandomInt(1, 2) == 1 then
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678132)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678132)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		else
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678135)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678135)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		end
	--call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
	--绿变粉或黑
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558665 then
		if GetRandomInt(1, 2) == 1 then
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678133)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678133)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		else
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678136)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678136)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		end
	--call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
	--粉变黑或绿
	elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 then
		if GetRandomInt(1, 2) == 1 then
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678131)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678131)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		else
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678134)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678134)
			UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
		end
	--call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
	end
	bj_forLoopAIndex = 1
	bj_forLoopAIndexEnd = 11
	for _ in _loop_() do
		if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
		if I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex] ~= 1095067243 then
			UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex])
			SetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex], LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex] * 5))
		end
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
--call YDWEPolledWaitNull(300.)
--set udg_HuanZhuangCD[1+GetPlayerId(GetTriggerPlayer())]=false
--else
--call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "换装功能CD中")
--endif
end
--===========================================================================
function InitTrig_ChangeClothes()
	gg_trg_ChangeClothes = CreateTrigger()
	TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(0), "换装", true)
	TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(1), "换装", true)
	TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(2), "换装", true)
	TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(3), "换装", true)
	TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(4), "换装", true)
	TriggerAddCondition(gg_trg_ChangeClothes, Condition(Trig_ChangeClothesConditions))
	TriggerAddAction(gg_trg_ChangeClothes, Trig_ChangeClothesActions)
end
--===========================================================================
-- Trigger: QinLongKongHe
--===========================================================================
function Trig_QinLongKongHeConditions()
	return GetSpellAbilityId() == 1093677910 and GetSpellTargetUnit() ~= gg_unit_N008_0054
end
function Trig_QinLongKongHeActions()
	if GetSpellTargetUnit() == GetTriggerUnit() then
		YDWETimerPatternRushSlide(GetSpellTargetUnit(), GetUnitFacing(GetTriggerUnit()), 1200.0, 1.2, 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
	else
		if YDWEDistanceBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()) >= 1000.0 then
			YDWETimerPatternRushSlide(GetSpellTargetUnit(), YDWEAngleBetweenUnits(GetSpellTargetUnit(), GetTriggerUnit()), RMinBJ(1200.0, YDWEDistanceBetweenUnits(GetTriggerUnit(), GetLastCreatedUnit())), RMinBJ(1.2, YDWEDistanceBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()) / 1000.0), 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
		else
			YDWETimerPatternRushSlide(GetSpellTargetUnit(), YDWEAngleBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()), 1200.0, 1.2, 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
		end
	end
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678668) ~= 0 and IsUnitAlly(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit())) == true then
		SetUnitLifePercentBJ(GetSpellTargetUnit(), 100)
	else
	end
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093681989) ~= 0 and IsUnitAlly(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit())) == false then
		WanBuff(GetTriggerUnit(), GetSpellTargetUnit(), 11)
	else
	end
end
--===========================================================================
function InitTrig_QinLongKongHe()
	gg_trg_QinLongKongHe = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_QinLongKongHe, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(gg_trg_QinLongKongHe, Condition(Trig_QinLongKongHeConditions))
	TriggerAddAction(gg_trg_QinLongKongHe, Trig_QinLongKongHeActions)
end
--===========================================================================
-- Trigger: YaoWangShenPian
--===========================================================================
--TESH.scrollpos=0
--TESH.alwaysfold=0
--function Trig_YaoWangShenPianConditions takes nothing returns boolean
-- return ((GetSpellAbilityId() == 'A03W'))
-- endfunction
-- function Trig_YaoWangShenPianFunc003001003 takes nothing returns boolean
-- return ((IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) == true))
-- endfunction
-- function Trig_YaoWangShenPianFunc003Func006T takes nothing returns nothing
-- local unit u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
-- if (((GetUnitLifePercent(u) > 1.00) and (UnitHasBuffBJ(u, 'BUsl') == true))) then
-- call SetUnitLifePercentBJ( u, ( GetUnitLifePercent(u) - 0.5 ) )
-- else
-- call YDTriggerClearTable(YDTriggerH2I(GetExpiredTimer()))
-- call DestroyTimer(GetExpiredTimer())
-- endif
-- endfunction
-- function Trig_YaoWangShenPianFunc003A takes nothing returns nothing
-- local timer ydl_timer
-- call CreateNUnitsAtLoc( 1, 'e000', GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetEnumUnit()), bj_UNIT_FACING )
-- call UnitAddAbility( GetLastCreatedUnit(), 'A03X' )
-- call ShowUnitHide( GetLastCreatedUnit() )
-- call UnitApplyTimedLife( GetLastCreatedUnit(), 'BHwe', 3.00 )
-- call IssueTargetOrderById( GetLastCreatedUnit(), 852227, GetEnumUnit() )
-- set ydl_timer = CreateTimer()
-- call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0, GetEnumUnit())
-- call TimerStart(ydl_timer, 1.00, true, function Trig_YaoWangShenPianFunc003Func006T)
-- set ydl_timer = null
-- endfunction
-- function Trig_YaoWangShenPianActions takes nothing returns nothing
-- local group ydl_group
-- local unit ydl_unit
-- local timer ydl_timer
-- local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
-- set ydl_localvar_step = ydl_localvar_step + 3
-- call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
-- call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xE6BB3831, 900.00)
-- if ((GetUnitAbilityLevel(GetTriggerUnit(), 'A07A') != 0)) then
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xE6BB3831, 1300.00)
-- else
-- endif
-- call ForGroupBJ( GetUnitsInRangeOfLocMatching(YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xE6BB3831), GetUnitLoc(GetTriggerUnit()), Condition(function Trig_YaoWangShenPianFunc003001003)), function Trig_YaoWangShenPianFunc003A )
-- call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
-- set ydl_group = null
-- set ydl_unit = null
-- set ydl_timer = null
-- endfunction
-- //===========================================================================
-- function InitTrig_YaoWangShenPian takes nothing returns nothing
-- set gg_trg_YaoWangShenPian = CreateTrigger()
-- #ifdef DEBUG
-- call YDWESaveTriggerName(gg_trg_YaoWangShenPian, "YaoWangShenPian")
-- #endif
-- call TriggerRegisterAnyUnitEventBJ( gg_trg_YaoWangShenPian, EVENT_PLAYER_UNIT_SPELL_EFFECT )
-- call TriggerAddCondition(gg_trg_YaoWangShenPian, Condition(function Trig_YaoWangShenPianConditions))
-- call TriggerAddAction(gg_trg_YaoWangShenPian, function Trig_YaoWangShenPianActions)
-- endfunction//===========================================================================
-- Trigger: KuRongShenGong
--===========================================================================
function Trig_KuRongShenGongConditions()
	return GetSpellAbilityId() == 1093677914
end
function Trig_KuRongShenGongActions()
	local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
	ydl_localvar_step = ydl_localvar_step + 3
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
	SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) / 2.0)
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, 150 + 150 * xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	if GetUnitAbilityLevel(GetKillingUnitBJ(), 1093678928) ~= 0 then
		SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, 500 + 500 * xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	else
	end
	ModifyHeroStat(bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	ModifyHeroStat(bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	YDWEPolledWaitNull(15.0)
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
	ModifyHeroStat(bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	ModifyHeroStat(bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
	FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end
--===========================================================================
function InitTrig_KuRongShenGong()
	gg_trg_KuRongShenGong = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(gg_trg_KuRongShenGong, Condition(Trig_KuRongShenGongConditions))
	TriggerAddAction(gg_trg_KuRongShenGong, Trig_KuRongShenGongActions)
end
--===========================================================================
-- Trigger: KuRongShenGong_2
--===========================================================================
function Trig_KuRongShenGong_2Conditions()
	return GetUnitAbilityLevel(GetKillingUnitBJ(), 1093677914) ~= 0
end
function Trig_KuRongShenGong_2Actions()
	local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
	ydl_localvar_step = ydl_localvar_step + 3
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
	SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, GetConvertedPlayerId(GetTriggerPlayer()))
	udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] = udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] + 1
	if udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] >= 300 then
		udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] = 0
		if GetUnitState(GetKillingUnitBJ(), UNIT_STATE_LIFE) > 2000.0 then
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 1, 10)
			ModifyHeroStat(bj_HEROSTAT_STR, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 20)
			ModifyHeroStat(bj_HEROSTAT_AGI, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 30)
			ModifyHeroStat(bj_HEROSTAT_INT, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 10)
			if GetUnitAbilityLevel(GetKillingUnitBJ(), 1093678935) ~= 0 then
				ModifyHeroStat(bj_HEROSTAT_AGI, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 30)
			else
			end
		else
		end
	else
	end
	FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end
--===========================================================================
function InitTrig_KuRongShenGong_2()
	gg_trg_KuRongShenGong_2 = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong_2, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(gg_trg_KuRongShenGong_2, Condition(Trig_KuRongShenGong_2Conditions))
	TriggerAddAction(gg_trg_KuRongShenGong_2, Trig_KuRongShenGong_2Actions)
end
--===========================================================================
-- Trigger: KuRongShenGong_3
--===========================================================================
function Trig_KuRongShenGong_3Conditions()
	return GetUnitAbilityLevel(GetAttacker(), 1093677914) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093679156) ~= 0 and GetRandomReal(0.0, 100.0) <= 15.0
end
function Trig_KuRongShenGong_3Actions()
	SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) * 0.9)
end
--===========================================================================
function InitTrig_KuRongShenGong_3()
	gg_trg_KuRongShenGong_3 = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong_3, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(gg_trg_KuRongShenGong_3, Condition(Trig_KuRongShenGong_3Conditions))
	TriggerAddAction(gg_trg_KuRongShenGong_3, Trig_KuRongShenGong_3Actions)
end
--===========================================================================
-- Trigger: ShuiShangPiao
--===========================================================================
function Trig_ShuiShangPiaoActions()
end
--===========================================================================
function InitTrig_ShuiShangPiao()
	gg_trg_ShuiShangPiao = CreateTrigger()
	TriggerAddAction(gg_trg_ShuiShangPiao, Trig_ShuiShangPiaoActions)
end
--===========================================================================
-- Trigger: SH
--===========================================================================
function Trig_SHConditions()
	return GetIssuedOrderIdBJ() == String2OrderIdBJ("stoneform") or GetIssuedOrderIdBJ() == String2OrderIdBJ("hex")
end
function Trig_SHActions()
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("stoneform") then
		IssueImmediateOrder(GetTriggerUnit(), "stop")
	else
	end
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("hex") then
		IssueImmediateOrder(GetTriggerUnit(), "holdposition")
	else
	end
end
--===========================================================================
function InitTrig_SH()
	gg_trg_SH = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_SH, EVENT_PLAYER_UNIT_ISSUED_ORDER)
	TriggerAddCondition(gg_trg_SH, Condition(Trig_SHConditions))
	TriggerAddAction(gg_trg_SH, Trig_SHActions)
end
--===========================================================================
-- Trigger: AM_1
--===========================================================================
function Trig_AM_1Conditions()
	return GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") or GetIssuedOrderIdBJ() == String2OrderIdBJ("mount")
end
function Trig_AM_1Actions()
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("mount") then
		IssuePointOrderByIdLoc(GetTriggerUnit(), 851986, GetOrderPointLoc())
	else
	end
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") then
		IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetOrderPointLoc())
	else
	end
end
--===========================================================================
function InitTrig_AM_1()
	gg_trg_AM_1 = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_AM_1, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	TriggerAddCondition(gg_trg_AM_1, Condition(Trig_AM_1Conditions))
	TriggerAddAction(gg_trg_AM_1, Trig_AM_1Actions)
end
--===========================================================================
-- Trigger: AM_2
--===========================================================================
function Trig_AM_2Conditions()
	return GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") or GetIssuedOrderIdBJ() == String2OrderIdBJ("mount")
end
function Trig_AM_2Actions()
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("mount") then
		IssueTargetOrderById(GetTriggerUnit(), 851986, GetOrderTargetUnit())
	else
	end
	if GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") then
		IssueTargetOrderById(GetTriggerUnit(), 851983, GetOrderTargetUnit())
	else
	end
end
--===========================================================================
function InitTrig_AM_2()
	gg_trg_AM_2 = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_AM_2, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	TriggerAddCondition(gg_trg_AM_2, Condition(Trig_AM_2Conditions))
	TriggerAddAction(gg_trg_AM_2, Trig_AM_2Actions)
end
--===========================================================================
--===========================================================================
function RunInitializationTriggers()
	ConditionalTriggerExecute(gg_trg____________________001)
end
--***************************************************************************
--*
--*  Players
--*
--***************************************************************************
function InitCustomPlayerSlots()
	-- Player 0
	SetPlayerStartLocation(Player(0), 0)
	ForcePlayerStartLocation(Player(0), 0)
	SetPlayerColor(Player(0), ConvertPlayerColor(0))
	SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(0), false)
	SetPlayerController(Player(0), MAP_CONTROL_USER)
	-- Player 1
	SetPlayerStartLocation(Player(1), 1)
	ForcePlayerStartLocation(Player(1), 1)
	SetPlayerColor(Player(1), ConvertPlayerColor(1))
	SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(1), false)
	SetPlayerController(Player(1), MAP_CONTROL_USER)
	-- Player 2
	SetPlayerStartLocation(Player(2), 2)
	ForcePlayerStartLocation(Player(2), 2)
	SetPlayerColor(Player(2), ConvertPlayerColor(2))
	SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(2), false)
	SetPlayerController(Player(2), MAP_CONTROL_USER)
	-- Player 3
	SetPlayerStartLocation(Player(3), 3)
	ForcePlayerStartLocation(Player(3), 3)
	SetPlayerColor(Player(3), ConvertPlayerColor(3))
	SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(3), false)
	SetPlayerController(Player(3), MAP_CONTROL_USER)
	-- Player 4
	SetPlayerStartLocation(Player(4), 4)
	ForcePlayerStartLocation(Player(4), 4)
	SetPlayerColor(Player(4), ConvertPlayerColor(4))
	SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(4), false)
	SetPlayerController(Player(4), MAP_CONTROL_USER)
	-- Player 5
	SetPlayerStartLocation(Player(5), 5)
	ForcePlayerStartLocation(Player(5), 5)
	SetPlayerColor(Player(5), ConvertPlayerColor(5))
	SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
	SetPlayerRaceSelectable(Player(5), false)
	SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
	-- Player 6
	SetPlayerStartLocation(Player(6), 6)
	ForcePlayerStartLocation(Player(6), 6)
	SetPlayerColor(Player(6), ConvertPlayerColor(6))
	SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
	SetPlayerRaceSelectable(Player(6), false)
	SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
	-- Player 7
	SetPlayerStartLocation(Player(7), 7)
	ForcePlayerStartLocation(Player(7), 7)
	SetPlayerColor(Player(7), ConvertPlayerColor(7))
	SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
	SetPlayerRaceSelectable(Player(7), false)
	SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
	-- Player 8
	SetPlayerStartLocation(Player(8), 8)
	ForcePlayerStartLocation(Player(8), 8)
	SetPlayerColor(Player(8), ConvertPlayerColor(8))
	SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(8), false)
	SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)
end
function InitCustomTeams()
	-- Force: TRIGSTR_010
	SetPlayerTeam(Player(0), 0)
	SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(1), 0)
	SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(2), 0)
	SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(3), 0)
	SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(4), 0)
	SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(5), 0)
	SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
	--   Allied
	SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
	SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
	SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
	SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
	SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
	SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
	SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
	SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
	SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
	SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
	SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
	SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
	SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
	SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
	SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
	SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
	SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
	SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
	SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
	SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
	--   Shared Vision
	SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
	SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
	SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
	SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
	SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
	SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
	SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
	SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
	SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
	SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
	SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
	SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
	SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
	SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
	SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
	SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
	-- Force: TRIGSTR_011
	SetPlayerTeam(Player(6), 1)
	SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(7), 1)
	SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(8), 1)
	SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
	--   Allied
	SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
	SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
	SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
	SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
	SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
	SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
	--   Shared Vision
	SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
	SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
	SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
	SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
	SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
	SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
end
function InitAllyPriorities()
	SetStartLocPrioCount(0, 4)
	SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
	SetStartLocPrioCount(1, 4)
	SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
	SetStartLocPrioCount(2, 4)
	SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
	SetStartLocPrioCount(3, 4)
	SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
	SetStartLocPrioCount(4, 4)
	SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
	SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
end
--***************************************************************************
--*
--*  Main Initialization
--*
--***************************************************************************
--===========================================================================
function main()
	SetCameraBounds(-15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
	SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	SetTerrainFogEx(0, 3000.0, 5000.0, 0.5, 0.0, 0.0, 0.0)
	NewSoundEnvironment("Default")
	SetAmbientDaySound("VillageDay")
	SetAmbientNightSound("VillageNight")
	SetMapMusic("Music", true, 0)
	CreateAllUnits()
	InitBlizzard()

	ExecuteFunc("jasshelper__initstructs282632015")
	ExecuteFunc("UniMissileSystem3D__Init")
	ExecuteFunc("init")
	ExecuteFunc("YDTriggerSaveLoadSystem__Init")
	ExecuteFunc("InitializeYD")
	ExecuteFunc("YDWEGeneralBounsSystem__Initialize")
	ExecuteFunc("YDWELogarithm__onInit")
	ExecuteFunc("YDWESync__onInit")
	ExecuteFunc("YDWEPreloadSL__Init")
	ExecuteFunc("YDWEStringFormula__Init")
	ExecuteFunc("YDWETimerPattern__Init")
	ExecuteFunc("YDWETimerSystem__Init")

	InitGlobals()
	--Function not found: call InitTrig_import_lua()
	InitTrig____________________001()
	InitTrig____________________004()
	InitTrig____________________005()
	InitTrig____________________002()
	InitTrig____________________003()
	InitTrig___________________u()
	InitTrig_____________u()
	InitTrig_ChangeClothes()
	InitTrig_QinLongKongHe()
	--Function not found: call InitTrig_YaoWangShenPian()
	InitTrig_KuRongShenGong()
	InitTrig_KuRongShenGong_2()
	InitTrig_KuRongShenGong_3()
	InitTrig_ShuiShangPiao()
	InitTrig_SH()
	InitTrig_AM_1()
	InitTrig_AM_2()
	ConditionalTriggerExecute(gg_trg____________________001) -- INLINED!!
end
--***************************************************************************
--*
--*  Map Configuration
--*
--***************************************************************************
function config()
	SetMapName("决战江湖1.55正式版")
	SetMapDescription("决战江湖，等你来战")
	SetPlayers(9)
	SetTeams(9)
	SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
	DefineStartLocation(0, 1728.0, -4160.0)
	DefineStartLocation(1, 1728.0, -4160.0)
	DefineStartLocation(2, 1728.0, -4160.0)
	DefineStartLocation(3, 1728.0, -4160.0)
	DefineStartLocation(4, 1728.0, -4160.0)
	DefineStartLocation(5, -3328.0, -15616.0)
	DefineStartLocation(6, 1728.0, -4160.0)
	DefineStartLocation(7, 1728.0, -4160.0)
	DefineStartLocation(8, 1728.0, -4160.0)
	-- Player setup
	InitCustomPlayerSlots()
	InitCustomTeams()
	InitAllyPriorities()
end



--Struct method generated initializers/callers:
function sa__ShopWeapon_onDestroy()
	local this = f__arg_this
	s__ShopWeapon_min_xiuxing[this] = 0
	s__ShopWeapon_id[this] = 0
	return true
end
function sa__ShopWeapon_PickUpWeapon()
	s__ShopWeapon_PickUpWeapon(f__arg_this, f__arg_unit1, f__arg_item1)
	return true
end
function sa__ZiZhiWuGong_create()
	local xishu = f__arg_integer1
	local range = f__arg_integer2
	local texiao = f__arg_integer3
	local dapeishu = f__arg_integer4
	local scrate = f__arg_integer5
	local zz
	zz = s__ZiZhiWuGong__allocate()
	s__ZiZhiWuGong_xishu[zz] = xishu
	s__ZiZhiWuGong_range[zz] = range
	s__ZiZhiWuGong_texiao[zz] = texiao
	s__ZiZhiWuGong_dapeishu[zz] = dapeishu
	s__ZiZhiWuGong_scrate[zz] = scrate
	f__result_integer = zz
	return true
end
function sa__ZiZhiWuGong_onDestroy()
	local this = f__arg_this
	s__ZiZhiWuGong_xishu[this] = 0
	s__ZiZhiWuGong_range[this] = 0
	s__ZiZhiWuGong_texiao[this] = 0
	s__ZiZhiWuGong_dapeishu[this] = 0
	s__ZiZhiWuGong_scrate[this] = 0
	return true
end
function sa__DaPei_onDestroy()
	local this = f__arg_this
	s__DaPei_wugongid[this] = 0
	s__DaPei_dapeixiaoguo[this] = 0
	s__DaPei_shxishu[this] = 0
	return true
end
function sa__DaPei_XiaoGuoShuoMing()
	local this = f__arg_this
	local s = ""
	s = (s or "") .. "+" .. (GetAbilityName(s__DaPei_wugongid[this]) or "") .. "："
	if s__DaPei_dapeixiaoguo[this] ~= 2 then
		s = (s or "") .. "伤害+" .. (I2S(R2I(s__DaPei_r[this] * 100)) or "") .. "%"
	else
		if R2I(s__DaPei_r[this]) == 1 then
			s = (s or "") .. "几率造成内伤"
		elseif R2I(s__DaPei_r[this]) == 2 then
			s = (s or "") .. "几率造成走火入魔"
		elseif R2I(s__DaPei_r[this]) == 3 then
			s = (s or "") .. "几率造成流血"
		elseif R2I(s__DaPei_r[this]) == 4 then
			s = (s or "") .. "几率造成混乱"
		elseif R2I(s__DaPei_r[this]) == 5 then
			s = (s or "") .. "几率造成昏迷"
		elseif R2I(s__DaPei_r[this]) == 6 then
			s = (s or "") .. "几率造成重伤"
		elseif R2I(s__DaPei_r[this]) == 7 then
			s = (s or "") .. "几率造成血流不止"
		elseif R2I(s__DaPei_r[this]) == 8 then
			s = (s or "") .. "几率造成麻痹"
		elseif R2I(s__DaPei_r[this]) == 9 then
			s = (s or "") .. "几率造成破防"
		elseif R2I(s__DaPei_r[this]) == 10 then
			s = (s or "") .. "几率造成神经错乱"
		elseif R2I(s__DaPei_r[this]) == 11 then
			s = (s or "") .. "几率造成封穴"
		elseif R2I(s__DaPei_r[this]) == 12 then
			s = (s or "") .. "几率造成穴位全封"
		elseif R2I(s__DaPei_r[this]) == 13 then
			s = (s or "") .. "几率造成中毒"
		end
	end
	f__result_string = s
	return true
end
function sa__YDWEStringFormula__Inventory_onDestroy()
	local this = f__arg_this
	FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or ""))) -- INLINED!!
	return true
end
function sa__YDWETimerPattern__Thread_onDestroy()
	local this = f__arg_this
	RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_obj[this])))) -- INLINED!!
	RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this])))) -- INLINED!!
	GroupClear(s__YDWETimerPattern__Thread_g[this])
	DestroyGroup(s__YDWETimerPattern__Thread_g[this])
	PauseTimer(s__YDWETimerPattern__Thread_t[this])
	DestroyTimer(s__YDWETimerPattern__Thread_t[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_des[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_pos[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_vel[this])
	s__YDWETimerPattern__Thread_caster[this] = nil
	s__YDWETimerPattern__Thread_target[this] = nil
	s__YDWETimerPattern__Thread_obj[this] = nil
	s__YDWETimerPattern__Thread_g[this] = nil
	s__YDWETimerPattern__Thread_t[this] = nil
	s__YDWETimerPattern__Thread_amount[this] = 0
	s__YDWETimerPattern__Thread_skills[this] = 0
	s__YDWETimerPattern__Thread_order[this] = 0
	s__YDWETimerPattern__Thread_dsfx[this] = ""
	s__YDWETimerPattern__Thread_gsfx[this] = ""
	s__YDWETimerPattern__Thread_wsfx[this] = ""
	s__YDWETimerPattern__Thread_part[this] = ""
	return true
end
function sa__YDWEStringFormula__Sorting_onDestroy()
	local this = f__arg_this
	local i = 0
	for _ in _loop_() do
		if i == s___YDWEStringFormula__Sorting_stack_size then break end
		s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = 0
		s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = 0
		i = i + 1
	end
	s__YDWEStringFormula__Sorting_char[this] = ""
	return true
end
function sa___prototype16_SetUnitMoveSpeedEx()
	s__ModSpeed_setSpeed(f__arg_unit1, f__arg_real1 * 1.0) -- INLINED!!
	return true
end

function jasshelper__initstructs282632015()
	st__ShopWeapon_onDestroy = CreateTrigger()
	TriggerAddCondition(st__ShopWeapon_onDestroy, Condition(sa__ShopWeapon_onDestroy))
	st__ShopWeapon_PickUpWeapon = CreateTrigger()
	TriggerAddCondition(st__ShopWeapon_PickUpWeapon, Condition(sa__ShopWeapon_PickUpWeapon))
	st__ZiZhiWuGong_create = CreateTrigger()
	TriggerAddCondition(st__ZiZhiWuGong_create, Condition(sa__ZiZhiWuGong_create))
	st__ZiZhiWuGong_onDestroy = CreateTrigger()
	TriggerAddCondition(st__ZiZhiWuGong_onDestroy, Condition(sa__ZiZhiWuGong_onDestroy))
	st__DaPei_onDestroy = CreateTrigger()
	TriggerAddCondition(st__DaPei_onDestroy, Condition(sa__DaPei_onDestroy))
	st__DaPei_XiaoGuoShuoMing = CreateTrigger()
	TriggerAddCondition(st__DaPei_XiaoGuoShuoMing, Condition(sa__DaPei_XiaoGuoShuoMing))
	st__YDWEStringFormula__Inventory_onDestroy[2] = CreateTrigger()
	st__YDWEStringFormula__Inventory_onDestroy[3] = st__YDWEStringFormula__Inventory_onDestroy[2]
	TriggerAddCondition(st__YDWEStringFormula__Inventory_onDestroy[2], Condition(sa__YDWEStringFormula__Inventory_onDestroy))
	st__YDWETimerPattern__Thread_onDestroy[10] = CreateTrigger()
	st__YDWETimerPattern__Thread_onDestroy[11] = st__YDWETimerPattern__Thread_onDestroy[10]
	st__YDWETimerPattern__Thread_onDestroy[12] = st__YDWETimerPattern__Thread_onDestroy[10]
	st__YDWETimerPattern__Thread_onDestroy[13] = st__YDWETimerPattern__Thread_onDestroy[10]
	TriggerAddCondition(st__YDWETimerPattern__Thread_onDestroy[10], Condition(sa__YDWETimerPattern__Thread_onDestroy))
	st__YDWEStringFormula__Sorting_onDestroy = CreateTrigger()
	TriggerAddCondition(st__YDWEStringFormula__Sorting_onDestroy, Condition(sa__YDWEStringFormula__Sorting_onDestroy))
	st___prototype16[1] = CreateTrigger()
	TriggerAddAction(st___prototype16[1], sa___prototype16_SetUnitMoveSpeedEx)
	TriggerAddCondition(st___prototype16[1], Condition(sa___prototype16_SetUnitMoveSpeedEx))

	ExecuteFunc("s__ModSpeed_Init___onInit")

	ExecuteFunc("s__YDWEStringFormula__ItemIdMatrix_onInit")
	ExecuteFunc("s__YDWEStringFormula__FormulaMatrix_onInit")
end
