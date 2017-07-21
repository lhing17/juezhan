
#include "library/common_func.j"
#include "library/UniMissileSystem.j"

#include "game_logic/GameLogic.j"
#include "game_logic/GameDetail.j"
#include "game_logic/Equipment.j"
#include "game_logic/Instances.j"
#include "game_logic/Experiences.j"
#include "game_logic/Tasks.j"

#include "systems/ElixirSystem.j"
#include "systems/Vip.j"

#include "test/najitest.j"
#include "test/KeyInput.j"
#include "TaoHuaDao.j"

// 包含门派库
#include "denomination/ShaoLin.j"
#include "denomination/GaiBang.j"
#include "denomination/XueDao.j"
#include "denomination/EMei.j"
#include "denomination/WuDang.j"
#include "denomination/HuaShan.j"
#include "denomination/XingXiu.j"
#include "denomination/GuMu.j"
#include "denomination/HengShan.j"
#include "denomination/HengShan2.j"
#include "denomination/LingJiuGong.j"
#include "denomination/MuRongJia.j"
#include "denomination/VIPMingJiao.j"
#include "denomination/ShenLong.j"
#include "denomination/QuanZhen.j"
#include "denomination/TieZhang.j"
#include "denomination/TaiShan.j"

#include "denomination/JiangHuWuGong.j"
#include "denomination/JueShiWuGong.j"
#include "denomination/JiangHuNeiGong.j"


#include "TiaoZhan.j"
#include "ZiZhiWuGong.j"
#include "ZhenFa.j"
#include "QiWu.j"

#include "monster_come/monster_come.j"
#include "zhangmen_skill/zhangmen_skill.j"
#include "smelt_weapon/smelt_weapon.j"
#include "CreateDestructables.j"
#include "CreateUnitsAndInitEnvironments.j"



#include "InitialSave.j"



globals
	item yd_NullTempItem
	//group yd_NullTempGroup
	unit w=null
	unit z=null
	unit A=null
	unitpool B=null
	item C=null
	itempool D=null
	real H=0
	real I=0
	real l=0
	real J=0

	unit udg_sixiangdanwei=null
	unit udg_xuezhandanwei=null
	unit udg_fanweidanwei=null
	unit udg_fomiedanwei=null
	unit udg_yechadanwei=null
	unit udg_miejuedanwei=null
	integer array wugongshu
	integer array udg_whichzhangmen
	integer array udg_zhemei
	boolean array udg_zhangmen
	boolean array chilian
	integer udg_tiebushancengshu=0
	integer udg_nandu=0

	boolean udg_shifoufomie=false
	boolean udg_teshushijian=false
	boolean udg_shengchun=false
	boolean udg_yunyangxianshen=false
	boolean udg_sutong = false
	boolean taohuakai=false
	dialog udg_index=null
	button udg_index0=null
	button udg_index1=null
	button udg_index2=null
	button udg_index3=null
	button udg_index4=null
	dialog udg_nan=null
	button udg_nan0=null
	button udg_nan1=null
	button udg_nan2=null
	button udg_nan3=null
	button udg_nan4=null
	button udg_nan5=null
	integer udg_gudongA=0
	integer udg_gudongB=0
	integer udg_gudongC=0
	integer udg_gudongD=0
	integer array udg_xinggeA
	integer array udg_xinggeB
	integer array udg_vip
	integer array udg_changevip
	integer array udg_elevenvip
	integer array udg_jianghu
	integer array udg_juexue
	integer array udg_juenei
	integer array udg_canzhang
	integer array udg_diershi
	integer array aidacishu
	integer array udg_wuqishu
	integer array udg_yifushu
	trigger array K
	integer array L
	integer M=0
	integer O=16
	integer array P
	integer array Q
	integer array S
	integer array T
	integer U=1752196449
	integer array V
	boolean W=true
	integer array X
	integer array Y
	integer array udg_shuxing
	force Z
	item d4
	group e4
	group udg_shanghaidanweizu=null
	trigger f4=null
	trigger array g4
	integer h4=0
	item i4=null
	trigger array k4
	integer m4=0
	region nn4
	constant timer o4=CreateTimer()
	integer p4
	integer q4
	integer r4
	integer s4
	integer t4
	integer array u4
	integer array v4
	integer array w4
	trigger array x4
	integer array qiuhun
	integer array zhaoyangguo
	integer array linganran
	integer array touxiao
	integer array bihai
	trigger y4
	trigger z4
	trigger A4
	trigger a4
	trigger B4
	trigger b4
	timer C4
	integer c4
	integer D4=0
	integer array juexuelingwu
	real array udg_baojishanghai
	real array udg_baojilv
	real array shanghaihuifu
	real array shaguaihufui
	real array shengminghuifu
	real array falihuifu
	real array udg_lilianxishu
	location udg_loc1=null
	unit array K4
	unit array L4
	boolean array udg_hashero
	boolean array udg_baoji
	boolean array udg_yiwang
	unit array udg_hero
	integer O4=0
	unit array P4
	location Q4=null
	dialog array R4
	button array S4
	button array T4
	button array U4
	button array V4
	button array W4
	button array X4
	integer array Y4
	integer array wuxing
	integer array jingmai
	integer array gengu
	integer array fuyuan
	integer array danpo
	integer array yishu
	group i7=null
	integer array udg_runamen
	integer k7=0
	location array m7
	integer nn7=0
	integer o7=0
	integer udg_counter1=0
	integer array q7
	unit array r7
	integer s7=0
	integer udg_boshu=0
	integer array u7
	location array v7
	group w7=null
	integer x7 = 0
	integer array y7
	timerdialog array z7
	timer array A7
	boolean ShiFouShuaGuai=false
	integer B7=0
	unit array b7
	unit array C7
	integer c7=0
	real array D7
	effect array E7
	integer array F7
	integer array G7
	integer H7=0
	integer array I7
	button array l7
	button array J7
	button array J78
	button array J79
	button array J710
	button array J711
	dialog array K7
	dialog udg_menpaineigong
	integer array L7
	integer MM7=0
	integer N7=0
	integer array O7
	integer array P7
	timer array udg_revivetimer
	timerdialog array R7
	integer array S7
	real T7=0
	real U7=0
	real array udg_MaxDamage
	string array udg_menpainame
	integer array X7
	integer array Y7
	integer array Z7
	integer array d8
	integer array e8
	integer array shengwang
	integer array g8
	integer array h8
	integer array i8
	integer array j8
	unit array k8
	unit array udg_boss
	boolean array m8
	boolean array o8
	unit array p8
	integer array q8
	unit array r8
	player s8=null
	boolean t8=false
	integer array yongdanshu
	dialog array v8
	button array w8
	button array x8
	button array y8
	button array z8
	button array A8
	button array a8
	button array B8
	boolean array b8
	boolean array C8
	boolean array c8
	dialog array D8
	integer E8=0
	boolean array F8
	boolean array XNKL
	boolean array G8
	boolean array H8
	boolean array I8
	boolean array l8
	integer array J8
	integer array K8
	integer array xiuxing
	integer array MM8
	integer array N8
	integer array O8
	integer array P8
	integer array Q8
	integer array R8
	integer array S8
	integer array udg_blgg
	integer array udg_blwx
	integer array udg_bljm
	integer array udg_blfy
	integer array udg_bldp
	integer array udg_blys
	integer array udg_jdds
	integer array udg_ldds
	integer array udg_xbds
	integer array udg_bqds
	integer array udg_dzds
	integer array udg_jwjs
	boolean array udg_jddsbool
	boolean array udg_lddsbool
	boolean array udg_xbdsbool
	boolean array udg_bqdsbool
	boolean array udg_dzdsbool
	boolean array udg_jwjsbool
	boolean array udg_junzhu
	boolean array Z8
	boolean array d9
	boolean array e9
	timer array f9
	timerdialog array g9
	boolean array h9
	integer array i9
	group j9=null
	group k9=null
	real m9=0
	real n9=0
	location array o9
	integer p9=0
	unit array q9
	group r9=null
	group s9=null
	location array t9
	integer u9=0
	boolean array v9
	boolean array w9
	boolean array x9
	boolean array y9
	integer array z9
	integer array A9
	item array a9
	location array B9
	unit array b9
	unit C9=null
	location c9=null
	unit D9=null
	lightning array E9
	integer F9=0
	integer array G9
	integer array H9
	integer array I9
	integer array l9
	integer array udg_baolv
	unit array J9
	unit array qiankun2hao
	unit array qiankun3hao
	real array udg_shanghaijiacheng
	real array udg_shanghaixishou
	integer array MM9
	real array udg_jueneishxs
	real array udg_jueneishjc
	integer array udg_jueneiminjie
	integer array udg_jueneijxlw
	real array udg_jueneibaojilv
	integer S9=0
	boolean array T9
	integer array LLguaiA
	integer array LLguaiE
	integer array LLguaiB
	integer array LLguaiC
	integer array LLguaiD
	integer array LLguaiF
	integer array LLguaiG
	timer array Z9
	timerdialog array dd
	boolean array ed
	timer array fd
	timerdialog array gd
	boolean hd=false
	integer array jd
	integer array kd
	integer array gudong
	integer array nd
	integer array od
	integer array pd
	integer array qd
	integer array rd
	integer array ud
	effect array vd
	integer array wugongxiuwei
	integer array xd
	integer array yd
	integer zd=0
	boolean array Ad
	integer ad=0
	boolean array Bd
	unit array bd
	integer array Cd
	boolean array cd
	integer array Dd
	integer array Ed
	group array Fd
	real array Gd
	timer array Hd
	integer array Id
	integer array ld
	integer array Jd
	integer array JYd //九阳残卷
	integer array Kd
	integer array Ld
	integer array Md
	integer array Nd
	integer array Od
	integer array Pd
	integer array Qd
	boolean array Rd
	integer array Sd
	integer array Td
	integer array Ud
	integer array Vd
	integer array Wd
	integer array jiuazi
	integer Xd=0
	integer Yd=0
	integer Zd=0
	boolean de=false
	texttag array ee
	integer array shoujiajf
	boolean array ge
	boolean array he
	integer ie=0
	dialog array je
	button array ke
	button array me
	button array ne
	button array oe
	button array pe
	button array qe
	button array re
	button array rre
	button array re9
	button array re10
	button array re11
	button array se
	integer array te
	integer ue=5
	integer array ve
	integer array xe
	integer array ye
	integer array ze
	integer array Ae
	integer ae=0
	integer array YaoCao
	integer array ShiPin
	integer array ZhuangBei
	integer array Ce
	integer array ce
	boolean array De
	boolean array Ee
	group Fe=null
	rect udg_jail=null
	rect udg_yizhan=null
	rect udg_xuanmenpai=null
	rect udg_tiaozhanqu=null
	rect Ge=null
	rect He=null
	rect Ie=null
	rect le=null
	rect Je=null
	rect Ke=null
	rect Le=null
	rect Me=null
	rect Ne=null
	rect Oe=null
	rect Pe=null
	rect botong=null
	rect Qe=null
	rect Re=null
	rect Se=null
	rect Te=null
	rect Ue=null
	rect Ve=null
	rect We=null
	rect Xe=null
	rect Ye=null
	rect Ze=null
	rect df=null
	rect lh_r=null
	rect ef=null
	rect ff=null
	rect gf=null
	rect hf=null
	rect jf=null
	rect kf=null
	rect mf=null
	rect nf=null
	rect of=null
	rect pf=null
	rect qf=null
	rect rf=null
	rect sf=null
	rect tf=null
	rect uf=null
	rect vf=null
	rect wf=null
	rect xf=null
	rect yf=null
	rect zf=null
	rect Af=null
	rect af=null
	rect Bf=null
	rect bf=null
	rect Cf=null
	rect cf=null
	rect Df=null
	rect Ef=null
	rect Ff=null
	rect Gf=null
	rect Hf=null
	rect If=null
	rect lf=null
	rect Jf=null
	rect Kf=null
	rect Lf=null
	rect Mf=null
	rect Nf=null
	rect Of=null
	rect Pf=null
	rect Qf=null
	rect Rf=null
	rect Sf=null
	rect Tf=null
	rect Uf=null
	rect Vf=null
	rect Wf=null
	rect Xf=null
	rect Yf=null
	rect Zf=null
	rect dg=null
	rect eg=null
	rect fg=null
	rect gg=null
	rect hg=null
	rect ig=null
	rect jg=null
	rect kg=null
	rect mg=null
	rect ng=null
	rect og=null
	rect pg=null
	rect qg=null
	rect rg=null
	rect sg=null
	rect tg=null
	rect ug=null
	rect vg=null
	rect wg=null
	rect xg=null
	rect yg=null
	rect zg=null
	rect Ag=null
	rect ag=null
	rect Bg=null
	rect bg=null
	rect Cg=null
	rect cg=null
	rect Dg=null
	rect Eg=null
	rect Fg=null
	rect Gg=null
	rect Hg=null
	rect Ig=null
	rect lg=null
	rect Jg=null
	rect Kg=null
	rect Lg=null
	rect Mg=null
	rect Ng=null
	rect Og=null
	rect Pg=null
	rect Qg=null
	rect Rg=null
	rect Sg=null
	rect Ug=null
	rect Vg=null
	rect Wg=null
	rect Xg=null
	rect Yg=null
	rect Zg=null
	rect dh=null
	rect eh=null
	rect fh=null
	rect gh=null
	rect hh=null
	rect udg_liuqiu=null
	rect jh=null
	rect kh=null
	rect mh=null
	rect nh=null
	rect oh=null
	rect ph=null
	rect qh=null
	rect rh=null
	rect sh=null
	rect th=null
	rect uh=null
	rect vh=null
	sound wh=null
	string xh="war3mapImported\\yanmenguanqian4.mp3"
	string yh="war3mapImported\\wulindahui3.mp3"
	string zh="Sound\\Music\\mp3Music\\War2IntroMusic.mp3"
	sound Ah=null
	sound ah=null
	sound Bh=null
	sound bh=null
	sound Ch=null
	sound Dh=null
	sound Eh=null
	sound Fh=null
	sound Gh=null
	sound Hh=null
	sound Ih=null
	trigger lh=null
	trigger Jh=null
	trigger Kh=null
	trigger Lh=null
	trigger Mh=null
	trigger Nh=null
	trigger Oh=null
	trigger Ph=null
	trigger Qh=null
	trigger Rh=null
	trigger Sh=null
	trigger Th=null
	trigger Uh=null
	trigger Vh=null
	trigger Wh=null
	trigger Xh=null
	trigger Yh=null
	trigger Zh=null
	trigger di=null
	trigger ei=null
	trigger fi=null
	trigger gi=null
	trigger hi=null
	trigger ii=null
	trigger ji=null
	trigger ki=null
	trigger mi=null
	trigger ni=null
	trigger oi=null
	trigger pi=null
	trigger ri=null
	trigger si=null
	trigger ti=null
	trigger ui=null
	trigger vi=null
	trigger wi=null
	trigger xi=null
	trigger yi=null
	trigger zi=null
	trigger Ai=null
	trigger ai=null
	trigger Bi=null
	trigger bi=null
	trigger Ci=null
	trigger ci=null
	trigger Di=null
	trigger Ei=null
	trigger Fi=null
	trigger Gi=null
	trigger Hi=null
	trigger Ii=null
	trigger li=null
	trigger Ji=null
	trigger Ki=null
	trigger Li=null
	trigger Mi=null
	trigger Ni=null
	trigger Oi=null
	trigger Pi=null
	trigger Qi=null
	trigger Ri=null
	trigger Si=null
	trigger Ti=null
	trigger Ui=null
	trigger Vi=null
	trigger Wi=null
	trigger Xi=null
	trigger Yi=null
	trigger Zi=null
	trigger dj=null
	trigger ej=null
	trigger fj=null
	trigger gj=null
	trigger hj=null
	trigger ij=null
	trigger jj=null
	trigger kj=null
	trigger mj=null
	trigger nj=null
	trigger oj=null
	trigger pj=null
	trigger qj=null
	trigger rj=null
	trigger sj=null
	trigger tj=null
	trigger uj=null
	trigger vj=null
	trigger wj=null
	trigger xj=null
	trigger yj=null
	trigger zj=null
	trigger Aj=null
	trigger aj=null
	trigger Bj=null
	trigger bj=null
	trigger Cj=null
	trigger cj=null
	trigger Dj=null
	trigger Ej=null
	trigger Fj=null
	trigger Gj=null
	trigger Hj=null
	trigger Ij=null
	trigger lj=null
	trigger Jj=null
	trigger Kj=null
	trigger Lj=null
	trigger Mj=null
	trigger Nj=null
	trigger Oj=null
	trigger Pj=null
	trigger Qj=null
	trigger Rj=null
	trigger Sj=null
	trigger Tj=null
	trigger Uj=null
	trigger Vj=null
	trigger Wj=null
	trigger Xj=null
	trigger Yj=null
	trigger Zj=null
	trigger dk=null
	trigger ek=null
	trigger fk=null
	trigger gk=null
	trigger hk=null
	trigger ik=null
	trigger jk=null
	trigger kk=null
	trigger mk=null
	trigger nk=null
	trigger ok=null
	trigger pk=null
	trigger qk=null
	trigger rk=null
	trigger sk=null
	trigger tk=null
	trigger uk=null
	trigger vk=null
	trigger wk=null
	trigger xk=null
	trigger yk=null
	trigger zk=null
	trigger Ak=null
	trigger ak=null
	trigger Bk=null
	trigger bk=null
	trigger Ck=null
	trigger ck=null
	trigger Dk=null
	trigger Ek=null
	trigger Fk=null
	trigger Gk=null
	trigger Hk=null
	trigger Ik=null
	trigger lk=null
	trigger Jk=null
	trigger Kk=null
	trigger Lk=null
	trigger Mk=null
	trigger Nk=null
	trigger Ok=null
	trigger Pk=null
	trigger Qk=null
	trigger Rk=null
	trigger Sk=null
	trigger Tk=null
	trigger Uk=null
	trigger Vk=null
	trigger Wk=null
	trigger Xk=null
	trigger Yk=null
	trigger Zk=null
	trigger dm=null
	trigger em=null
	trigger fm=null
	trigger gm=null
	trigger hm=null
	trigger im=null
	trigger jm=null
	trigger km=null
	trigger mm=null
	trigger nm=null
	trigger om=null
	trigger pm=null
	trigger qm=null
	trigger rm=null
	trigger sm=null
	trigger um=null
	trigger vm=null
	trigger wm=null
	trigger xm=null
	trigger ym=null
	trigger zm=null
	trigger Am=null
	trigger am=null
	trigger Bm=null
	trigger bm=null
	trigger Cm=null
	trigger cm=null
	trigger Dm=null
	trigger Em=null
	trigger Fm=null
	trigger Gm=null
	trigger Hm=null
	trigger Im=null
	trigger lm=null
	trigger Jm=null
	trigger Km=null
	trigger Lm=null
	trigger Mm=null
	trigger Nm=null
	trigger Om=null
	trigger Pm=null
	trigger Qm=null
	trigger Rm=null
	trigger Sm=null
	trigger Tm=null
	trigger Um=null
	trigger Vm=null
	trigger Wm=null
	trigger Xm=null
	trigger Ym=null
	trigger Zm=null
	trigger dn=null
	trigger en=null
	trigger fn=null
	trigger gn=null
	trigger hn=null
	trigger in=null
	trigger jn=null
	trigger kn=null
	trigger mn=null
	trigger nn=null
	trigger on=null
	trigger pn=null
	trigger qn=null
	trigger sn=null
	trigger tn=null
	trigger un=null
	trigger vn=null
	trigger wn=null
	trigger xn=null
	trigger yn=null
	trigger zn=null
	trigger An=null
	trigger an=null
	trigger Bn=null
	trigger bn=null
	trigger Cn=null
	trigger cn=null
	trigger Dn=null
	trigger En=null
	trigger Fn=null
	trigger Gn=null
	trigger Hn=null
	trigger In=null
	trigger Jn=null
	trigger Kn=null
	trigger Ln=null
	trigger Mn=null
	trigger Nn=null
	trigger On=null
	trigger Pn=null
	trigger Qn=null
	trigger Rn=null
	trigger Sn=null
	trigger Tn=null
	trigger Un=null
	trigger Vn=null
	trigger Wn=null
	trigger Xn=null
	trigger Yn=null
	trigger Zn=null
	trigger do=null
	trigger eo=null
	trigger fo=null
	trigger go=null
	trigger ho=null
	trigger io=null
	trigger jo=null
	trigger ko=null
	trigger mo=null
	trigger no=null
	trigger oo=null
	trigger po=null
	trigger qo=null
	trigger ro=null
	trigger so=null
	trigger to=null
	trigger uo=null
	trigger vo=null
	trigger wo=null
	trigger xo=null
	trigger yo=null
	trigger zo=null
	trigger Ao=null
	trigger ao=null
	trigger Bo=null
	trigger bo=null
	trigger Co=null
	trigger co=null
	trigger Do=null
	trigger Eo=null
	trigger Fo=null
	trigger Go=null
	trigger Ho=null
	trigger Io=null
	trigger lo=null
	trigger Jo=null
	trigger Ko=null
	trigger Lo=null
	trigger Mo=null
	trigger No=null
	trigger Oo=null
	trigger Po=null
	trigger Qo=null
	trigger Ro=null
	trigger So=null
	trigger To=null
	trigger Uo=null
	trigger Vo=null
	trigger Wo=null
	trigger Yo=null
	trigger Zo=null
	trigger dp=null
	trigger ep=null
	trigger fp=null
	trigger gp=null
	trigger hp=null
	trigger jp=null
	trigger kp=null
	trigger mp=null
	trigger np=null
	trigger op=null
	trigger pp=null
	trigger qp=null
	trigger sp=null
	trigger tp=null
	trigger vp=null
	trigger wp=null
	trigger xp=null
	trigger yp=null
	trigger zp=null
	trigger Ap=null
	trigger ap=null
	trigger Bp=null
	trigger bp=null
	trigger Cp=null
	trigger cp=null
	trigger Dp=null
	trigger Ep=null
	trigger Fp=null
	trigger Gp=null
	trigger Hp=null
	trigger Ip=null
	trigger lp=null
	trigger Jp=null
	trigger Kp=null
	trigger Lp=null
	trigger Mp=null
	trigger Np=null
	trigger Op=null
	trigger Pp=null
	trigger Qp=null
	trigger Rp=null
	trigger Sp=null
	trigger Tp=null
	trigger Up=null
	trigger Vp=null
	trigger Wp=null
	trigger Xp=null
	trigger Yp=null
	trigger Zp=null
	trigger dq=null
	trigger eq=null
	trigger fq=null
	trigger gq=null
	trigger hq=null
	trigger iq=null
	trigger jq=null
	trigger kq=null
	trigger mq=null
	trigger nq=null
	trigger oq=null
	trigger pq=null
	trigger qq=null
	trigger rq=null
	trigger sq=null
	trigger tq=null
	trigger uq=null
	trigger vq=null
	trigger xq=null
	trigger yq=null
	trigger zq=null
	trigger Aq=null
	trigger aq=null
	trigger Bq=null
	trigger bq=null
	trigger Cq=null
	trigger cq=null
	trigger Dq=null
	trigger Eq=null
	trigger Fq=null
	trigger Gq=null
	trigger Hq=null
	trigger Iq=null
	trigger lq=null
	trigger Jq=null
	trigger Kq=null
	trigger Lq=null
	trigger Mq=null
	trigger Nq=null
	trigger Oq=null
	trigger Pq=null
	trigger Qq=null
	trigger Rq=null
	trigger Sq=null
	trigger Tq=null
	trigger Uq=null
	trigger Wq=null
	trigger Xq=null
	trigger Yq=null
	trigger Zq=null
	trigger dr=null
	trigger er=null
	trigger fr=null
	trigger gr=null
	trigger hr=null
	trigger ir=null
	trigger jr=null
	trigger kr=null
	trigger mr=null
	trigger nr=null
	trigger pr=null
	trigger qr=null
	trigger rr=null
	trigger sr=null
	trigger tr=null
	trigger ur=null
	trigger vr=null
	trigger wr=null
	trigger xr=null
	trigger yr=null
	trigger zr=null
	trigger Ar=null
	trigger ar=null
	trigger Br=null
	trigger br=null
	trigger Cr=null
	trigger cr=null
	trigger Dr=null
	trigger Er=null
	trigger Fr=null
	trigger Gr=null
	trigger Hr=null
	trigger Ir=null
	trigger lr=null
	trigger Jr=null
	trigger Kr=null
	trigger Lr=null
	trigger Mr=null
	trigger Nr=null
	trigger Pr=null
	trigger Qr=null
	trigger Rr=null
	trigger Sr=null
	trigger Tr=null
	trigger Ur=null
	trigger Vr=null
	trigger Wr=null
	trigger Xr=null
	trigger Yr=null
	trigger Zr=null
	trigger ds=null
	trigger es=null
	trigger fs=null
	trigger gs=null
	trigger hs=null
	trigger is=null
	trigger js=null
	trigger ks=null
	trigger ms=null
	trigger ns=null
	trigger os=null
	trigger ps=null
	trigger qs=null
	trigger rs=null
	trigger ss=null
	trigger ts=null
	trigger us=null
	trigger vs=null
	trigger ws=null
	trigger xs=null
	trigger ys=null
	trigger zs=null
	trigger As=null
	trigger as=null
	trigger Bs=null
	trigger Cs=null
	trigger cs=null
	trigger Ds=null
	trigger Es=null
	trigger Fs=null
	trigger Gs=null
	trigger Hs=null
	trigger Is=null
	trigger ls=null
	trigger Js=null
	trigger Ks=null
	unit Ls=null
	unit udg_ZhengPaiWL=null
	unit Ns=null
	unit Os=null
	unit Ps=null
	unit Qs=null
	unit Rs=null
	unit LanXin = null
	unit XuanJin = null
	unit Ss=null
	unit Ts=null
	unit Us=null
	unit Vs=null
	unit Ws=null
	unit Xs=null
	unit Ys=null
	unit Zs=null
	unit ft=null
	unit gt=null
	unit ht=null
	unit jt=null
	unit kt=null
	unit nt=null
	unit ot=null
	unit ut=null
	unit vt=null
	unit xt=null
	unit yt=null
	unit zt=null
	unit At=null
	unit Bt=null
	unit Ct=null
	unit ct=null
	unit Dt=null
	unit Et=null
	unit Ft=null
	destructable Gt=null
	trigger Ht=null
	trigger It=null
	trigger Jt=null
	integer Kt=0
	integer Lt=0
	integer array Mt
	integer array Nt
	integer Ot=0
	unit array Pt
	unit array Qt
	real array Rt
	real array St
	real array Tt
	real array Ut
	real array Vt
	real array Wt
	real array Xt
	real array Yt
	real array Zt
	real fu=.0
	real gu=.0
	boolexpr ju=null
endglobals






//刚进入地图
function Zw takes nothing returns nothing
	call FogEnableOff()
	call FogMaskEnableOff()
	call SetCreepCampFilterState(false)
	call jw(false)
	call SetPlayerAllianceStateBJ(Player(12),Player(6),3)
	call SetPlayerHandicapXP(Player(0),.43)
	call SetPlayerHandicapXP(Player(1),.43)
	call SetPlayerHandicapXP(Player(2),.43)
	call SetPlayerHandicapXP(Player(3),.43)
	call SetPlayerHandicapXP(Player(4),.43)
	call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE,1800.,.0)
	call PlayMusicBJ(xh)
	set K4[1]=Ls
	set K4[2]=Qs
	set K4[3]=Os
	set K4[4]=Ns
	set K4[5]=Ps
	set K4[6]=LanXin
	set K4[7]=XuanJin
	call GroupAddUnit(i7,Ls)
	call GroupAddUnit(i7,Ns)
	call GroupAddUnit(i7,Qs)
	call GroupAddUnit(i7,Os)
	call GroupAddUnit(i7,Ps)
	call GroupAddUnit(i7,LanXin)
	call GroupAddUnit(i7,XuanJin)
	set y7[1]=1969711215
	set y7[2]=1970498413
	set y7[3]=1852798821
	set y7[4]=1851879023
	set y7[5]=1852008562
	set y7[6]=1852273524
	set y7[7]=1969381742
	set y7[8]=1852466993
	set y7[9]=1869898354
	set y7[10]=1853320292
	set y7[11]=1852208244
	set y7[12]=1701077869
	set y7[13]=1751410807
	set y7[14]=1852076648
	set y7[15]=1970107511
	set y7[16]=1852990571
	set y7[17]=1852207714
	set y7[18]=1869898347
	set y7[19]=1853517677
	set y7[20]=1869311844
	set y7[21]=1852076404
	set y7[22]=1852076662
	set y7[23]=1852204908
	set y7[24]=1701013613
	set y7[25]=1853125236
	set y7[26]=1852601452
	set y7[27]=1702064246
	set y7[28]=1852403302
	set y7[29]='nbdk'
	set y7[30]='nhyd'
	set u7[1]='ncer'
	set u7[2]='nhea'
	set u7[3]='nlkl'
	set u7[4]='nele'
	set u7[5]='nenp'
	set u7[6]='nbda'
	set u7[7]='n002'
	set u7[8]='nbds'
	//call SetHeroLevel(gg_unit_N008_0054,99,true)
	call SetUnitLifePercentBJ(gg_unit_N007_0055,5)
	//call UnitAddAbility(gg_unit_N00F_0112,'A02Z')
	//call IssueTargetOrderById(gg_unit_N00F_0112, 852063, gg_unit_N007_0055)
	call AddSpecialEffectTargetUnitBJ("overhead",Ts,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Ft,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Ss,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",vt,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",ot,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",nt,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Et,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",ct,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",zt,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Ct,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",ut,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",xt,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",yt,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Dt,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",At,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",Bt,"Objects\\RandomObject\\RandomObject.mdl")
	call AddSpecialEffectTargetUnitBJ("overhead",gg_unit_N007_0055,"Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
	call CreateTextTagUnitBJ("点我加门派后可离开此地",Rs,.0,15.,100.,100.,.0,50.)
	call CreateTextTagLocBJ("决战江湖1.53名人榜",GetRectCenter(uh),100.,$A,100,100,.0,50.)
	set v7[1]=GetRectCenter(Ie)
	set v7[2]=GetRectCenter(le)
	set v7[3]=GetRectCenter(Je)
	set v7[4]=GetRectCenter(Ke)
	set v7[5]=GetRectCenter(Le)
	set v7[6]=GetRectCenter(Me)
	set v7[7]=GetRectCenter(Ne)
	set v7[8]=GetRectCenter(Oe)
	set v7[9]=GetRectCenter(Ge)
	set v7[$A]=GetRectCenter(Re)
	set v7[$B]=GetRectCenter(ff)
	set C7[1]=ft
	set C7[2]=gt
	set C7[3]=ht
	set C7[4]=jt
	set C7[5]=kt
	set b7[1]=Us
	set b7[2]=Zs
	set b7[3]=Ys
	set b7[4]=Xs
	set b7[5]=Ws
	call AdjustPlayerStateBJ($A,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
	call AdjustPlayerStateBJ($A,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
	call AdjustPlayerStateBJ($A,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
	call AdjustPlayerStateBJ($A,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
	call AdjustPlayerStateBJ($A,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
	call ChooseMoShi()
	call TaoHuaDaoKaiFang()
	set bj_forLoopAIndex = 0
	loop
		exitwhen bj_forLoopAIndex >= 5
		if GetPlayerController(Player(bj_forLoopAIndex))==MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex))==PLAYER_SLOT_STATE_PLAYING then
	        call SaveStr(YDHT,GetHandleId(Player(bj_forLoopAIndex)),GetHandleId(Player(bj_forLoopAIndex)),GetPlayerName(Player(bj_forLoopAIndex)))
	        call SaveStr(YDHT,GetHandleId(Player(bj_forLoopAIndex)),GetHandleId(Player(bj_forLoopAIndex))*2,GetPlayerName(Player(bj_forLoopAIndex)))
	    endif
		set bj_forLoopAIndex = bj_forLoopAIndex + 1
	endloop
	call YDWEPolledWaitNull(40.)
	call StartTimerBJ(A7[3],false,120.)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"邪教进攻倒计时：")
	call TimerDialogDisplay(bj_lastCreatedTimerDialog,true)
	set z7[3]=bj_lastCreatedTimerDialog
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000欢迎来到|cffff00de金庸群侠传之决战江湖1.53|r")
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000游戏初期您可以完成难度为一星到二星的任务来提升角色的能力，游戏前期金钱较匮乏，可以在守家积分商店使用积分兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎前往游戏专区论坛jzjhbbs.uuu9.com查看游戏攻略以及提出您的宝贵意见|R")
	call YDWEPolledWaitNull(40.)
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解，欢迎前往游戏专区论坛jzjhbbs.uuu9.com提出您的宝贵意见。游戏中的特殊玩法，请到NPC随风而逝de风处查看，在基地右侧|R")
	call YDWEPolledWaitNull(40.)
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000游戏里的相关指令\n按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n输入属性拼音首字母加数值如fy5：|cFFCCFF33增加相应点数的自由属性（福缘+5）|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n更多游戏帮助，请按F9打开任务面板进行查询")
	call YDWEPolledWaitNull(40.)
	call TriggerExecute(ss)
	set hd=true
endfunction

function InitFamouses takes nothing returns nothing
	set ve[1]=1328558411
	set xe[1]=400
	set ye[1]=20
	set ze[1]=600
	set ve[2]=1429221424
	set xe[2]=350
	set ye[2]=15
	set ze[2]=730
	set ve[3]=1160786002
	set xe[3]=260
	set ye[3]=12
	set ze[3]=540
	set ve[4]=1211117633
	set xe[4]=$FA
	set ye[4]=18
	set ze[4]=500
	set ve[5]=1328558412
	set xe[5]=310
	set ye[5]=16
	set ze[5]=750
	set ve[6]=1328558413
	set xe[6]=$DC
	set ye[6]=19
	set ze[6]=700
	set ve[7]=1328558414
	set xe[7]=340
	set ye[7]=17
	set ze[7]=640
	set ve[8]=1160786003
	set xe[8]=320
	set ye[8]=$A
	set ze[8]=780
	set ve[9]=1160786004
	set xe[9]=$C8
	set ye[9]=12
	set ze[9]=550
	set ve[10]=1311780913
	set xe[10]=380
	set ye[10]=$B
	set ze[10]=580
	set ve[11]=1328558415
	set xe[11]=280
	set ye[11]=$E
	set ze[11]=800
endfunction

function InitBosses takes nothing returns nothing
	set Ae[1]=1227896898
	set Ae[2]=1227896665
	set Ae[3]=1227896666
	set Ae[4]=1227896880
	set Ae[5]=1227896881
	set Ae[6]=1227896882
	set Ae[7]=1227896883
	set Ae[8]=1227896884
	set Ae[9]=1227896885
	set Ae[10]=1227896886
	set Ae[11]=1227896887
	set Ae[12]=1227896888
	set Ae[13]=1227896889
	set Ae[14]=1227896897
	set Ae[15]=1227896911
	set Ae[16]=1227896899
	set Ae[17]=1227896900
	set Ae[18]=1227896901
	set Ae[19]=1227896902
	set Ae[20]=1227896903
	set Ae[21]=1227896904
	set Ae[22]=1227896905
	set Ae[23]=1227896906
	set Ae[24]=1227896907
	set Ae[25]=1227896908
	set Ae[26]=1227896909
	set Ae[27]=1227896910
	set Ae[28]=1227896912
endfunction

function InitHerbs takes nothing returns nothing
	set YaoCao[1]='I07F'
	set YaoCao[2]='I07G'
	set YaoCao[3]='I07E'
	set YaoCao[4]='I076'
	set YaoCao[5]='I077'
	set YaoCao[6]='I078'
	set YaoCao[7]='I079'
	set YaoCao[8]='I07B'
	set YaoCao[9]='I07A'
	set YaoCao[10]='I07C'
	set YaoCao[11]='I07D'
	set YaoCao[12]='I07H'
endfunction

function InitEquipments takes nothing returns nothing
	//衣服清单
	set ZhuangBei[1]='I022'
	set ZhuangBei[2]='I01T'
	set ZhuangBei[3]='I01H'
	set ZhuangBei[4]='I01G'
	set ZhuangBei[5]='I017'
	set ZhuangBei[6]='I014'
	set ZhuangBei[7]='I01O'
	set ZhuangBei[8]='I04E'
	set ZhuangBei[9]='I09Z'
	set ZhuangBei[10]='I00O'
	set ZhuangBei[11]='I00F'
	set ZhuangBei[12]='I00G'
	set ZhuangBei[13]='I0AL'
	set ZhuangBei[14]='I090'
	//饰品清单
	//白字
	set ShiPin[1]='I023'
	set ShiPin[2]='I023'
	set ShiPin[3]='I01U'
	set ShiPin[4]='I01V'
	set ShiPin[5]='I01W'
	set ShiPin[6]='I01X'
	set ShiPin[7]='I01Y'
	set ShiPin[8]='I01Z'
	set ShiPin[9]='I01I'
	set ShiPin[10]='I01J'
	set ShiPin[11]='I01K'
	set ShiPin[12]='I015'
	set ShiPin[13]='I018'
	set ShiPin[14]='I019'
	set ShiPin[15]='I01A'
	set ShiPin[16]='I01B'
	set ShiPin[17]='I01C'
	set ShiPin[18]='I01D'
	//蓝字
	set ShiPin[19]='I01M'
	set ShiPin[20]='I011'
	set ShiPin[21]='I012'
	set ShiPin[22]='I01Q'
	set ShiPin[23]='I01R'
	set ShiPin[24]='I01O'
	set ShiPin[25]='I01P'
	set ShiPin[26]='I00Y'
	set ShiPin[27]='I00Z'
	set ShiPin[28]='I00R'
	set ShiPin[29]='I00S'
	set ShiPin[30]='I00T'
	set ShiPin[31]='I00U'
	set ShiPin[32]='I00V'
	set ShiPin[33]='I00W'
	//紫字
	set ShiPin[34]='I00H'
	set ShiPin[35]='I00I'
	set ShiPin[36]='I00J'
	set ShiPin[37]='I00K'
	set ShiPin[38]='I00L'
	set ShiPin[39]='I00M'
	set ShiPin[40]='I00N'
	//红字
	set ShiPin[41]='I08W'
	set ShiPin[42]='I08X'
	set ShiPin[43]='I08Y'
	set ShiPin[44]='I08Z'
endfunction

//门派武功
function InitDenominationSkills takes nothing returns nothing
	set udg_menpainame[1]="少林派"
	set X7[1]='A05G'
	set Z7[1]='A000'
	set Y7[1]='A05K'
	set Q8[1]='A05O'
	set P8[1]='S000'
	set udg_menpainame[2]="古墓派"
	set X7[2]='A09E'
	set Z7[2]='A09J'
	set Y7[2]='A09M'
	set Q8[2]='A09T'
	set P8[2]='A09U'
	set udg_menpainame[3]="丐帮"
	set X7[3]='A0C9'
	set Z7[3]='A0CB'
	set Y7[3]='A0C8'
	set Q8[3]='A0CA'
	set P8[3]='A0DI'
	set udg_menpainame[4]="华山派"
	set X7[4]='A08Y'
	set Z7[4]='A08W'
	set Y7[4]='A08X'
	set Q8[4]='A037'
	set P8[4]='A091'
	set udg_menpainame[5]="全真教"
	set X7[5]='A0CF'
	set Z7[5]='A0DA'
	set Y7[5]='A0CM'
	set Q8[5]='A0CH'
	set P8[5]='A0DE'
	set udg_menpainame[6]="血刀门"
	set X7[6]='A0CI'
	set Z7[6]='A0CJ'
	set Y7[6]='A0CN'
	set Q8[6]='A0CK'
	set P8[6]='A0DH'
	set udg_menpainame[7]="恒山派"
	set X7[7]='A021'
	set Z7[7]='A01Z'
	set Y7[7]='A0CD'
	set Q8[7]='A023'
	set P8[7]='A024'
	set udg_menpainame[8]="峨眉派"
	set X7[8]='A0C7'
	set Z7[8]='A0C2'
	set Y7[8]='A0C5'
	set Q8[8]='A0C4'
	set P8[8]='A0C6'
	set udg_menpainame[9]="武当派"
	set X7[9]='A04D'
	set Z7[9]='A08S'
	set Y7[9]='A08R'
	set Q8[9]='A08Q'
	set P8[9]='A08V'
	set udg_menpainame[10]="星宿派"
	set X7[10]='A0BP'
	set Z7[10]='A0BS'
	set Y7[10]='A0BQ'
	set Q8[10]='A0BT'
	set P8[10]='A0BV'
	set udg_menpainame[11]="自由门派"
	set X7[11]='AEfk'
	set Z7[11]='AEfk'
	set Y7[11]='AEfk'
	set Q8[11]='AEfk'
	set P8[11]='AEfk'
	set udg_menpainame[12]="灵鹫宫"
	set X7[12]='A02B'
	set Z7[12]='A02C'
	set Y7[12]='A02F'
	set Q8[12]='A02G'
	set P8[12]='A02H'
	set udg_menpainame[13]="姑苏慕容"
	set X7[13]='A02K'
	set Z7[13]='A0CC'
	set Y7[13]='A02M'
	set Q8[13]='A02V'
	set P8[13]='A02R'
	set udg_menpainame[14]="明教"
	set X7[14]='A030'
	set Z7[14]='A032'
	set Y7[14]='A06R'
	set Q8[14]='A034'
	set P8[14]='A07W'
	set udg_menpainame[15]="衡山派"
	set X7[15]='A04M'
	set Z7[15]='A04N'
	set Y7[15]='A04P'
	set Q8[15]='A026'
	set P8[15]='A04R'
	set udg_menpainame[16]="神龙教"
	set X7[16]='A04W'
	set Z7[16]='A04Z'
	set Y7[16]='A051'
	set Q8[16]='A057'
	set P8[16]='A059'
	set udg_menpainame[17]="神龙教"
	set X7[17]='A056'
	set Z7[17]='A054'
	set Y7[17]='A04X'
	set Q8[17]='A057'
	set P8[17]='A059'
	set udg_menpainame[18]="泰山派"
	set X7[18]='A08A'
	set Z7[18]='A08B'
	set Y7[18]='A08E'
	set Q8[18]='A08G'
	set P8[18]='A08H'
endfunction

function InitSkillBooks takes nothing returns nothing
	set udg_jianghu[1]='I03J'
	set udg_jianghu[2]='I03H'
	set udg_jianghu[3]='I02V'
	set udg_jianghu[4]='I02U'
	set udg_jianghu[5]='I03G'
	set udg_jianghu[6]='I02Z'
	set udg_jianghu[7]='I03I'
	set udg_jianghu[8]='I02X'
	set udg_jianghu[9]='I02Y'
	set udg_jianghu[10]='I03K'
	set udg_jianghu[11]='I03D'
	set udg_jianghu[12]='I03L'
	set udg_jianghu[13]='I030'
	set udg_jianghu[14]='I031'
	set udg_jianghu[15]='I03E'
	set udg_jianghu[16]='I033'
	set udg_jianghu[17]='I02W'
	set udg_jianghu[18]='I03F'

	set udg_juexue[1]='I039'
	set udg_juexue[2]='I034'
	set udg_juexue[3]='I038'
	set udg_juexue[4]='I037'
	set udg_juexue[5]='I03B'
	set udg_juexue[6]='I032'
	set udg_juexue[7]='I035'
	set udg_juexue[8]='I036'
	set udg_juexue[9]='I03C'
	set udg_juexue[10]='I03A'
	set udg_juenei[1]='I03S'
	set udg_juenei[2]='I03O'
	set udg_juenei[3]='I03T'
	set udg_juenei[4]='I03Q'
	set udg_juenei[5]='I03M'
	set udg_juenei[6]='I03P'
	set udg_juenei[7]='I03U'
	set udg_juenei[8]='I03R'

	set udg_canzhang[1]='I065'
	set udg_canzhang[2]='I061'
	set udg_canzhang[3]='I066'
	set udg_canzhang[4]='I064'
	set udg_canzhang[5]='I067'
	set udg_canzhang[6]='I062'
	set udg_canzhang[7]='I069'
	set udg_canzhang[8]='I060'
	set udg_canzhang[9]='I068'
	set udg_canzhang[10]='I063'
	set udg_canzhang[11]='I0CW'

	set udg_diershi[1]='I09E'
	set udg_diershi[2]='I09F'
	set udg_diershi[3]='I09G'
	set udg_diershi[4]='I09H'
	set udg_diershi[5]='I09I'
	set udg_diershi[6]='I09J'
	set udg_diershi[7]='I09K'
	set udg_diershi[8]='I09L'
	set udg_diershi[9]='I09M'
	set udg_diershi[10]='I09N'
endfunction

function InitKillingTaskCreatures takes nothing returns nothing
	//阳寿已尽任务怪
	set udg_yangshou[1]='odoc'
	set udg_yangshou[2]='orai'
	set udg_yangshou[3]='hsor'
	set udg_yangshou[4]='nbdw'
	set udg_yangshou[5]='ndrw'
	set udg_yangshou[6]='ndqs'
	set udg_yangshou[7]='nsqo'
	set udg_yangshou[8]='nhrr'
	set udg_yangshou[9]='nomg'
	set udg_yangshou[10]='nubw'
	set udg_yangshou[11]='nrzb'
	set udg_yangshou[12]='nfpu'
	set udg_yangshou[13]='ngh2'
	set udg_yangshou[14]='nfsp'
	set udg_yangshou[15]='nmgd'
	set udg_yangshou[16]='uktn'
	set udg_yangshou[17]='nsrh'
	set udg_yangshou[18]='hspt'
	set udg_yangshou[19]='n00D'
	set udg_yangshou[20]='Hmkg'
	set udg_yangshou[21]='nfpc'
endfunction

function InitGlobalVariables takes nothing returns nothing
	call InitFamouses() //初始化名门
	call InitBosses() //初始化BOSS
	call InitHerbs() //初始化草药
	call InitEquipments() //初始化装备
	call InitDenominationSkills() //初始化门派武功
	call InitSkillBooks() //初始化武功书
	call InitKillingTaskCreatures() //初始化阳寿已尽任务怪
endfunction




/*
 * 门派触发器
 */
function MenPai_Trigger takes nothing returns nothing
	call EMei_Trigger() //峨眉武功触发
	call GaiBang_Trigger() //丐帮武功触发
	call GuMu_Trigger() //古墓武功触发
	call HuaShan_Trigger() //华山武功触发
	 call HengShan_Trigger() //恒山武功触发
    call HengShan2_Trigger() //衡山武功触发
    call LingJiuGong_Trigger() //灵鹫宫武功触发
    call MuRongJia_Trigger() //慕容世家武功触发
	call QuanZhen_Trigger() //全真武功触发
	call ShaoLin_Trigger() //少林武功触发
	call ShenLong_Trigger() //神龙教武功触发
    call TieZhang_Trigger() //铁掌帮武功触发
    call TaiShan_Trigger() //泰山派武功触发
	call VIPMingJiao_Trigger() //明教武功触发
	call WuDang_Trigger() //武当武功触发
	call XueDao_Trigger() //血刀门武功触发
	call XingXiu_Trigger() //星宿武功触发
	
	call JiangHuNeiGong_Trigger() //江湖内功触发（含九阴、绝内）
	call JiangHuWuGong_Trigger() //江湖武功触发
	call JueShiWuGong_Trigger() //绝世武功触发
endfunction

//地图初始化
function main1 takes nothing returns nothing


	local trigger t
	local real life
	local integer itemID
	local integer i
	local integer cu
	local integer Du
	local version v
	local integer wu
	call MapStartCreateUnitsAndInitEnvironments() // 创建单位并初始化环境
	call ConfigureNeutralVictim()
	set ju=Filter(function bu)
	set filterIssueHauntOrderAtLocBJ=Filter(function IssueHauntOrderAtLocBJFilter)
	set filterEnumDestructablesInCircleBJ=Filter(function tu)
	set filterGetUnitsInRectOfPlayer=Filter(function GetUnitsInRectOfPlayerFilter)
	set filterGetUnitsOfTypeIdAll=Filter(function GetUnitsOfTypeIdAllFilter)
	set filterGetUnitsOfPlayerAndTypeId=Filter(function GetUnitsOfPlayerAndTypeIdFilter)
	set filterMeleeTrainedUnitIsHeroBJ=Filter(function MeleeTrainedUnitIsHeroBJFilter)
	set filterLivingPlayerUnitsOfTypeId=Filter(function LivingPlayerUnitsOfTypeIdFilter)
	
	set udg_baolv[1]=20
	set udg_baolv[2]=25
	set udg_baolv[3]=25
	set udg_baolv[4]=25
	set udg_baolv[5]=25
	set udg_baolv[6]=33
	set udg_baolv[7]=33
	set udg_baolv[8]=34
	set udg_baolv[9]=25
	set udg_baolv[10]=25
	set udg_baolv[11]=25
	set udg_baolv[12]=25
	set udg_baolv[13]=33
	set udg_baolv[14]=33
	set udg_baolv[15]=34
	set udg_baolv[16]=50
	set udg_baolv[17]=50
	set udg_baolv[18]=50
	set udg_baolv[19]=50
	set udg_baolv[20]=50
	set udg_baolv[21]=50
	set udg_baolv[22]=33
	set udg_baolv[23]=33
	set udg_baolv[24]=34

	set i=1
	loop
		exitwhen i>=6
		set udg_shuxing[i]=10
		set qiuhun[i]=0
		set zhaoyangguo[i]=0
		set linganran[i]=0
		set touxiao[i]=0
		set bihai[i]=0
		set aidacishu[i]=0
		set udg_wuqishu[i]=0
		set udg_yifushu[i]=0
		set i=i+1
	endloop
	set cu=0
	loop
	exitwhen cu==16
	set bj_FORCE_PLAYER[cu]=CreateForce()
	call ForceAddPlayer(bj_FORCE_PLAYER[cu],Player(cu))
	set cu=cu+1
	endloop
	set bj_FORCE_ALL_PLAYERS=CreateForce()
	call ForceEnumPlayers(bj_FORCE_ALL_PLAYERS,null)
	set bj_cineModePriorSpeed=GetGameSpeed()
	set bj_cineModePriorFogSetting=IsFogEnabled()
	set bj_cineModePriorMaskSetting=IsFogMaskEnabled()
	set cu=0
	loop
	exitwhen cu>=bj_MAX_QUEUED_TRIGGERS
	set bj_queuedExecTriggers[cu]=null
	set bj_queuedExecUseConds[cu]=false
	set cu=cu+1
	endloop
	set bj_isSinglePlayer=false
	set Du=0
	set cu=0
	loop
	exitwhen cu>=12
	if(GetPlayerController(Player(cu))==MAP_CONTROL_USER and GetPlayerSlotState(Player(cu))==PLAYER_SLOT_STATE_PLAYING)then
	set Du=Du+1
	endif
	set cu=cu+1
	endloop
	set bj_isSinglePlayer=(Du==1)
	set bj_rescueSound=CreateSoundFromLabel("Rescue",false,false,false,$2710,$2710)
	set bj_questDiscoveredSound=CreateSoundFromLabel("QuestNew",false,false,false,$2710,$2710)
	set bj_questUpdatedSound=CreateSoundFromLabel("QuestUpdate",false,false,false,$2710,$2710)
	set bj_questCompletedSound=CreateSoundFromLabel("QuestCompleted",false,false,false,$2710,$2710)
	set bj_questFailedSound=CreateSoundFromLabel("QuestFailed",false,false,false,$2710,$2710)
	set bj_questHintSound=CreateSoundFromLabel("Hint",false,false,false,$2710,$2710)
	set bj_questSecretSound=CreateSoundFromLabel("SecretFound",false,false,false,$2710,$2710)
	set bj_questItemAcquiredSound=CreateSoundFromLabel("ItemReward",false,false,false,$2710,$2710)
	set bj_questWarningSound=CreateSoundFromLabel("Warning",false,false,false,$2710,$2710)
	set bj_victoryDialogSound=CreateSoundFromLabel("QuestCompleted",false,false,false,$2710,$2710)
	set bj_defeatDialogSound=CreateSoundFromLabel("QuestFailed",false,false,false,$2710,$2710)
	call DelayedSuspendDecayCreate()
	set v=VersionGet()
	if(v==VERSION_REIGN_OF_CHAOS)then
	set bj_MELEE_MAX_TWINKED_HEROES=bj_MELEE_MAX_TWINKED_HEROES_V0
	else
	set bj_MELEE_MAX_TWINKED_HEROES=bj_MELEE_MAX_TWINKED_HEROES_V1
	endif
	call InitQueuedTriggers()
	call YDWEInitRescuableBehaviorBJNull()
	call InitDNCSounds()
	call InitMapRects()
	call InitSummonableCaps()
	set wu=0
	loop
	set bj_stockAllowedPermanent[wu]=false
	set bj_stockAllowedCharged[wu]=false
	set bj_stockAllowedArtifact[wu]=false
	set wu=wu+1
	exitwhen wu>$A
	endloop
	call SetAllItemTypeSlots($B)
	call SetAllUnitTypeSlots($B)
	set bj_stockUpdateTimer=CreateTimer()
	call TimerStart(bj_stockUpdateTimer,bj_STOCK_RESTOCK_INITIAL_DELAY,false,function au)
	set bj_stockItemPurchased=CreateTrigger()
	call TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased,Player(15),EVENT_PLAYER_UNIT_SELL_ITEM,null)
	call TriggerAddAction(bj_stockItemPurchased,function RemovePurchasedItem)
	call DetectGameStarted()
	call ExecuteFunc("Hu")
	call ExecuteFunc("SetCamera")
	call ExecuteFunc("mv")
	call ExecuteFunc("Pw")
	set i=0
	set i=0
	loop
		exitwhen(i>16)
		set udg_jdds[i] = 0
		set udg_jddsbool[i] = false
		set udg_ldds[i] = 0
		set udg_lddsbool[i] = false
		set udg_xbds[i] = 0
		set udg_xbdsbool[i] = false
		set udg_bqds[i] = 0
		set udg_bqdsbool[i] = false
		set udg_dzds[i] = 0
		set udg_dzdsbool[i] = false
		set udg_jwjs[i] = 0
		set udg_jwjsbool[i] = false
		set udg_junzhu[i] = false
		set juexuelingwu[i]=1
		set udg_baojishanghai[i]=1.5
		set udg_baojilv[i]=.03
		set shanghaihuifu[i]=100.
		set shaguaihufui[i]=200.
		set shengminghuifu[i]=0
		set falihuifu[i]=0
		set udg_lilianxishu[i]=1.
		set udg_hashero[i]=false
		set udg_baoji[i]=false
		set udg_yiwang[i]=false
		set R4[i]=DialogCreate()
		set Y4[i]=1
		set udg_xinggeA[i]=0
		set udg_xinggeB[i]=0
		set udg_vip[i]=0
		set udg_changevip[i]=0
		set udg_elevenvip[i]=0
		set chilian[i]=false
		set udg_zhangmen[i]=false
		set udg_whichzhangmen[i]=0
		set wugongshu[i]=8
		set udg_zhemei[i]=0
		set vipnum_1[i] = ""
		set vipnum_2[i] = "B"
		set vipnum_3[i] = "BB"
		set vipnum_4[i] = "BBB"
		set vipnum_5[i] = "BBBB"
		set vipnum_6[i] = "BBBBB"
		set wuxing[i]=9
		set jingmai[i]=9
		set gengu[i]=9
		set fuyuan[i]=9
		set danpo[i]=9
		set yishu[i]=9
		set udg_runamen[i]=0
		set D7[i]=0
		set F7[i]=0
		set G7[i]=0
		set K7[i]=DialogCreate()
		set L7[i]=0
		set O7[i]=0
		set P7[i]=0
		set udg_revivetimer[i]=CreateTimer()
		set S7[i]=0
		set udg_MaxDamage[i]=0
		set d8[i]=0
		set e8[i]=0
		set shengwang[i]=0
		set g8[i]=0
		set h8[i]=0
		set i8[i]=0
		set j8[i]=0
		set o8[i]=false
		set v8[i]=DialogCreate()
		set b8[i]=false
		set C8[i]=false
		set c8[i]=false
		set D8[i]=DialogCreate()
		set F8[i]=false
		set XNKL[i]=false
		set G8[i]=false
		set H8[i]=false
		set I8[i]=false
		set l8[i]=false
		set J8[i]=0
		set xiuxing[i]=0
		set MM8[i]=0
		set N8[i]=0
		set O8[i]=0
		set Z8[i]=false
		set d9[i]=false
		set e9[i]=false
		set f9[i]=CreateTimer()
		set h9[i]=false
		set i9[i]=0
		set v9[i]=false
		set w9[i]=false
		set x9[i]=false
		set y9[i]=false
		set z9[i]=0
		set A9[i]=0
		set G9[i]=0
		set H9[i]=0
		set I9[i]=0
		set l9[i]=0
		set udg_shanghaijiacheng[i]=.0
		set udg_shanghaixishou[i]=0
		set T9[i]=false
		set LLguaiA[i]=0
		set LLguaiE[i]=0
		set LLguaiB[i]=0
		set LLguaiC[i]=0
		set LLguaiD[i]=0
		set LLguaiF[i]=0
		set LLguaiG[i]=0
		set Z9[i]=CreateTimer()
		set ed[i]=false
		set fd[i]=CreateTimer()
		set jd[i]=0
		set kd[i]=0
		set qd[i]=0
		set rd[i]=0
		set ud[i]=0
		set wugongxiuwei[i]=0
		set xd[i]=0
		set yd[i]=0
		set Ad[i]=false
		set Bd[i]=false
		set Cd[i]=0
		set cd[i]=false
		set Dd[i]=0
		set Ed[i]=0
		set Fd[i]=CreateGroup()
		set Gd[i]=0
		set Id[i]=0
		set ld[i]=0
		set Jd[i]=0
		set Kd[i]=0
		set Ld[i]=0
		set Md[i]=0
		set Nd[i]=0
		set Od[i]=0
		set Pd[i]=0
		set Qd[i]=0
		set Rd[i]=false
		set Sd[i]=0
		set Td[i]=0
		set Ud[i]=0
		set Vd[i]=0
		set Wd[i]=0
		set jiuazi[i]=0
		set shoujiajf[i]=0
		set ge[i]=false
		set he[i]=false
		set je[i]=DialogCreate()
		set te[i]=0
		set Ce[i]=0
		set ce[i]=0
		set De[i]=false
		set Ee[i]=false
		set i=i+1
	endloop
	//set udg_menpaineigong=DialogCreate()
	set udg_index=DialogCreate()
	set udg_nan=DialogCreate()
	set i7=CreateGroup()
	set udg_shanghaidanweizu=CreateGroup()
	set udg_boshu=1
	set w7=CreateGroup()
	set i=0
	loop
		exitwhen(i>5)
		set A7[i]=CreateTimer()
		set i=i+1
	endloop
	set ShiFouShuaGuai=true
	set i=0
	loop
		exitwhen(i>100)
		set I7[i]='AEfk'
		set i=i+1
	endloop
	set i=0
	loop
		exitwhen(i>20)
		set udg_menpainame[i]="未加入"
		set X7[i]='AEfk'
		set Y7[i]='AEfk'
		set Z7[i]='AEfk'
		set P8[i]='AEfk'
		set Q8[i]='AEfk'
		set nd[i]=0
		set od[i]=0
		set i=i+1
	endloop
	set pd[1] = 2000
	set pd[2] = 2000
	set pd[3] = 2000
	set pd[4] = 5000
	set pd[5] = 5000
	set pd[6] = 5000
	set pd[7] = 15000
	set pd[8] = 15000
	set pd[9] = 15000
	set pd[10] = 500000

	set i=0
	loop
		exitwhen(i>$A)
		set m8[i]=false
		set q8[i]='crys'
		set yongdanshu[i]=0
		set i=i+1
	endloop
	set i=0
	loop
		exitwhen(i>$D)
		set udg_blgg[i]=0
		set udg_blwx[i]=0
		set udg_bljm[i]=0
		set udg_blfy[i]=0
		set udg_bldp[i]=0
		set udg_blys[i]=0
		set i=i+1
	endloop
	set j9=CreateGroup()
	set k9=CreateGroup()
	set r9=CreateGroup()
	set s9=CreateGroup()
	set i=0
	loop
		exitwhen(i>20)
		set udg_jueneishxs[i]=0
		set udg_jueneishjc[i]=0
		set udg_jueneiminjie[i]=0
		set udg_jueneijxlw[i]=0
		set udg_jueneibaojilv[i]=0
		set i=i+1
	endloop
	set i=0
	loop
		exitwhen(i>7)
		set Hd[i]=CreateTimer()
		set i=i+1
	endloop
	set i=0
	loop
		exitwhen(i>15)
		set xe[i]=0
		set ye[i]=0
		set ze[i]=0
		set i=i+1
	endloop
	set Fe=CreateGroup()
	//刚进入地图
	set lh=CreateTrigger()
	call TriggerRegisterTimerEventSingle(lh,.1)
	call TriggerAddAction(lh,function Zw)
		
	call InitGlobalVariables() //初始化全局变量

	
	call GameLogic_Trigger() // 游戏逻辑触发器
	call GameDetail_Trigger() // 游戏细节处理
	call VIP_Trigger() // VIP系统
	
	call InitTrig_ZhangMenSkill()
	
	call MenPai_Trigger() //门派触发器
    call ZiZhi_Trigger() //自制武器触发器
    call ZhenFa_Trigger() //阵法触发器
	call TiaoZhan_Trigger() //挑战场触发器
    call QiWu_Trigger() //奇武触发器
	call TaoHuaDao_Trigger() //桃花岛触发器
	call Instances_Trigger() //副本和任务系统
	call Experiences_Trigger() //历练系统
	call ElixirSystem_Trigger() //丹药系统
	call Tasks_Trigger() //任务系统 
	
	call KeyInputSystem() //键盘输入系统
	call SmeltingWeaponSystem()//决战江湖1.4之大辽金匠
	call MonsterCome() //决战江湖1.52之圣兽来了
	call CreateDestructables() //创建可破坏物
	call Cuns() //存储装备属性
	call CunVIPNum()
	call CunWuGongS() //存储武功
	call najitest() //纳吉的测试代码
endfunction
