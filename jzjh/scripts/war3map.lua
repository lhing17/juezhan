japi = require 'jass.japi'

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
YDWELogarithm__base = _array_(0.0)
YDWESync__m_mutex_state = false
YDWETriggerEvent__DamageEventQueue = _array_()
YDWETriggerEvent__DamageEventNumber = 0
YDWETriggerEvent__MoveItemEventQueue = _array_()
YDWETriggerEvent__MoveItemEventNumber = 0
LIBRARY_YDWETriggerRegisterLeaveRectSimpleNull = true
LIBRARY_YDWEUnitHasItemOfTypeBJNull = true
--globals from YDWEJumpTimer:
LIBRARY_YDWEJumpTimer = true
MoveMoreLevel_JumpTimer = 3
--endglobals from YDWEJumpTimer
--globals from YDWELocalVariable:
LIBRARY_YDWELocalVariable = true
--endglobals from YDWELocalVariable
--globals from YDWEPreloadSL:
LIBRARY_YDWEPreloadSL = true

YDWEPreloadSL__Code = _array_(0)
YDWEPreloadSL__CodeHI = _array_(0)
YDWEPreloadSL__CodeLO = _array_(0)
udg_YDWE_PreloadSL_List = _array_()
udg_YDWE_PreloadSL_CurrentDir = ""
--endglobals from YDWEPreloadSL
--globals from YDWEStringFormula:
LIBRARY_YDWEStringFormula = true
YDWEStringFormula__ItemCombineEventQueue = _array_()
YDWEStringFormula__ItemCombineEventNumber = 0
YDWEStringFormula__MAX_INSTANCES = 8100
YDWEStringFormula__SEGMENT_LENGTH = 4
YDWEStringFormula__FormulaData = 0
--endglobals from YDWEStringFormula
--globals from YDWETimerPattern:
LIBRARY_YDWETimerPattern = true
YDWETimerPattern__yd_loc = Location(0.0, 0.0)
--endglobals from YDWETimerPattern
--globals from YDWETimerSystem:
LIBRARY_YDWETimerSystem = true
YDWETimerSystem__TaskListIdle = _array_(0)
YDWETimerSystem__TaskListNext = _array_(0)
YDWETimerSystem__TaskListTime = _array_(0)
YDWETimerSystem__TaskListProc = _array_()
YDWETimerSystem__TimerSystem_RunIndex = 0
--endglobals from YDWETimerSystem

udg_A_PlayerHero = _array_()
udg_Player_Hero = _array_()
udg_Unit_B = _array_()
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

-- 江湖、绝学、绝内的最大武功种类数
MAX_WU_GONG_NUM = 56
MAX_BAN_LV_NUM = 14

chuansong = DialogCreate()
wuhun1 = _array_()
chuansong1 = _array_()
udg_JTX = _array_()
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
tiebucishu = _array_(0)
isproducing = _array_(false)
tiaozhanduixiang = _array_(0)
menpaiwuqi = _array_(0)
udg_tiaoxuedao = _array_(false)
udg_tiaodugu = _array_(false)
udg_tiaodamo = _array_(false)
tiaozhanwho = DialogCreate()
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
udg_loadql = _array_(false)
H = 0
I = 0
l = 0
J = 0
wugongshu = _array_(0)
udg_whichzhangmen = _array_(0)
udg_zhemei = _array_(0)
udg_zhangmen = _array_(false)
chilian = _array_(false)
udg_tiebushancengshu = 0
udg_nandu = 0
udg_shifoufomie = false
udg_yunyangxianshen = false
taohuakai = false

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
g4 = _array_()
h4 = 0
k4 = _array_()
m4 = 0
o4 = CreateTimer()
u4 = _array_(0)
v4 = _array_(0)
w4 = _array_(0)
x4 = _array_()
qiuhun = _array_(0)
zhaoyangguo = _array_(0)
linganran = _array_(0)
touxiao = _array_(0)
bihai = _array_(0)
D4 = 0
juexuelingwu = _array_(0)
udg_baojishanghai = _array_(0.0)
udg_baojilv = _array_(0.0)
shanghaihuifu = _array_(0.0)
shaguaihufui = _array_(0.0)
shengminghuifu = _array_(0.0)
falihuifu = _array_(0.0)
udg_lilianxishu = _array_(0.0)
L4 = _array_()
udg_hashero = _array_(false)
udg_baoji = _array_(false)
udg_yiwang = _array_(false)
udg_hero = _array_()
P4 = _array_()
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
udg_runamen = _array_(0)
k7 = 0

u7 = _array_(0)
v7 = _array_()
y7 = _array_(0)
z7 = _array_()
A7 = _array_()
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

m9 = 0
n9 = 0
o9 = _array_()
p9 = 0
q9 = _array_()
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
-- 名门数量
famous_num = 5
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
vipbanlv = _array_()
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
st___prototype16 = _array_()

require 'util.dzapi'


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


require 'util.maxspeed'
require 'map.系统.武器'
require 'map.系统.弹幕'
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
	udg_MeiJuJiFen = {0, 0, 0, 0, 0, 0, 0}
	udg_kurongsharen = {0, 0, 0, 0, 0, 0, 0}
	udg_HuanZhuangCD = {false, false, false, false, false, false, false}
end


--***************************************************************************
--*
--*  Custom Script Code
--*
--***************************************************************************
--判断单位是否为神兽
function IsUnitMonster(u)
	return GetUnitTypeId(u) == 1865429316 or GetUnitTypeId(u) == 1865429317 or GetUnitTypeId(u) == 1865429318 or GetUnitTypeId(u) == 1865429319 
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
	local character = {"愚钝", "笨拙", "平平", "聪明", "聪慧"}
	return character[xingge]
end
function XingGeB(xingge)
	local character = {"浮躁", "轻浮", "耐心", "稳重", "沉稳"}
	return character[xingge]	
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
	local p = et.player(jass.GetTriggerPlayer())
	for i = 1, MAX_BAN_LV_NUM do
		if GetUnitTypeId(k8[p.id]) == R8[i] then
			p:send_message("|cFFFFFF00伴侣：" .. (GetUnitName(k8[p.id]) or ""))
			if udg_blgg[i] > 0 then
				p:send_message("|cFF00FFFF根骨 ：   " .. (I2S(udg_blgg[i]) or ""))
			end
			if udg_blwx[i] > 0 then
				p:send_message("|cFF00FFFF悟性 ：   " .. (I2S(udg_blwx[i]) or ""))
			end
			if udg_bljm[i] > 0 then
				p:send_message("|cFF00FFFF经脉 ：   " .. (I2S(udg_bljm[i]) or ""))
			end
			if udg_blfy[i] > 0 then
				p:send_message("|cFF00FFFF福缘 ：   " .. (I2S(udg_blfy[i]) or ""))
			end
			if udg_bldp[i] > 0 then
				p:send_message("|cFF00FFFF胆魄 ：   " .. (I2S(udg_bldp[i]) or ""))
			end
			if udg_blys[i] > 0 then
				p:send_message("|cFF00FFFF医术 ：   " .. (I2S(udg_blys[i]) or ""))
			end
		end
	end
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
				if is_in(id5, YaoCao) and udg_lddsbool[i] == true then
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
require 'map.系统.万能属性'
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
    -- FIXME
	--if Pv == nil then
	--	return
	--end
	--if h4 == 0 then
	--	f4 = CreateTrigger()
	--	TriggerAddAction(f4, Lv)
	--	Nv()
	--end
	--g4[h4] = Pv
	--h4 = h4 + 1
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
			if UnitItemInSlot(u, i) and GetItemTypeId(UnitItemInSlot(u, i)) == j then
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
function WuDi(handle)
    local u = et.unit(handle)
    u:set_invulnerable(0)
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

require 'map.rules.伤害公式'
require 'map.rules.武功升重'
require 'map.系统.万能buff'
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


require 'map.系统.副本'
require 'map.系统.历练'
require 'map.系统.任务'
require 'map.系统.神器'
require 'map.系统.炼丹'
require 'map.系统.桃花岛'



-- 包含门派库
----------少林开始--------//



require 'map.系统.挑战场'
--
require 'map.门派.自创武学.init'
require 'map.门派.阵法.init'
--
require 'map.系统.自制武器'
--
require 'map.门派.奇武.init'
--
require 'map.系统.剑意'
require 'map.系统.四圣兽'
--
require 'map.门派.掌门技.init'


require 'map.static.detail'


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
	PlayMusicBJ(game.music.normal_bgm)
	 -- 英雄选择列表

	y7 ={1969,
		1970498413,
		1852798821,
		1851879023,
		1852008562,
		1852273524,
		1969381742,
		1852466993,
		1869898354,
		1853320292,
		1852208244,
		1701077869,
		1751410807,
		1852076648,
		1970107511,
		1852990571,
		1852207714,
		1869898347,
		1853517677,
		1869311844,
		1852076404,
		1852076662,
		1852204908,
		1701013613,
		1853125236,
		1852601452,
		1702064246,
		1852403302,
		1851941995,
		1852340580,
	}
	u7 = {1852007794,
		1852335457,
		1852599148,
		1852140645,
		1852141168,
		1851941985,
		1848651826,
		1851942003,
	}
	SetUnitLifePercentBJ(gg_unit_N007_0055, 5)
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
	for i = 0, 4 do
		if GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
			SaveStr(YDHT, GetHandleId(Player(i)), GetHandleId(Player(i)), GetPlayerName(Player(i)))
			SaveStr(YDHT, GetHandleId(Player(i)), GetHandleId(Player(i)) * 2, GetPlayerName(Player(i)))
		end
	end
	et.wait(40 * 1000, function()

		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000欢迎来到|cffff00de金庸群侠传之决战江湖1.53|r")
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000游戏初期您可以完成难度为一星到二星的任务来提升角色的能力，游戏前期金钱较匮乏，可以在守家积分商店使用积分兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎前往游戏专区论坛jzjhbbs.uuu9.com查看游戏攻略以及提出您的宝贵意见|R")
		et.wait(40 * 1000, function()
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解，欢迎前往游戏专区论坛jzjhbbs.uuu9.com提出您的宝贵意见。游戏中的特殊玩法，请到NPC随风而逝de风处查看，在基地右侧|R")
			et.wait(40 * 1000, function()
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cfffff000游戏里的相关指令\n按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n输入属性拼音首字母加数值如fy5：|cFFCCFF33增加相应点数的自由属性（福缘+5）|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n更多游戏帮助，请按F9打开任务面板进行查询")
				et.wait(40 * 1000, function()
					TriggerExecute(ss)
					hd = true
				end)
			end)			
		end)		
	end)	
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
	YaoCao = {1227896646,
		1227896647,
		1227896645,
		1227896630,
		1227896631,
		1227896632,
		1227896633,
		1227896642,
		1227896641,
		1227896643,
		1227896644,
		1227896648,
	}
end
function InitEquipments()
	--衣服清单
	ZhuangBei = {
	1227895346,
	1227895124,
	1227895112,
	1227895111,
	1227895095,
	1227895092,
	1227895119,
	1227895877,
	1227897178,
	1227894863,
	1227894854,
	1227894855,
	1227899212,
	1227897136,
}
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
	udg_jianghu = {1227895626,
		1227895624,
		1227895382,
		1227895381,
		1227895623,
		1227895386,
		1227895625,
		1227895384,
		1227895385,
		1227895627,
		1227895620,
		1227895628,
		1227895600,
		1227895601,
		1227895621,
		1227895603,
		1227895383,
		1227895622,
	}
	udg_juexue = {1227895609,
		1227895604,
		1227895608,
		1227895607,
		1227895618,
		1227895602,
		1227895605,
		1227895606,
		1227895619,
		1227895617,
	}
	udg_juenei = {1227895635,
		1227895631,
		1227895636,
		1227895633,
		1227895629,
		1227895632,
		1227895637,
		1227895634,
	}
	udg_canzhang = {1227896373,
		1227896369,
		1227896374,
		1227896372,
		1227896375,
		1227896370,
		1227896377,
		1227896368,
		1227896376,
		1227896371,
		1227899735,
	}
end
function InitKillingTaskCreatures()
	--阳寿已尽任务怪
	udg_yangshou = 	{1868853091,
	1869767017,
	1752395634,
	1851942007,
	1852076663,
	1852076403,
	1853059439,
	1852338802,
	1852796263,
	1853186679,
	1852996194,
	1852207221,
	1852270642,
	1852207984,
	1852663652,
	1969976430,
	1853059688,
	1752395892,
	1848651844,
	1215130471,
	1852207203,
}
end
function InitGlobalVariables()
	--初始化名门
--	require 'et.名门'
	InitBosses() --初始化BOSS
	InitHerbs() --初始化草药
	InitEquipments() --初始化装备
	InitDenominationSkills() --初始化门派武功
	InitSkillBooks() --初始化武功书
	InitKillingTaskCreatures() --初始化阳寿已尽任务怪
end

function MenPai_Trigger()
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
	require 'map.门派.明教.init'

	require 'map.门派.江湖武学.init'
	require 'map.门派.绝世武学.init'
	require 'map.门派.江湖内功.init'
end
--地图初始化
function main1()
    local i
	local cu
	local Du
	local v
	local wu

    pick_table = et.hero.init_pick_table()
	ju = Filter(bu)

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
	udg_shanghaidanweizu = CreateGroup()
	i = 0
	for _ in _loop_() do
		if i > 5 then break end
		A7[i] = CreateTimer()
		i = i + 1
	end
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
	lh = CreateTrigger()
	TriggerRegisterTimerEventSingle(lh, 0.1)
	TriggerAddAction(lh, Zw)

	InitGlobalVariables() --初始化全局变量

	--键盘输入系统
	require 'map.系统.keyinput'

--	SmeltingWeaponSystem() --决战江湖1.4之大辽金匠
--	MonsterCome() --决战江湖1.52之圣兽来了
	CreateDestructables() --创建可破坏物
	--存储装备属性
	require 'map.static.attrs'	

	najitest() --纳吉的测试代码
end
function main2()
    require 'map.rules.rule' -- 游戏逻辑触发器

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
-- Trigger: 未命名触发器 001
--===========================================================================
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
    -- ID字符串互转
    require 'war3.id'
    require 'util.log'
    require 'et.init'
    require 'game.init' -- 游戏配置

    -- 读取lni文件
	require 'lni.lni'
	require 'util.commonutil'
    require 'map.static.destructables'
    local unit_creation = require 'map.static.units'
    local environment = require 'map.static.environment'

    -- naji测试
    require 'util.najitest'

    et.denomination.create()
    et.part_time.init()
    et.unit.init()
    environment.init() -- 创建单位并初始化环境
    unit_creation.init()

	InitBlizzard()

	ExecuteFunc("jasshelper__initstructs282632015")
	--ExecuteFunc("UniMissileSystem3D__Init")
	ExecuteFunc("init")
	ExecuteFunc("YDTriggerSaveLoadSystem__Init")
	ExecuteFunc("InitializeYD")
	ExecuteFunc("YDWEGeneralBounsSystem__Initialize")
	ExecuteFunc("YDWELogarithm__onInit")
	-- ExecuteFunc("YDWESync__onInit")
	ExecuteFunc("YDWEPreloadSL__Init")
	ExecuteFunc("YDWEStringFormula__Init")
	ExecuteFunc("YDWETimerPattern__Init")
	ExecuteFunc("YDWETimerSystem__Init")

	InitGlobals()
	--Function not found: call InitTrig_import_lua()
    SetPlayerStateBJ(Player(0), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(2), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(3), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(4), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(5), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    ShowUnit(gg_unit_n00E_0066.handle, false)
    ShowUnit(gg_unit_nvl2_0005.handle, false)
    ShowUnit(gg_unit_n00M_0131.handle, false)
    ShowUnit(gg_unit_n00N_0132.handle, false)
    ShowUnit(gg_unit_N00I_0116.handle, true)
    ShowUnit(gg_unit_N007_0055.handle, true)
    main1()
    main2()
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
    log.info('main函数执行完毕')
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

	-- ExecuteFunc("s__ModSpeed_Init___onInit")

	ExecuteFunc("s__YDWEStringFormula__ItemIdMatrix_onInit")
	ExecuteFunc("s__YDWEStringFormula__FormulaMatrix_onInit")
end
