
#include "library/common_func.j"
#include "library/UniMissileSystem.j"

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
#include "denomination/JiangHuWuGong.j"
#include "denomination/JueShiWuGong.j"
#include "denomination/JiangHuNeiGong.j"
#include "denomination/HengShan.j"
#include "denomination/HengShan2.j"
#include "denomination/LingJiuGong.j"
#include "denomination/MuRongJia.j"
#include "denomination/VIPMingJiao.j"
#include "denomination/ShenLong.j"
#include "denomination/QuanZhen.j"
#include "denomination/TieZhang.j"
#include "denomination/TaiShan.j"

#include "monster_come/monster_come.j"
#include "zhangmen_skill/zhangmen_skill.j"
#include "smelt_weapon/smelt_weapon.j"
#include "CreateDestructables.j"
#include "CreateUnitsAndInitEnvironments.j"
#include "Instances.j"
#include "Experiences.j"
#include "systems/ElixirSystem.j"

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


//基地保护机制
function IsJiDiBaoHu takes nothing returns boolean
	return (GetTriggerUnit() == udg_ZhengPaiWL) and GetEventDamage() > GetUnitState(udg_ZhengPaiWL, UNIT_STATE_MAX_LIFE) * 0.03
endfunction
function JiDiBaoHu takes nothing returns nothing
	call WuDi(udg_ZhengPaiWL)
	call SetUnitLifePercentBJ(udg_ZhengPaiWL, GetUnitLifePercent(udg_ZhengPaiWL) - 3.00)
endfunction
//云大救家
function Trig_YunDaXianShenConditions takes nothing returns boolean
    return ((GetTriggerUnit() == udg_ZhengPaiWL) and (GetUnitLifePercent(udg_ZhengPaiWL) <= 25.00) and (udg_yunyangxianshen == false))
endfunction
function Trig_YunDaXianShenActions takes nothing returns nothing
    set udg_yunyangxianshen = true
    call CreateNUnitsAtLoc( 1, 'Hblm', Player(5), OffsetLocation(GetUnitLoc(udg_ZhengPaiWL), 0, 200), 90.00 )
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cFFFF6600基地严重受创，云杨现身相助")
    call UnitApplyTimedLife( GetLastCreatedUnit(), 'BHwe', 20.00 )
    call UnitAddAbility( udg_ZhengPaiWL, 'Avul' )
    call YDWEPolledWaitNull(20.00)
    call UnitRemoveAbilityBJ( 'Avul', udg_ZhengPaiWL )
endfunction

//主机选择模式
function Trig_____________u_Func002C takes nothing returns boolean
    return(GetPlayerController(Player(0))==MAP_CONTROL_USER)and(GetPlayerSlotState(Player(0))==PLAYER_SLOT_STATE_PLAYING)
endfunction
function ChooseMoShi takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF40主机开始选择游戏模式")
    if(Trig_____________u_Func002C())then
        call DialogClear(udg_index)
        call DialogSetMessage(udg_index,"请选择游戏模式")
        set udg_index0=DialogAddButtonBJ(udg_index,"|cFF00CC00普通模式")
        set udg_index1=DialogAddButtonBJ(udg_index,"|cFFCC0066特殊事件模式")
        set udg_index2=DialogAddButtonBJ(udg_index,"|cFFFF6600生存模式")
        set udg_index3 = DialogAddButtonBJ(udg_index,"|cFF6600FF快速通关模式")
        call DialogDisplayBJ(true,udg_index,Player(0))
    endif
endfunction
function ChooseMoShi_Action takes nothing returns nothing
    if GetClickedButton()==udg_index0 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了普通模式")
        set udg_teshushijian=false
        set udg_shengchun=false
    endif
    if GetClickedButton()==udg_index1 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了特殊事件模式")
        set udg_teshushijian=true
        set udg_shengchun=false
    endif
    if GetClickedButton()==udg_index2 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了生存模式")
        set udg_teshushijian=false
        set udg_shengchun=true
    endif
    if GetClickedButton()==udg_index3 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了快速通关模式")
        set udg_teshushijian=false
        set udg_shengchun=false
        set udg_sutong = true
    endif
endfunction
//------轻功系统------//
globals
	effect array udg_JTX
endglobals
function Trig_ttConditions takes nothing returns boolean
    return ( GetSpellAbilityId() == 'A02U' ) and ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true )
endfunction

function qinggongxiaoshi takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT,GetHandleId(tm), 0)
	call DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u))+1])
	call PauseTimer(tm)
	call DestroyTimer(tm)
	set u = null
	set tm = null
endfunction

function Trig_ttActions takes nothing returns nothing
	local location d1 = GetUnitLoc(GetTriggerUnit())
	local location d2 = GetSpellTargetLoc()
	local real agi=I2R(GetHeroAgi(GetTriggerUnit(),false))
	local real jd=AngleBetweenPoints(d1, d2)
	local real distance=500+I2R(GetHeroStr(GetTriggerUnit(),false))/3
	local real velocity=48.027*Pow(agi,0.3131)
	local real lasttime=5.0
	local timer tm = CreateTimer()
	if velocity>1000 then
		set velocity=1000
	endif
	if distance>2000 then
		set distance=2000
	endif
	call SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功distance"), distance)
	if distance>DistanceBetweenPoints(d1,d2) then
		set distance=DistanceBetweenPoints(d1,d2)
	endif
	set lasttime=distance/velocity
	call SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功velocity"), velocity)
	call SaveUnitHandle(YDHT,GetHandleId(tm), 0, GetTriggerUnit())
	call SetUnitFacing( GetTriggerUnit(), jd)
	call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	set udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))+1]=AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
	call SetUnitAnimation( GetTriggerUnit(), "walk")
	call YDWEJumpTimer(GetTriggerUnit(),jd,distance,lasttime,0.03,100)

	call TimerStart(tm,lasttime,false,function qinggongxiaoshi)
	call RemoveLocation(d1)
	call RemoveLocation(d2)
	set d1=null
	set d2=null
	set tm=null
endfunction

//伤害测试桩
globals
	boolean ceshi = false
	real ceshizongshanghai
endglobals
function IsCeShiShangHai takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())=='I0B7'
endfunction
function CeShiJieShu takes nothing returns nothing
	local timer t = GetExpiredTimer()
	set ceshi = false
	call SetUnitOwner(gg_unit_N00I_0116, Player(5), true)
	call BJDebugMsg("|cff00ff00测试总伤害为"+R2S(ceshizongshanghai))
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
endfunction
function CeShiShangHai takes nothing returns nothing
	local timer t = CreateTimer()
	set ceshi = true
	set ceshizongshanghai = 0
	call BJDebugMsg(GetUnitName(gg_unit_N00I_0116))
	call SetUnitOwner(gg_unit_N00I_0116, Player(6), true)
	call TimerStart(t, 10, false, function CeShiJieShu)
	set t  = null
endfunction
function IsCalcShangHai takes nothing returns boolean
	return ceshi
endfunction
function CalcShangHai takes nothing returns nothing
	set ceshizongshanghai = ceshizongshanghai + GetEventDamage()
endfunction
//抽血术
function ChouXie_Condition takes nothing returns boolean
	return IsUnitInGroup(GetAttacker(), w7) and GetPlayerTechCountSimple('R001', Player(6))==50 and GetTriggerUnit()!=udg_ZhengPaiWL and GetUnitTypeId(GetTriggerUnit())!='Hblm' and GetUnitTypeId(GetTriggerUnit())!='o02F' and GetUnitTypeId(GetTriggerUnit())!='o02G'
endfunction
function ChouXie_Action takes nothing returns nothing
	if GetRandomInt(1, 100)<=20 then
		call SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit())-6.)
	endif
endfunction
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
	call CreateTextTagLocBJ("决战江湖1.52名人榜",GetRectCenter(uh),100.,$A,100,100,.0,50.)
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
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000欢迎来到|cffff00de金庸群侠传之决战江湖1.52|r")
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000游戏初期您可以完成难度为一星到二星的任务来提升角色的能力，游戏前期金钱较匮乏，可以在守家积分商店使用积分兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎前往游戏专区论坛jzjhbbs.uuu9.com查看游戏攻略以及提出您的宝贵意见|R")
	call YDWEPolledWaitNull(40.)
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解，欢迎前往游戏专区论坛jzjhbbs.uuu9.com提出您的宝贵意见。游戏中的特殊玩法，请到NPC随风而逝de风处查看，在基地右侧|R")
	call YDWEPolledWaitNull(40.)
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cfffff000游戏里的相关指令\n按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n输入属性拼音首字母加数值如fy5：|cFFCCFF33增加相应点数的自由属性（福缘+5）|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n更多游戏帮助，请按F9打开任务面板进行查询")
	call YDWEPolledWaitNull(40.)
	call TriggerExecute(ss)
	set hd=true
endfunction
//选择英雄
function fx takes nothing returns boolean
	return(((udg_hashero[(1+GetPlayerId(GetTriggerPlayer()))]==false)and(IsUnitInGroup(GetTriggerUnit(),i7))))
endfunction

function SelectHero takes nothing returns nothing
    local player p=GetTriggerPlayer()
    local integer i=1+GetPlayerId(p)
    local unit u=GetTriggerUnit()
    if(GetUnitTypeId(L4[i])==GetUnitTypeId(u))then
	    if u==K4[1] or u==K4[2] or u==K4[3] or u==K4[4] or u==K4[5] or (u==K4[6] and udg_vip[i] > 0) or (u==K4[7] and (udg_changevip[i]>0 or udg_vip[i] == 2)) then
        	set Q4=GetRandomLocInRect(Ge)
        	call CreateNUnitsAtLoc(1,GetUnitTypeId(u),p,Q4,bj_UNIT_FACING)
        	call PanCameraToTimedLocForPlayer(p,Q4,0)
    	endif
        if(u==K4[1])then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n")
            set wuxing[i]=wuxing[i]+5
            set fuyuan[i]=fuyuan[i]+2
            set yishu[i]=yishu[i]+3
            set udg_xinggeA[i]=GetRandomInt(1,3)
            set udg_xinggeB[i]=GetRandomInt(3,5)
            call RemoveUnit(K4[1])
	        call RemoveUnit(vipbanlv[i])
        elseif(u==K4[2])then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（男）|r\n")
            set wuxing[i]=(wuxing[i]+2)
            set gengu[i]=(gengu[i]+2)
            set danpo[i]=(danpo[i]+1)
            set fuyuan[i]=(fuyuan[i]+5)
            set udg_xinggeA[i]=GetRandomInt(2,4)
            set udg_xinggeB[i]=GetRandomInt(2,4)
            call RemoveUnit(K4[2])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[3]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00莫言|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（女）|r\n")
            set wuxing[i]=(wuxing[i]+2)
            set danpo[i]=(danpo[i]+5)
            set jingmai[i]=(jingmai[i]+1)
            set yishu[i]=(yishu[i]+2)
            set udg_xinggeA[i]=GetRandomInt(3,5)
            set udg_xinggeB[i]=GetRandomInt(1,3)
            call RemoveUnit(K4[3])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[4]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00浪云|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
            set gengu[i]=(gengu[i]+3)
            set jingmai[i]=(jingmai[i]+5)
            set yishu[i]=(yishu[i]+2)
            set udg_xinggeA[i]=GetRandomInt(2,4)
            set udg_xinggeB[i]=GetRandomInt(2,4)
            call RemoveUnit(K4[4])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[5]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00魔君|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
            set gengu[i]=(gengu[i]+5)
            set danpo[i]=(danpo[i]+2)
            set jingmai[i]=(jingmai[i]+3)
            set udg_xinggeA[i]=GetRandomInt(1,3)
            set udg_xinggeB[i]=GetRandomInt(3,5)
            call RemoveUnit(K4[5])
	        call RemoveUnit(vipbanlv[i])
        elseif (u==K4[6]) then
        	if udg_vip[i] <= 0 then
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"该角色为赞助游戏者特别制作，暂不对普通玩家开放")
	        else
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00兰馨|r\n请选择任意门派后开启江湖之旅|r\n")
	        	set gengu[i]=(gengu[i]+3)
            	set danpo[i]=(danpo[i]+3)
            	set jingmai[i]=(jingmai[i]+3)
            	set wuxing[i]=wuxing[i]+3
            	set yishu[i]=yishu[i]+3
            	set fuyuan[i]=fuyuan[i]+3
            	set udg_xinggeA[i]=GetRandomInt(3,5)
            	set udg_xinggeB[i]=GetRandomInt(3,5)
            	//call RemoveUnit(K4[6])
            	call RemoveUnit(vipbanlv[i])
        	endif
        elseif (u==K4[7]) then
        	if udg_vip[i] <= 1 and udg_changevip[i] <= 0 then
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"该角色为赞助游戏者特别制作，暂不对普通玩家开放")
	        else
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00瑾轩|r\n请选择任意门派后开启江湖之旅|r\n")
	        	set gengu[i]=(gengu[i]+3)
            	set danpo[i]=(danpo[i]+3)
            	set jingmai[i]=(jingmai[i]+3)
            	set wuxing[i]=wuxing[i]+3
            	set yishu[i]=yishu[i]+3
            	set fuyuan[i]=fuyuan[i]+3
            	set udg_xinggeA[i]=GetRandomInt(3,5)
            	set udg_xinggeB[i]=GetRandomInt(3,5)
            	//call RemoveUnit(K4[6])
            	call RemoveUnit(vipbanlv[i])
        	endif
        endif
        if u==K4[1] or u==K4[2] or u==K4[3] or u==K4[4] or u==K4[5] or (u==K4[6] and udg_vip[i] > 0)  or (u==K4[7] and (udg_changevip[i]>0 or udg_vip[i] == 2))  then
        	call SelectUnitRemoveForPlayer(u,p)
        	call SelectUnitAddForPlayer(bj_lastCreatedUnit,p)
        	set udg_hashero[i]=true
        	call AddSpecialEffectTargetUnitBJ("overhead",bj_lastCreatedUnit,"Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
        	call DestroyEffect(bj_lastCreatedEffect)
        	set udg_hero[i]=bj_lastCreatedUnit
        	set O4=(O4+1)
        	call RemoveLocation(Q4)
        	call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
        	call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
    	endif
    else
        set L4[i]=u
        if((u==K4[1]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[1])
        elseif((u==K4[2]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[2])
        elseif((u==K4[3]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[3])
        elseif((u==K4[4]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[4])
        elseif((u==K4[5]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[5])
        elseif((u==K4[6]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[6])
        elseif((u==K4[7]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[7])
        endif
    endif
    set p=null
    set u=null
endfunction
//选择门派
function kx takes nothing returns boolean
	return((GetTriggerUnit()==Rs)and(udg_runamen[(1+GetPlayerId(GetTriggerPlayer()))]==0))
endfunction
//点击后显示爆率
function ShowBaoLv takes nothing returns nothing
	if (GetUnitTypeId(GetTriggerUnit())=='nbdw') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[2])+"|CFF00FFCC%精钢剑"+I2S(udg_baolv[3])+"|CFF00FFCC%精钢护腕"+I2S(udg_baolv[4])+"|CFF00FFCC%破军帽"+I2S(udg_baolv[5])+"|CFF00FFCC%破军鞋")
	elseif (GetUnitTypeId(GetTriggerUnit())=='nqb3') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[1])+"|CFF00FFCC%锁喉枪")
	elseif (GetUnitTypeId(GetTriggerUnit())=='ndrw') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[6])+"|CFF00FFCC%七星扇"+I2S(udg_baolv[7])+"|CFF00FFCC%七星锦服"+I2S(udg_baolv[8])+"|CFF00FFCC%七星戒指")
	elseif (GetUnitTypeId(GetTriggerUnit())=='nrzb') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[9])+"|CFF00FFCC%追月手"+I2S(udg_baolv[10])+"|CFF00FFCC%云海链"+I2S(udg_baolv[11])+"|CFF00FFCC%烈火衣"+I2S(udg_baolv[12])+"|CFF00FFCC%霓云手套")
	elseif (GetUnitTypeId(GetTriggerUnit())=='nfpu') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[13])+"|CFF00FFCC%影岗护符"+I2S(udg_baolv[14])+"|CFF00FFCC%饮血枪"+I2S(udg_baolv[15])+"|CFF00FFCC%乾坤丹")
	elseif (GetUnitTypeId(GetTriggerUnit())=='ngh2') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[16])+"|CFF00FFCC%云灭护符"+I2S(udg_baolv[17])+"|CFF00FFCC%抗魔护符")
	elseif (GetUnitTypeId(GetTriggerUnit())=='nfsp') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[18])+"|CFF00FFCC%神行鞋"+I2S(udg_baolv[19])+"|CFF00FFCC%重生链")
	elseif (GetUnitTypeId(GetTriggerUnit())=='nmgd') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[20])+"|CFF00FFCC%晶玉扇"+I2S(udg_baolv[21])+"|CFF00FFCC%软猬甲")
	elseif (GetUnitTypeId(GetTriggerUnit())=='uktn') then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"|CFF00FFCC"+I2S(udg_baolv[21])+"|CFF00FFCC%倚天剑"+I2S(udg_baolv[23])+"|CFF00FFCC%屠龙刀"+I2S(udg_baolv[24])+"|CFF00FFCC%龙鳞剑")
	endif
endfunction
function MenPai takes nothing returns nothing
	if((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O002'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O001'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O003'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O004'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O000'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O023'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入任意门派|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O02J'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入任意门派|r\n")
	endif
endfunction

//选择门派加入
function WuMenPai_Condition takes nothing returns boolean
    return UnitTypeNotNull(GetLeavingUnit(),UNIT_TYPE_HERO) and udg_runamen[1+GetPlayerId(GetOwningPlayer(GetLeavingUnit()))]==0 and GetPlayerController(GetOwningPlayer(GetLeavingUnit()))==MAP_CONTROL_USER
endfunction
//自由门派
function WuMenPai_Action takes nothing returns nothing
    local unit u=GetLeavingUnit()
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)
    set udg_runamen[i]=11
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933玩家"+GetPlayerName(p)+"选择了〓自由门派〓|r")
    call SetPlayerName(p,"〓自由门派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦），请在NPC郭靖处选择副职")
    call UnitAddAbility(u,'A05R')
    call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
    call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
    if udg_vip[i]<2 and udg_elevenvip[i]<1 then
    	call UnitAddAbility(u,'A040')
    	call UnitAddAbility(u,'A041')
    	call UnitAddAbility(u,'A042')
	endif
    set I7[(((i-1)*20)+8)]='A05R'
    call UnitRemoveAbility(u,'Avul')
    set Q4=GetRandomLocInRect(He)
    call SetUnitPositionLoc(u,Q4)
    call PanCameraToTimedLocForPlayer(p,Q4,0)
    call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
    call AdjustPlayerStateBJ(60,p,PLAYER_STATE_RESOURCE_LUMBER)
    set P4[i]=bj_lastCreatedUnit
    set udg_shuxing[i]=udg_shuxing[i]+5
    call RemoveLocation(Q4)
    call UnitAddItemByIdSwapped(1227896394,u)
    set u=null
    set p=null
endfunction
//进入挑战区域挑战失败
function TiaoZhanShiBai takes nothing returns boolean
    return IsUnitType(GetLeavingUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetLeavingUnit()))==MAP_CONTROL_USER and  udg_tiaozhanguai!=null
endfunction
function TiaoZhanShiBai_Action takes nothing returns nothing
	local unit u=GetLeavingUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFFF00离开区域，挑战失败")
	if GetUnitTypeId(udg_tiaozhanguai)=='n005' then
    	set udg_tiaodugu[i]=true
	endif
	if GetUnitTypeId(udg_tiaozhanguai)=='o01W' then
    	set udg_tiaoxuedao[i]=true
	endif
	call RemoveUnit(udg_tiaozhanguai)
	set udg_tiaozhanguai=null
	set u=null
	set p=null
endfunction
function ox takes nothing returns boolean
	return(((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemTypeId(GetManipulatedItem())==1227894833)or(GetItemTypeId(GetManipulatedItem())==1227894834)or(GetItemTypeId(GetManipulatedItem())==1227894835)or(GetItemTypeId(GetManipulatedItem())==1227894836)or(GetItemTypeId(GetManipulatedItem())==1227894837)or(GetItemTypeId(GetManipulatedItem())==1227894838)or(GetItemTypeId(GetManipulatedItem())==1227894839)or(GetItemTypeId(GetManipulatedItem())==1227894840)or(GetItemTypeId(GetManipulatedItem())==1227894841)or (GetItemTypeId(GetManipulatedItem())=='I09E') or(GetItemTypeId(GetManipulatedItem())==1227894849))or (GetItemTypeId(GetManipulatedItem())=='I09N') or (GetItemTypeId(GetManipulatedItem())=='I0A2')  or (GetItemTypeId(GetManipulatedItem())=='I0CK')))
endfunction
function JiaRuMenPai takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if((udg_runamen[i]!=0))then
		if GetItemTypeId(GetManipulatedItem())=='I09E' and udg_runamen[i]==11 and GetUnitLevel(u)<2 and GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)>=60 then
			set udg_runamen[i]=13
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933玩家"+GetPlayerName(p)+"改拜入了〓姑苏慕容〓，大家一起膜拜他|r")
			call SetPlayerName(p,"〓姑苏慕容〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call AdjustPlayerStateBJ(-60, p, PLAYER_STATE_RESOURCE_LUMBER)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你已经加过门派了|r")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894833))then
	    if((GetUnitTypeId(u)!='O002')and(GetUnitTypeId(u)!='O003'))then
	      set udg_runamen[i]=1
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓少林派〓，请在NPC郭靖处选择副职|r")
	      call SetPlayerName(p,"〓少林派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	      call UnitAddAbility(u,'A05R')
	      call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
          call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    	call UnitAddAbility(u,'A040')
    		call UnitAddAbility(u,'A041')
    		call UnitAddAbility(u,'A042')
		endif
	      set I7[(((i-1)*20)+8)]='A05R'
	      call UnitRemoveAbility(u,'Avul')
	      set Q4=GetRandomLocInRect(He)
	      call SetUnitPositionLoc(u,Q4)
	      call PanCameraToTimedLocForPlayer(p,Q4,0)
	      call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	      set P4[i]=bj_lastCreatedUnit
	      set gengu[i]=(gengu[i]+3)
	      set jingmai[i]=(jingmai[i]+2)
	      call RemoveLocation(Q4)
	      call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
	    endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894834))then
		if((GetUnitTypeId(u)!='O000'))then
			set udg_runamen[i]=3
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓丐帮〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓丐帮〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set danpo[i]=(danpo[i]+3)
			set jingmai[i]=(jingmai[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894835))then
		if((GetUnitTypeId(u)!='O002'))then
			set udg_runamen[i]=4
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓华山派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓华山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+3)
			set danpo[i]=(danpo[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894836))then
		if((GetUnitTypeId(u)!='O004')and(GetUnitTypeId(u)!='O003'))then
			set udg_runamen[i]=5
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓全真教〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓全真教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set jingmai[i]=(jingmai[i]+3)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894837))then
		if((GetUnitTypeId(u)!='O001')and(GetUnitTypeId(u)!='O002'))then
			set udg_runamen[i]=6
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓血刀门〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓血刀门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set gengu[i]=(gengu[i]+2)
			set danpo[i]=(danpo[i]+3)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894838))then
		if((GetUnitTypeId(u)!='O004')and(GetUnitTypeId(u)!='O000')and(GetUnitTypeId(u)!='O001'))then
			set udg_runamen[i]=7
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓恒山派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓恒山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set yishu[i]=(yishu[i]+3)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894839))then
		if((GetUnitTypeId(u)!='O004'))then
			set udg_runamen[i]=8
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓峨眉派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓峨眉派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])

			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set yishu[i]=(yishu[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set fuyuan[i]=(fuyuan[i]+3)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894840))then
		if((GetUnitTypeId(u)!='O001'))then
			set udg_runamen[i]=$A
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓星宿派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓星宿派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			set Q4=GetRandomLocInRect(He)
			call UnitRemoveAbility(u,'Avul')
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set danpo[i]=(danpo[i]+2)
			set yishu[i]=(yishu[i]+1)
			set jingmai[i]=(jingmai[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894841))then
		if((GetUnitTypeId(u)!='O003'))then
			set udg_runamen[i]=9
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓武当派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓武当派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call UnitRemoveAbility(u,'Avul')
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set gengu[i]=(gengu[i]+1)
			set jingmai[i]=(jingmai[i]+2)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894849))then
		if((GetUnitTypeId(u)!='O000'))then
			set udg_runamen[i]=2
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓古墓派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓古墓派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+2)
			set jingmai[i]=(jingmai[i]+1)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I09N'))then
		if udg_vip[i] > 0 then
			set udg_runamen[i]=14
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓明教〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓明教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+3)
			set jingmai[i]=(jingmai[i]+2)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000该门派为赞助游戏者特别制作，暂不对普通玩家开放")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I0A2'))then
	    if((GetUnitTypeId(u)!='O002')and(GetUnitTypeId(u)!='O003'))then
	    	set udg_runamen[i]=15
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓衡山派〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓衡山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set wuxing[i]=(wuxing[i]+3)
	    	set yishu[i]=(yishu[i]+2)
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
	    endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I0CK'))then
		if(GetUnitTypeId(u)=='O000' or GetUnitTypeId(u)=='O001' or GetUnitTypeId(u)=='O004' or GetUnitTypeId(u)=='O02J') then
	    	set udg_runamen[i]=16
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓神龙教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set gengu[i]=gengu[i]+2
	    	set fuyuan[i] = fuyuan[i] + 2
	    	set danpo[i] = danpo[i] + 1
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      	set udg_runamen[i]=17
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓神龙教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set gengu[i]=gengu[i]+2
	    	set fuyuan[i] = fuyuan[i] + 2
	    	set danpo[i] = danpo[i] + 1
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    endif

	endif
	set p=null
	set u=null
endfunction
function rx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and((GetIssuedOrderId()==$D0012)or(GetIssuedOrderId()==$D0016)))
endfunction
//用移动模拟攻击、巡逻模拟移动 对地面
function sx takes nothing returns nothing
	set udg_loc1=GetOrderPointLoc()
	if((GetIssuedOrderId()==$D0012))then
		call IssuePointOrderByIdLoc(GetOrderedUnit(),$D000F,udg_loc1)
	else
		if((GetIssuedOrderId()==$D0016))then
			call IssuePointOrderByIdLoc(GetOrderedUnit(),$D0012,udg_loc1)
		endif
	endif
	call RemoveLocation(udg_loc1)
endfunction
//右键点击己方单位
function uuxx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(IsPlayerAlly(GetOwningPlayer(GetOrderedUnit()),GetOwningPlayer(GetOrderTargetUnit())))and(GetIssuedOrderId()==$D0003))
endfunction
function vvxx takes nothing returns nothing
	set udg_loc1=GetUnitLoc(GetOrderTargetUnit())
	call IssuePointOrderByIdLoc(GetOrderedUnit(),$D0003,udg_loc1)
	call RemoveLocation(udg_loc1)
endfunction
//用移动模拟攻击 对点
function xx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(GetIssuedOrderId()==$D0012))
endfunction
function yx takes nothing returns nothing
	call IssueTargetOrderById(GetOrderedUnit(),$D000F,GetOrderTargetUnit())
endfunction
//优化速度加快
function Ax takes nothing returns nothing
	call Cheat("DooConV")
endfunction
//ESC查看人物属性
function RenWuShuXing takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
	call ClearTextMessagesBJ(ov(p))
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000人物属性：")
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF暴击率 ：   "+(I2S(IMinBJ(R2I((udg_baojilv[i]*100.)), 100))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF暴击伤害 ：   "+(I2S(R2I((udg_baojishanghai[i]*100.)))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF武功伤害加成 ：   "+(I2S(R2I((udg_shanghaijiacheng[i]*100.)))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF伤害吸收 ：   "+(I2S(IMinBJ(R2I((udg_shanghaixishou[i]*100.)),80))+"%")))
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF根骨 ：   "+I2S(gengu[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF悟性 ：   "+I2S(wuxing[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF经脉 ：   "+I2S(jingmai[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF福缘 ：   "+I2S(fuyuan[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF胆魄 ：   "+I2S(danpo[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF医术 ：   "+I2S(yishu[i])))
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00绝学领悟力："+I2S(juexuelingwu[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00修行："+I2S(xiuxing[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00武学修为：第"+(I2S(wugongxiuwei[i])+"层")))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00江湖声望："+I2S(shengwang[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00守家积分："+I2S(shoujiajf[i])))
	if Ce[i]!=1 then
	    call DisplayTextToPlayer(p,0,0,("|cFF33FF00当前用丹数量："+(I2S(yongdanshu[i])+" / 10")))
	else
	    call DisplayTextToPlayer(p,0,0,("|cFF33FF00当前用丹数量："+(I2S(yongdanshu[i])+" / 15")))
	endif
	set p=null
endfunction
//调整游戏难度
function GameNanDu_Condition takes nothing returns boolean
	//非特殊事件模式、非生存模式
	return (udg_teshushijian==false and udg_shengchun==false)
endfunction
function GameNanDu takes nothing returns nothing
	local trigger t=GetTriggeringTrigger()
	local integer id=GetHandleId(t)
	local integer i=0
	local integer level=0
	if((S2I(SubStringBJ(GetEventPlayerChatString(),3,5))==0))then
	    set i=10
	else
	    set i=S2I(SubStringBJ(GetEventPlayerChatString(),3,5))*10
	endif
	set level=GetPlayerTechCountSimple('R001',Player(12))
	if(level==50)then
	    call DisplayTextToPlayer(Player(0),0,0,"当前已为最高难度了")
	else
	    if level+i>=50 then
	        set i=50-level
	    endif
	    call AddPlayerTechResearched(Player(12),'R001',i)
	    call AddPlayerTechResearched(Player(6),'R001',i)
	    call AddPlayerTechResearched(Player(15),'R001',i)
	    set udg_nandu=udg_nandu+i/10
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("玩家1输入“up”提高了游戏难度，目前游戏难度为"+I2S(udg_nandu)))
	    if udg_nandu == 5 then
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
		endif
	endif
	set t=null
endfunction
function ChooseNanDu takes nothing returns nothing
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF40主机开始选择游戏难度")
    if(Trig_____________u_Func002C())then
        call DialogClear(udg_nan)
        call DialogSetMessage(udg_nan,"请选择游戏难度")
        if udg_nandu<=0 then
        	set udg_nan0=DialogAddButtonBJ(udg_nan,"|cFF00CC00初入江湖")
    	endif
    	if udg_nandu<=1 then
       		set udg_nan1=DialogAddButtonBJ(udg_nan,"|cFFCC0066牛刀小试")
   		endif
   		if udg_nandu<=2 then
        	set udg_nan2=DialogAddButtonBJ(udg_nan,"|cFFFF6600登堂入室")
        endif
        if udg_nandu<=3 then
        	set udg_nan3=DialogAddButtonBJ(udg_nan,"|cFF0041FF炉火纯青")
        endif
        if udg_nandu<=4 then
        	set udg_nan4=DialogAddButtonBJ(udg_nan,"|cFF1FBF00华山论剑")
        endif
        if udg_nandu<=5 then
        	set udg_nan5=DialogAddButtonBJ(udg_nan,"|cFFFF0000决战江湖")
        endif
        call DialogDisplayBJ(true,udg_nan,Player(0))
    endif
endfunction

/*
 * 设置游戏难度和经验获得率
 */
function setDifficultyAndExpRate takes integer difficulty returns nothing
	set udg_nandu = difficulty
        call SetPlayerHandicapXPBJ( Player(0), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(1), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(2), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(3), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(4), 200.00-20.00*difficulty )
endfunction

function ChooseNanDu_Action takes nothing returns nothing
    if GetClickedButton()==udg_nan0 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF00CC00初入江湖")
        call SetPlayerTechResearched(Player(12),'R001',0)
        call SetPlayerTechResearched(Player(6),'R001',0)
        call SetPlayerTechResearched(Player(15),'R001',0)
        call setDifficultyAndExpRate(0)
    endif
    if GetClickedButton()==udg_nan1 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFCC0066牛刀小试")
        call SetPlayerTechResearched(Player(12),'R001',10)
        call SetPlayerTechResearched(Player(6),'R001',10)
        call SetPlayerTechResearched(Player(15),'R001',10)
        call setDifficultyAndExpRate(1)
    endif
    if GetClickedButton()==udg_nan2 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFFF6600登堂入室")
        call SetPlayerTechResearched(Player(12),'R001',20)
        call SetPlayerTechResearched(Player(6),'R001',20)
        call SetPlayerTechResearched(Player(15),'R001',20)
        call setDifficultyAndExpRate(2)
    endif
    if GetClickedButton()==udg_nan3 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF0041FF炉火纯青")
        call SetPlayerTechResearched(Player(12),'R001',30)
        call SetPlayerTechResearched(Player(6),'R001',30)
        call SetPlayerTechResearched(Player(15),'R001',30)
        call setDifficultyAndExpRate(3)
    endif
    if GetClickedButton()==udg_nan4 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF1FBF00华山论剑")
        call SetPlayerTechResearched(Player(12),'R001',40)
        call SetPlayerTechResearched(Player(6),'R001',40)
        call SetPlayerTechResearched(Player(15),'R001',40)
        call setDifficultyAndExpRate(4)
    endif
    if GetClickedButton()==udg_nan5 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFFF0000决战江湖")
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
        call SetPlayerTechResearched(Player(12),'R001',50)
        call SetPlayerTechResearched(Player(6),'R001',50)
        call SetPlayerTechResearched(Player(15),'R001',50)
        call setDifficultyAndExpRate(5)
    endif
endfunction
//玩家英雄阵亡
function Ex takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function PlayerDeath takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if (ge[i]) then
		call StartTimerBJ(udg_revivetimer[i],false,7.)
	else
		call StartTimerBJ(udg_revivetimer[i],false,15.)
	endif
	call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,p)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"复活倒计时:")
	set R7[i]=bj_lastCreatedTimerDialog
	set he[i]=true
	set N8[i]=0
	call GroupRemoveUnit(k9,u)
	call GroupRemoveUnit(j9,u)
	call GroupRemoveUnit(s9,u)
	call GroupRemoveUnit(r9,u)
	if (UnitHaveItem(u,'I02S') or UnitHaveItem(u,1227895373) or UnitHaveItem(u,1227895377) or UnitHaveItem(u,1227895378) or UnitHaveItem(u,1227895376)) then
		if Ce[i]!=3 then
			call DisplayTextToPlayer(p,0,0,"|cFFff0000养武消失了")
		endif
	endif
	set u=null
	set p=null
endfunction
//五个玩家复活
function PlayerReviveA takes nothing returns nothing
	call DestroyTimerDialog(R7[1])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[1],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[1]),Q4,0)
	call RemoveLocation(Q4)
	set he[1]=false
	if(((UnitHaveItem(udg_hero[1],'I02S'))or(UnitHaveItem(udg_hero[1],1227895373))or(UnitHaveItem(udg_hero[1],1227895377))or(UnitHaveItem(udg_hero[1],1227895378))or(UnitHaveItem(udg_hero[1],1227895376))))then
		if Ce[1]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[1],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[1], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[1], 'A035')
		call UnitAddAbility(udg_hero[1], 'A034')
		call SetUnitAbilityLevel(udg_hero[1], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[1])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[1], udg_xinggeA[1])
    call AddCharacterBBuff(udg_hero[1], udg_xinggeB[1])
endfunction
function PlayerReviveB takes nothing returns nothing
	call DestroyTimerDialog(R7[2])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[2],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[2]),Q4,0)
	call RemoveLocation(Q4)
	set he[2]=false
	if(((UnitHaveItem(udg_hero[2],'I02S'))or(UnitHaveItem(udg_hero[2],1227895373))or(UnitHaveItem(udg_hero[2],1227895377))or(UnitHaveItem(udg_hero[2],1227895378))or(UnitHaveItem(udg_hero[2],1227895376))))then
		if Ce[2]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[2],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[2], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[2], 'A035')
		call UnitAddAbility(udg_hero[2], 'A034')
		call SetUnitAbilityLevel(udg_hero[2], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[2])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[2], udg_xinggeA[2])
    call AddCharacterBBuff(udg_hero[2], udg_xinggeB[2])
endfunction
function PlayerReviveC takes nothing returns nothing
	call DestroyTimerDialog(R7[3])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[3],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[3]),Q4,0)
	call RemoveLocation(Q4)
	set he[3]=false
	if(((UnitHaveItem(udg_hero[3],'I02S'))or(UnitHaveItem(udg_hero[3],1227895373))or(UnitHaveItem(udg_hero[3],1227895377))or(UnitHaveItem(udg_hero[3],1227895378))or(UnitHaveItem(udg_hero[3],1227895376))))then
		if Ce[3]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[3],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[3], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[3], 'A035')
		call UnitAddAbility(udg_hero[3], 'A034')
		call SetUnitAbilityLevel(udg_hero[3], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[3])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[3], udg_xinggeA[3])
    call AddCharacterBBuff(udg_hero[3], udg_xinggeB[3])
endfunction
function PlayerReviveD takes nothing returns nothing
	call DestroyTimerDialog(R7[4])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[4],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[4]),Q4,0)
	call RemoveLocation(Q4)
	set he[4]=false
	if(((UnitHaveItem(udg_hero[4],'I02S'))or(UnitHaveItem(udg_hero[4],1227895373))or(UnitHaveItem(udg_hero[4],1227895377))or(UnitHaveItem(udg_hero[4],1227895378))or(UnitHaveItem(udg_hero[4],1227895376))))then
		if Ce[4]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[4],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[4], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[4], 'A035')
		call UnitAddAbility(udg_hero[4], 'A034')
		call SetUnitAbilityLevel(udg_hero[4], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[4])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[4], udg_xinggeA[4])
    call AddCharacterBBuff(udg_hero[4], udg_xinggeB[4])
endfunction
function PlayerReviveE takes nothing returns nothing
	call DestroyTimerDialog(R7[5])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[5],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[5]),Q4,0)
	call RemoveLocation(Q4)
	set he[5]=false
	if(((UnitHaveItem(udg_hero[5],'I02S'))or(UnitHaveItem(udg_hero[5],1227895373))or(UnitHaveItem(udg_hero[5],1227895377))or(UnitHaveItem(udg_hero[5],1227895378))or(UnitHaveItem(udg_hero[5],1227895376))))then
		if Ce[5]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[5],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[5], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[5], 'A035')
		call UnitAddAbility(udg_hero[5], 'A034')
		call SetUnitAbilityLevel(udg_hero[5], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[5])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[5], udg_xinggeA[5])
    call AddCharacterBBuff(udg_hero[5], udg_xinggeB[5])
endfunction
//F9显示
function Qx takes nothing returns nothing
	call CreateQuestBJ(0,"|cFFFF00001.52版本更新内容","|cff00ff00新增元素|n|r|cffffff00开放新门派|r：神龙教（男女角色基础武功不同）|n|cffffff00增加团队副本|r：挑战青龙圣兽|cff00ff00|n平衡性调整|n|r|cffffff00副职调整|r：丫鬟升级到郡主后携带武器和衣服数量不限。鉴定大师升级调整为10分，练气师由每级内力+10改为随机加成，大师条件由100改为80级。寻宝师双倍掉落概率改为30%。|n|cffffff00专属调整|r：各门派专属伤害加成全面下调。|n|cffffff00伤害公式调整|r：武功伤害需考虑护甲。|n|cffffff00属性丹调整|r：基础丹由+2变为+1，易筋洗髓丹由+2~4变为+1~3，脱胎换骨丹由+5各-1变为+6各-1。|n|cffffff00门派调整|r：个别门派伤害和升重速度平衡|n|cffffff00其他细节调整|r|cff00ff00|nBUG修复|n|r|cffffff00自由门派：|r出门可以随机到绝武和绝内了。","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFFFF0000人物属性","招式伤害：影响人物的所有武功的威力，中后期影响较大\n内力：加成武功伤害百分比，中后期影响较大\n真实伤害：造成不受内力影响的实际伤害，前期影响较大\n绝学领悟力：影响绝学的发挥效果和威力\n根骨：影响任务和武功学习条件，同时提高技能暴击力\n悟性：影响任务和武功学习条件，同时决定技能升级的概率\n经脉：影响任务和武功学习条件，同时提高法力回复速度\n福缘：影响任务和武功学习条件，同时提高被动武学触发概率\n胆魄：影响任务和武功学习条件，同时提高杀怪回复能力\n医术：影响任务和武功学习条件，同时提高自然生命回复速度","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFFFF6600人物武功","门派武功：加入门派后每个英雄都会有3个武功，分别在3、8、15级时自动领悟\n门派心法：每个门派都有两种心法，可以在完成历练2后二选其一修习\n江湖武功：分为武功和心法两大类，需要通过使用武功秘籍获得\n绝学和绝内：后期厉害的大招，也需要通过使用武功秘籍获得\n绝阵：开放部分门派绝阵，请到聚贤庄寻找","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFF00FF00游戏指令","按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33非特殊事件模式下提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFF0000FF游戏指令2","输入“cksx”：|cFFCCFF33查看剩余自由属性点数|r\n输入属性拼音首字母如“gg”：|cFFCCFF33根骨+1|r\n输入属性拼音首字母加数值如“fy5”：|cFFCCFF33福缘+5|r\n输入“ckwq”：|cFFCCFF33查询自制武器属性|r\n输入“ckwg”：|cFFCCFF33查询自创武功|r\n输入“ckjn”：|cFFCCFF33查询人物性格和技能升重进度|r\n输入“ck”：|cFFCCFF33查询技能伤害|r\n输入“ckjf”：|cFFCCFF33查询守家积分|r\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF00CC称号系统","在游戏中，可以获得两种称号：门派称号和副职称号\n门派称号：如果你的所有门派武学和门派内功均达到6级，可以获得各门派的掌门称号；在获得掌门之前达成一定的条件，获得掌门称号时还可以获得额外的门派称号，具体门派称号的获得方法可以参考论坛的攻略。注意获得门派称号的契机只有一次。\n副职称号：游戏中的七种副职达到一定条件时，可以分别获得相应的副职大师称号，增加与该副职相关的额外能力，具体副职大师称号的获得方法可以参考论坛的攻略","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	//call CreateQuestBJ(2,"|cFFFFFF00武器系统","在游戏中，每一把武器都有自己的耐久度，每击杀一个单位耐久度减1，耐久度为0后武器破损消失\n如果副职选择兵器师，则武器不减少耐久度。\n每个玩家对每一种武器有一定的熟练度，每击杀一个单位增加一定熟练度，不同武器熟练度上限不同，熟练度上升武功的伤害将随之上升\n副职选择兵器师大幅提升武器的熟练度上限\n对某种武器极不熟练时伤害要低于不拿武器时的伤害","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF0000副职玩法","玩家可在NPC郭靖处选择自己的副职，加入副职后会获得一些独特的能力\n副职满足一定条件后，可以获得相应的大师称号，获得大师后会额外获得一些能力\n炼丹师：可使用炼丹系统并可多服食五颗丹药\n锻造师：可使用镶嵌和锻造系统\n兵器师：镇妖死亡不掉落，拾取和冶炼兵器不受历练限制\n练气师：每提升一次等级增加4-12点招式伤害或内力或真实伤害\n寻宝师：副本双倍掉落\n鉴定师：爆双倍古董，可以使用古董换书，古董以最高价卖出\n丫鬟：携带两把武器及两件衣服\n精武师：技能升级到九重获得额外自创武学点，可以打出奇武\n更多大师获得方式和作用请到NPC随风而逝de风处查看","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF6600称号系统","玩家4个门派武功全部达到6级可获得掌门称号\n在获得掌门称号时若达到一定条件，可同时获得其他称号\n有一些称号与掌门无关，具体可参考网站或论坛的攻略\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFF00FF00隐藏门派","游戏中有两个隐藏门派：姑苏慕容和灵鹫宫\n隐藏门派的选择方式:灵鹫宫选人后输入www.juezhanjianghu.com，慕容世家选人后输入jzjh.uuu9.com或3级前去找慕容复\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFF0000FF游戏网站","17玩吧：|cFFCCFF33www.17wanba.cc|r\n专区论坛：|cFFCCFF33jzjhbbs.uuu9.com|r\n游戏作者：|cFFCCFF33云杨 Zei_kale|r\n游戏QQ群：|cFFCCFF33159030768, 369925013\n\n关注武侠，支持作者，详情请在网站和论坛查询","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction

//友方单位A基地
function Ux takes nothing returns boolean
	return((GetTriggerUnit()==udg_ZhengPaiWL)and(IsUnitAlly(GetAttacker(),Player(5))))
endfunction
function Vx takes nothing returns nothing
	call IssueImmediateOrderById(GetAttacker(),$D0004)
endfunction
//玩家离开
function Xx takes nothing returns nothing
	set bj_forLoopBIndex=1
	set bj_forLoopBIndexEnd=6
	loop
		exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
		call UnitRemoveItemSwapped(UnitItemInSlotBJ(GetEnumUnit(),bj_forLoopBIndex),GetEnumUnit())
		set bj_forLoopBIndex=bj_forLoopBIndex+1
	endloop
	call RemoveUnit(GetEnumUnit())
endfunction
function PlayerLeave takes nothing returns nothing
	call ForGroupBJ((AddPlayerUnitIntoGroup((GetTriggerPlayer()),null)),function Xx)
	call yv(bj_lastCreatedMultiboard,4,((1+GetPlayerId(GetTriggerPlayer()))+2),100.,20.,100.,0)
	call DuoMianBan(bj_lastCreatedMultiboard,5,((1+GetPlayerId(GetTriggerPlayer()))*4-2),"离开")
endfunction

//杀怪(进攻怪及练功房)
function ey takes nothing returns boolean
	return((IsUnitEnemy(GetDyingUnit(),GetOwningPlayer(GetKillingUnit())))and((GetOwningPlayer(GetTriggerUnit())==Player(6))or(GetOwningPlayer(GetTriggerUnit())==Player(7))))
endfunction
function KillGuai takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i = 1
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	if((GetOwningPlayer(GetTriggerUnit())==Player(7)))then
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896391)))then
	        set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	        set U7=(T7*(30.*(I2R((udg_boshu+1))/1.)))
	        call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    else
	        set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	        set U7=(T7*(15.*(I2R((udg_boshu+1))/1.)))
	        call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],'I06I')))then
	        if((GetRandomInt(1,100)<=15))then
	            call AdjustPlayerStateBJ(1,GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_LUMBER)
	        endif
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896390)))then
	        set shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+((udg_boshu/7)+2))
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896392)))then
	        call AddHeroXP(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],(GetUnitLevel(GetTriggerUnit())*20),true)
	    endif
	else
	    set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	    set U7=(T7*(25.*(I2R((udg_boshu+1))/1.)))
	    call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    if((GetUnitPointValue(GetTriggerUnit())==102))then
		    set i = 1
		    loop
		    	exitwhen i >= 6
		    	 set shoujiajf[i]=shoujiajf[i]+15*(10-GetNumPlayer())/10
		    	set i = i + 1
		    endloop
	        set ae=(ae+($A+GetPlayerTechCountSimple('R001',Player(6))))
	        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"击杀名门高手，每位玩家获得守家积分+"+I2S(shoujiajf[i]+15*(10-GetNumPlayer())/10))
	        call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	        if((GetRandomInt(1,50)<=5))then
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            endif
	        endif
	        if((GetRandomInt(1,50)<=2))then
	            call createitemloc(1227897138,LoadLocationHandle(YDHT,id*cx,$1769D332))
	        else
	            if((GetRandomInt(1,100)<=10))then
	                call createitemloc('I06N',LoadLocationHandle(YDHT,id*cx,$1769D332))
	            else
	                if((GetRandomInt(1,90)<=10))then
	                    call createitemloc('I06K',LoadLocationHandle(YDHT,id*cx,$1769D332))
	                else
	                    if((GetRandomInt(1,80)<=10))then
	                        call createitemloc(1227896397,LoadLocationHandle(YDHT,id*cx,$1769D332))
	                    endif
	                endif
	            endif
	        endif
	        call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	    else
	        //判断是否为进攻BOSS
	        if((GetUnitPointValue(GetTriggerUnit())==101))then
	            set i = 1
		    	loop
		    		exitwhen i >= 6
		    		 set shoujiajf[i]=shoujiajf[i]+30*(10-GetNumPlayer())/10
		    		set i = i + 1
		    	endloop
	        	set ae=(ae+($A+GetPlayerTechCountSimple('R001',Player(6))))
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"击杀BOSS，每位玩家获得守家积分+"+I2S(shoujiajf[i]+30*(10-GetNumPlayer())/10))
	            set ae=(ae+(30+GetPlayerTechCountSimple('R001',Player(6))))
	            if GetRandomInt(1,100)<=50 then
	                set udg_shuxing[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(udg_shuxing[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+1)
	                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFF33CC00"+GetPlayerName(GetOwningPlayer(GetKillingUnit()))+"|cFF33CC00击杀了BOSS"+GetUnitName(GetTriggerUnit())+"|cFF33CC00获得了一个自由属性点")
	            endif
	            call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            endif
	            call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	        else
	            if GetKillingUnit()!=null then
	                set shoujiajf[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shoujiajf[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+1)
	            endif
	        endif
	    endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function hy takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nbds'))
endfunction
//是否达到胜利条件
function IsVictory takes nothing returns nothing
if((de==false))then
	call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
	call DestroyTimer(GetExpiredTimer())
else
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3)<=10.))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2)<=10.))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E)<=.1))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A)<=.0))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A,70.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A)-10.))
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,1)
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
endif
endfunction
//胜利动作
function Victory takes nothing returns nothing
	local timer ky
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i=0
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	set i = 1
	loop
		exitwhen i >= 6
		set udg_MeiJuJiFen[i]=udg_MeiJuJiFen[i]+ae/50
		call YDWE_PreloadSL_Set( Player(i-1), "总积分", 1, udg_MeiJuJiFen[i] )
    	call YDWE_PreloadSL_Save( Player(i-1), "JueZhan", "JiangHu"+I2S(i), 1 )
		set i = i + 1
	endloop
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.52的游戏总评分："+(I2S(ae)+"分（通关）")))
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF00B2恭喜你们通关，游戏将在2分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	set de=true
	call SaveReal(YDHT,id*cx,-$5E9EB4B3,40.)
	call SaveReal(YDHT,id*cx,-$63F0AAA2,70.)
	call SaveReal(YDHT,id*cx,-$5CF6751E,100.)
	call SaveReal(YDHT,id*cx,-$6329FB8A,70.)
	set ky=CreateTimer()
	call SaveReal(YDHT,GetHandleId(ky),-$5E9EB4B3,LoadReal(YDHT,id*cx,-$5E9EB4B3))
	call SaveReal(YDHT,GetHandleId(ky),-$63F0AAA2,LoadReal(YDHT,id*cx,-$63F0AAA2))
	call SaveReal(YDHT,GetHandleId(ky),-$5CF6751E,LoadReal(YDHT,id*cx,-$5CF6751E))
	call SaveReal(YDHT,GetHandleId(ky),-$6329FB8A,LoadReal(YDHT,id*cx,-$6329FB8A))
	call TimerStart(ky,.04,true,function IsVictory)
	call YDWEPolledWaitNull(60.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.52的游戏总评分："+(I2S(ae)+"分（通关）")))
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF00B2恭喜你们通关，游戏将在1分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	call YDWEPolledWaitNull(60.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call CustomVictoryBJ(Player(0),true,true)
	call CustomVictoryBJ(Player(1),true,true)
	call CustomVictoryBJ(Player(2),true,true)
	call CustomVictoryBJ(Player(3),true,true)
	call CustomVictoryBJ(Player(4),true,true)
	call FlushChildHashtable(YDHT,id*cx)
	set ky=null
endfunction
//失败动作
function Lose takes nothing returns nothing
	local integer i=0
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.52的游戏总评分："+(I2S(ae)+"分（战败）")))
	set i = 1
	loop
		exitwhen i >= 6
		set udg_MeiJuJiFen[i]=udg_MeiJuJiFen[i]+ae/100
		call YDWE_PreloadSL_Set( Player(i-1), "总积分", 1, udg_MeiJuJiFen[i] )
    	call YDWE_PreloadSL_Save( Player(i-1), "JueZhan", "JiangHu"+I2S(i), 1 )
		set i = i + 1
	endloop
	call CustomDefeatBJ(Player(0),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(1),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(2),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(3),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(4),"没有能守护住正派武林!")
endfunction
//买基地无敌
function BuyJiDiWuDi takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I07X'))
endfunction
function JiDiWuDi takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveUnitHandle(YDHT,id*cx,$32A9E4C8,udg_ZhengPaiWL)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00ff33在正义之士的庇护下，武林暂时无敌了（20秒后解除）")
	call SetUnitInvulnerable(LoadUnitHandle(YDHT,id*cx,$32A9E4C8),true)
	call YDWEPolledWaitNull(20.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SetUnitInvulnerable(LoadUnitHandle(YDHT,id*cx,$32A9E4C8),false)
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//基地挨打
function JiDiAiDa_Conditions takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetAttacker()))==MAP_CONTROL_COMPUTER)
endfunction
function laojiayouren takes nothing returns boolean
    return (IsUnitAlly(GetFilterUnit(), Player(0))) and (IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)) and (GetPlayerController(GetOwningPlayer(GetFilterUnit()))==MAP_CONTROL_USER)
endfunction
//魔教救人
function JiDiAiDa_Actions takes nothing returns nothing
	//==============反仇恨机制定义单位组==============
	local group g=CreateGroup()
	//==============反仇恨机制定义单位组==============
	call PingMinimapLocForForce(GetPlayersAll(),GetUnitLoc(udg_ZhengPaiWL),1)
        if(GetRandomInt(30,50)==48)then
            call DisplayTextToForce(GetPlayersAll(),"|CFFCCFF00正派武林受到攻击，请赶紧回防")
        endif
        if(GetRandomInt(30,50)==45)then
            call SetUnitPositionLoc(GetAttacker(),GetRectCenter(udg_jail))
            call DisplayTextToForce(GetPlayersAll(),"|CFFCCFFCC正派武林将攻击单位抓进了监狱")
        endif
   //==========反仇恨机制，按云大建议去掉==============
    call GroupEnumUnitsInRangeOfLoc( g, GetUnitLoc(udg_ZhengPaiWL), 800, Condition(function laojiayouren) )
    if ((IsUnitGroupEmptyBJ(g) == false)) then
	    call UnitAddAbility(udg_ZhengPaiWL,'A00S')
    //call SetUnitInvulnerable(udg_ZhengPaiWL,true)
   		call GroupClear( g )
    	call YDWEPolledWaitNull(5.00)
    //call SetUnitInvulnerable(udg_ZhengPaiWL,false)
    	call UnitRemoveAbility(udg_ZhengPaiWL,'A00S')
    	set g=null
    endif
   //==========反仇恨机制，按云大建议去掉==============
endfunction
function MoJiaoJiuRen_1 takes nothing returns nothing
    call SetUnitPosition(GetEnumUnit(),-910,750)
endfunction
function MoJiaoJiuRen takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(),"|CFFCCFF00魔教潜入监狱救走了被抓住的敌人")
    call ForGroupBJ(YDWEGetUnitsInRectOfPlayerNull(udg_jail,Player(6)),function MoJiaoJiuRen_1)
endfunction
//系统窗口
function SystemWindow takes nothing returns nothing
	local integer i=0
	local string s = null
	call CreateMultiboardBJ(5,20,"系统窗口")
	call MultiboardSetItemsStyle(bj_lastCreatedMultiboard,true,false)
	call MultiboardSetItemsWidth(bj_lastCreatedMultiboard,.07)
	set i = 1

	loop
		exitwhen i >= 6
		if udg_MaxDamage[i]<10000. then
            set s = R2S(udg_MaxDamage[i])
        elseif udg_MaxDamage[i]<100000000. then
            set s = R2S(udg_MaxDamage[i])+"万"
        elseif udg_MaxDamage[i]/10000.<100000000. then
            set s = R2S(udg_MaxDamage[i])+"亿"
        elseif udg_MaxDamage[i]/100000000.<100000000. then
        	set s = R2S(udg_MaxDamage[i])+"万亿"
        else
        	set s = R2S(udg_MaxDamage[i])+"亿亿"
        endif
        call MultiboardSetTitleText(bj_lastCreatedMultiboard,"|cFFFFCC33这并不是系统窗口")
		call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-3,"|c00FF0080"+GetPlayerName(Player(i-1)))
		call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-3,"|c0000FF00"+"等级："+I2S(GetUnitLevel(udg_hero[i])))
		call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-3,"|cFF00CCFF"+udg_menpainame[udg_runamen[i]])
		call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-3,"|cFFFF6600"+"最高伤害："+s)
		if Ce[i] == 1 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"炼丹师")
		elseif Ce[i] == 2 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"锻造师")
		elseif Ce[i] == 3 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"兵器师")
		elseif Ce[i] == 4 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"鉴定师")
		elseif Ce[i] == 5 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"练气师")
		elseif Ce[i] == 6 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"寻宝师")
		elseif Ce[i] == 7 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"丫鬟")
		elseif Ce[i] == 8 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"精武师")
		else
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"未选择")
		endif
		if (I7[20*(i-1)+1]!='AEfk') then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+1]))
		endif
		if((I7[20*(i-1)+2]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+2]))
		endif
		if((I7[20*(i-1)+3]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+3]))
		endif
		if((I7[20*(i-1)+4]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+4]))
		endif
		if((I7[20*(i-1)+5]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+5]))
		endif
		if((I7[20*(i-1)+6]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+6]))
		endif
		if((I7[20*(i-1)+7]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+7]))
		endif
		if((I7[20*(i-1)+8]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+8]))
		endif
		if((I7[20*(i-1)+9]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+9]))
		endif
		if((I7[20*(i-1)+10]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+10]))
		endif
		if((I7[20*(i-1)+11]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+11]))
		endif
		set i = i + 1
	endloop
	call MultiboardDisplay(bj_lastCreatedMultiboard,true)
endfunction
function uuyy takes nothing returns nothing
	local integer i=0
	local string s = null
	set i = 1

	loop
		exitwhen i >= 6
		if udg_MaxDamage[i]<10000. then
            set s = I2S(R2I(udg_MaxDamage[i]/1.))
        elseif udg_MaxDamage[i]<100000000. then
            set s = I2S(R2I(udg_MaxDamage[i]/10000.))+"万"
        elseif udg_MaxDamage[i]/10000.<100000000. then
            set s = I2S(R2I(udg_MaxDamage[i]/100000000.))+"亿"
        elseif udg_MaxDamage[i]/100000000.<100000000. then
        	set s = I2S(R2I(udg_MaxDamage[i]/1000000000000.))+"万亿"
        else
        	set s = I2S(R2I(udg_MaxDamage[i]/10000000000000000.))+"亿亿"
        endif
        call MultiboardSetTitleText(bj_lastCreatedMultiboard,"|cFFFFCC33这并不是系统窗口")
		call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-3,"|c00FF0080"+GetPlayerName(Player(i-1)))
		call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-3,"|c0000FF00"+"等级："+I2S(GetUnitLevel(udg_hero[i])))
		call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-3,"|cFF00CCFF"+udg_menpainame[udg_runamen[i]])
		call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-3,"|cFFFF6600"+"最高伤害："+s)
		if Ce[i] == 1 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"炼丹师")
		elseif Ce[i] == 2 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"锻造师")
		elseif Ce[i] == 3 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"兵器师")
		elseif Ce[i] == 4 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"鉴定师")
		elseif Ce[i] == 5 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"练气师")
		elseif Ce[i] == 6 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"寻宝师")
		elseif Ce[i] == 7 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"丫鬟")
		elseif Ce[i] == 8 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"精武师")
		else
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"未选择")
		endif
		if (I7[20*(i-1)+1]!='AEfk') then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+1]))
		endif
		if((I7[20*(i-1)+2]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+2]))
		endif
		if((I7[20*(i-1)+3]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+3]))
		endif
		if((I7[20*(i-1)+4]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+4]))
		endif
		if((I7[20*(i-1)+5]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+5]))
		endif
		if((I7[20*(i-1)+6]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+6]))
		endif
		if((I7[20*(i-1)+7]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+7]))
		endif
		if((I7[20*(i-1)+8]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+8]))
		endif
		if((I7[20*(i-1)+9]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+9]))
		endif
		if((I7[20*(i-1)+10]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+10]))
		endif
		if((I7[20*(i-1)+11]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+11]))
		endif
		set i = i + 1
	endloop
endfunction
//最大伤害
function wy takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))!=MAP_CONTROL_USER)and(GetEventDamage()>udg_MaxDamage[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]))
endfunction
function SetMaxDamage takes nothing returns nothing
	set udg_MaxDamage[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]=GetEventDamage()
endfunction
//试玩模式
function BeforeAttack takes nothing returns boolean
	return(hd==false)
endfunction
function SetShiWan takes nothing returns nothing
	set ShiFouShuaGuai=false
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF00FF00玩家一选择了试玩模式，怪物不会进攻主城，大家可以尽情的去体验玩法了")
endfunction
//购买城防
function BuyChengFang takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896147))
endfunction
function ShengChengFang takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	if((GetPlayerTechCountSimple('R000',Player(5))<=29))then
		call SetPlayerTechResearchedSwap('R000',(GetPlayerTechCountSimple('R000',Player(5))+1),Player(5))
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|cFFFFD700在玩家："+(GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"的无私奉献下，正派武林的城防得到加强了")))
		set shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=(shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]+$F)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF34FF00守家积分+15")
	else
		call AdjustPlayerStateBJ($4E20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF0000城防已达最高，无法继续升级|r")
	endif
endfunction
//高级城防
function BuyGaoChengFang takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896917))
endfunction
function ShengGaoChengFang takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	if((udg_boshu>=18))then
		if((GetPlayerTechCountSimple('R002',Player(5))<=9))then
			call SetPlayerTechResearchedSwap('R002',(GetPlayerTechCountSimple('R002',Player(5))+1),Player(5))
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|cFFFFD700在玩家："+(GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"的无私奉献下，正派武林的高级城防得到加强了")))
			set shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=(shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]+25)
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF34FF00守家积分+25")
		else
			call AdjustPlayerStateBJ($C350,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF0000高级城防已达最高，无法继续升级|r")
		endif
	else
		call AdjustPlayerStateBJ($C350,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF000018波进攻怪以后才能使用此功能哦|r")
	endif
endfunction
//--------守家积分换物品系统开始--------//
function IsJiFenHuan takes item it returns boolean
	if GetItemTypeId(it)=='I06O' or GetItemTypeId(it)=='I0A0' or GetItemTypeId(it)=='I06S' or GetItemTypeId(it)=='I06T' or GetItemTypeId(it)=='I06R' or GetItemTypeId(it)=='I06U' or GetItemTypeId(it)=='I06P' or GetItemTypeId(it)=='I06Q' then
		return true
	endif
	return false
endfunction
function JiFenHuan takes unit u, item it, integer id1, integer num, integer id2 returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if GetItemTypeId(it)==id1 then
		if (shoujiajf[i]>=num) then
			set shoujiajf[i] = shoujiajf[i]-num
			if id1=='I06S' or id1=='I06T' or id1=='I06R' or id1=='I06U' or id1=='I06Q' then
				call unitadditembyidswapped(id2,u)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			elseif id1=='I06P' then
				call AdjustPlayerStateBJ(20-udg_nandu*2,p,PLAYER_STATE_RESOURCE_LUMBER)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得珍稀币+"+I2S(20-udg_nandu*2))
			elseif id1=='I06O' then
				call AdjustPlayerStateBJ(8000-udg_nandu*1000,p,PLAYER_STATE_RESOURCE_GOLD)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得金钱+"+I2S(8000-udg_nandu*1000))
			elseif id1=='I0A0' then
				call unitadditembyidswapped(id2,udg_hero[i])
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			endif
			call DisplayTextToPlayer(p,0,0,"|cFF00CCff当前剩余守家积分："+I2S(shoujiajf[i]))
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00守家积分不足")
		endif
	endif
	set p = null
endfunction
function BuyKuanDong takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and IsJiFenHuan(GetManipulatedItem()))
endfunction
function KuanDongHua takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call JiFenHuan(u, GetManipulatedItem(), 'I06O', 20, 300)
	call JiFenHuan(u, GetManipulatedItem(), 'I0A0', 50, 'I04T')
	call JiFenHuan(u, GetManipulatedItem(), 'I06S', 200, YaoCao[GetRandomInt(1,12)])
	call JiFenHuan(u, GetManipulatedItem(), 'I06T', 100, 'I02N')
	call JiFenHuan(u, GetManipulatedItem(), 'I06R', 300, 'I06K')
	call JiFenHuan(u, GetManipulatedItem(), 'I06U', 600, 'I02L')
	call JiFenHuan(u, GetManipulatedItem(), 'I06P', 100, 5)
	call JiFenHuan(u, GetManipulatedItem(), 'I06Q', 200, 'I06N')
	set u = null
endfunction
//--------江湖声望换物品系统开始--------//
function IsShengWangHuan takes item it returns boolean
	if GetItemTypeId(it)=='I0AO' or GetItemTypeId(it)=='I0AP' or GetItemTypeId(it)=='I0AQ' or GetItemTypeId(it)=='I0AR' then
		return true
	endif
	return false
endfunction
function ShengWangHuan takes unit u, item it, integer id1, integer num, integer id2 returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if GetItemTypeId(it)==id1 then
		if (shengwang[i]>=num) then
			set shengwang[i] = shengwang[i]-num
			call unitadditembyidswapped(id2,u)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			call DisplayTextToPlayer(p,0,0,"|cFF00CCff当前剩余江湖声望："+I2S(shengwang[i]))
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00江湖声望不足")
		endif
	endif
	set p = null
endfunction
function BuyKuanDong_1 takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and IsShengWangHuan(GetManipulatedItem()))
endfunction
function KuanDongHua_1 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AO', 200, 'I06K')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AP', 4000, 'I08W')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AQ', 2000, 'I0AS')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AR', 1000, udg_canzhang[GetRandomInt(1,10)])
	set u = null
endfunction
function IsWuXueJingYao takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0AS')
endfunction
function WuXueJingYao takes nothing returns nothing
	local player p = GetOwningPlayer(GetTriggerUnit())
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	local integer j = GetRandomInt(1, 8)
	local integer level = GetUnitAbilityLevel(u, I7[(i-1)*20+j])
	if I7[(i-1)*20+j]!='A05R' then
		call IncUnitAbilityLevel(u, I7[(i-1)*20+j])
		if GetUnitAbilityLevel(u, I7[(i-1)*20+j])==level then
			call unitadditembyidswapped('I0AS',GetTriggerUnit())
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00随机到九重或无法升重的技能，使用武学精要失败")
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00恭喜技能"+GetAbilityName(I7[(i-1)*20+j])+"升重")
		endif
	else
		call unitadditembyidswapped('I0AS',GetTriggerUnit())
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00随机到凌波微步，使用武学精要失败")
	endif
	set u = null
	set p = null
endfunction
//鸟拿东西显示附加属性
function Zy takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)==false)and(GetItemUserData(GetManipulatedItem())>0))
endfunction
function dz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33附加属性：|r")
	if (ii2==1) then
		set j = j + ii3*300
	elseif (ii2==2) then
		set l = l + ii3*40
	elseif (ii2==3) then
		set m = m + ii3*40
	elseif (ii2==4) then
		set n = n + ii3*25
	elseif (ii2==5) then
		set o = o + ii3*25
	endif
	if (ii4==1) then
		set j = j + ii5*300
	elseif (ii4==2) then
		set l = l + ii5*40
	elseif (ii4==3) then
		set m = m + ii5*40
	elseif (ii4==4) then
		set n = n + ii5*25
	elseif (ii4==5) then
		set o = o + ii5*25
	endif
	if(j>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
	endif
	if(l>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
	endif
	if(m>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
	endif
	if(n>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
	endif
	if(o>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
	endif
	call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
	call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
	if(ii7==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii7==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii7==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii7==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii7==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii7==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii8==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii8==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii8==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii8==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii8==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii8==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii9==1)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
		endif
	elseif(ii9==2)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
		endif
	elseif(ii9==3)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
		endif
	elseif(ii9==4)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
		endif
	elseif(ii9==5)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
		endif
	elseif(ii9==6)then
		if udg_dzdsbool[i]==false then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
		endif
	endif
	if(ii1==1)then
		call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得青龙套件")
	elseif(ii1==2)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得朱雀套件")
	elseif(ii1==3)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得玄武套件")
	elseif(ii1==4)then
		call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFF33ffff获得白虎套件")
	endif
	set u = null
	set p = null
	set it =null
endfunction
//英雄拿上东西显示附加属性
function fz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function gz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	local integer q = 0
	if(GetItemUserData(it)>0)then
		call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33获得附加属性：|r")
		if (ii2==1) then
			set j = j + ii3*300
		elseif (ii2==2) then
			set l = l + ii3*40
		elseif (ii2==3) then
			set m = m + ii3*40
		elseif (ii2==4) then
			set n = n + ii3*25
		elseif (ii2==5) then
			set o = o + ii3*25
		endif
		if (ii4==1) then
			set j = j + ii5*300
		elseif (ii4==2) then
			set l = l + ii5*40
		elseif (ii4==3) then
			set m = m + ii5*40
		elseif (ii4==4) then
			set n = n + ii5*25
		elseif (ii4==5) then
			set o = o + ii5*25
		endif
		if(j>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
			call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,j)
		endif
		if(l>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
			call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,l)
		endif
		if(m>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
			call ModifyHeroStat(0,u,0,m)
		endif
		if(n>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
			call ModifyHeroStat(1,u,0,n)
		endif
		if(o>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
			call ModifyHeroStat(2,u,0,o)
		endif
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
		if(ii7==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii7==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii7==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii7==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii7==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii7==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii8==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii8==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii8==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii8==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii8==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii8==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii9==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] + 3
			endif
		elseif(ii9==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] + 3
			endif
		elseif(ii9==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] + 3
			endif
		elseif(ii9==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] + 3
			endif
		elseif(ii9==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] + 3
			endif
		elseif(ii9==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] + 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] + 3
			endif
		endif
		if(ii1==1)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得青龙套件")
		elseif(ii1==2)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得朱雀套件")
		elseif(ii1==3)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得玄武套件")
		elseif(ii1==4)then
			call DisplayTextToPlayer(p,0,0,"|cFF33ffff获得白虎套件")
		endif
		set k7=1
		loop
		exitwhen k7>6
		if (GetItemUserData(UnitItemInSlotBJ(u,k7))/$5F5E100==ii1 and UnitItemInSlotBJ(u,k7)!=GetManipulatedItem())then
			set q = q+1
		endif
		set k7=k7+1
		endloop
		if(q==2)then
			if(ii1==1)then
				call ModifyHeroStat(0,u,0,$C8)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				set udg_baojilv[i]=(udg_baojilv[i]+.04)
				call UnitAddAbility(u,1093677106)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,1000)
				set gengu[i]=(gengu[i]+2)
				set wuxing[i]=(wuxing[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐青龙套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF招式伤害+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF暴击率+4%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF攻击速度+50%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF攻击+1000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF根骨+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF悟性+1")
			elseif(ii1==2)then
				call ModifyHeroStat(1,u,0,$96)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				set udg_baojishanghai[i]=(udg_baojishanghai[i]+.5)
				set shaguaihufui[i]=(shaguaihufui[i]+1000.)
				call UnitAddAbility(u,1093677107)
				set yishu[i]=(yishu[i]+1)
				set jingmai[i]=(jingmai[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐朱雀套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF内力+150")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF暴击伤害+50%")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF杀怪回复+1000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF法术回复+10")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF医术+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF经脉+2")
			elseif(ii1==3)then
				call ModifyHeroStat(0,u,0,$96)
				set juexuelingwu[i]=(juexuelingwu[i]+1)
				call UnitAddAbility(u,1093677108)
				call UnitAddAbility(u,1093677109)
				call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,$C8)
				set wuxing[i]=(wuxing[i]+2)
				set danpo[i]=(danpo[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐玄武套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF招式伤害+150")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+1")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF气血+30000")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF气血回复+600")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF防御+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF悟性+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF胆魄+1")
			elseif(ii1==4)then
				call ModifyHeroStat(1,u,0,$C8)
				call ModifyHeroStat(2,u,0,100)
				call UnitAddAbility(u,1093677110)
				set juexuelingwu[i]=(juexuelingwu[i]+2)
				set fuyuan[i]=(fuyuan[i]+2)
				set danpo[i]=(danpo[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFF6600集齐白虎套装：")
				call DisplayTextToPlayer(p,0,0,"|cFFcc99ff――――――――――")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF内力+200")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF绝学领悟力+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF真实伤害+100")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF移动速度最大化")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF福缘+2")
				call DisplayTextToPlayer(p,0,0,"|cFF00FFFF胆魄+1")
			endif
		else
			if(ii1==1)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得青龙套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==2)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得朱雀套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==3)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得玄武套件，（已收集到"+(I2S(q+1))+"件）"))
			elseif(ii1==4)then
				call DisplayTextToPlayer(p,0,0,("|cFF33ffff获得白虎套件，（已收集到"+(I2S(q+1))+"件）"))
			endif
		endif
	endif
	set u = null
	set p = null
	set it =null
endfunction
function iz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function jz takes nothing returns nothing
	local item it = GetManipulatedItem()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer ii1 = ModuloInteger((GetItemUserData(it)/100000000),10)
	local integer ii2 = ModuloInteger((GetItemUserData(it)/10000000),10)
	local integer ii3 = ModuloInteger((GetItemUserData(it)/1000000),10)
	local integer ii4 = ModuloInteger((GetItemUserData(it)/100000),10)
	local integer ii5 = ModuloInteger((GetItemUserData(it)/10000),10)
	local integer ii6 = ModuloInteger((GetItemUserData(it)/1000),10)
	local integer ii7 = ModuloInteger((GetItemUserData(it)/100),10)
	local integer ii8 = ModuloInteger((GetItemUserData(it)/10),10)
	local integer ii9 = ModuloInteger((GetItemUserData(it)/1),10)
	local integer i = 1+GetPlayerId(p)
	local integer j = 0
	local integer l = 0
	local integer m = 0
	local integer n = 0
	local integer o = 0
	local integer q = 0
	if (GetItemUserData(it)>0) then
		call DisplayTimedTextToPlayer(p,0,0,15.,GetItemName(it)+"|cff66cc33失去附加属性：|r")
		if (ii2==1) then
			set j = j + ii3*300
		elseif (ii2==2) then
			set l = l + ii3*40
		elseif (ii2==3) then
			set m = m + ii3*40
		elseif (ii2==4) then
			set n = n + ii3*25
		elseif (ii2==5) then
			set o = o + ii3*25
		endif
		if (ii4==1) then
			set j = j + ii5*300
		elseif (ii4==2) then
			set l = l + ii5*40
		elseif (ii4==3) then
			set m = m + ii5*40
		elseif (ii4==4) then
			set n = n + ii5*25
		elseif (ii4==5) then
			set o = o + ii5*25
		endif
		if(j>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff攻击+"+I2S(j))
			call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,j)
		endif
		if(l>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff防御+"+I2S(l))
			call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,l)
		endif
		if(m>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff招式伤害+"+I2S(m))
			call ModifyHeroStat(0,u,1,m)
		endif
		if(n>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff内力+"+I2S(n))
			call ModifyHeroStat(1,u,1,n)
		endif
		if(o>0)then
			call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff真实伤害+"+I2S(o))
			call ModifyHeroStat(2,u,1,o)
		endif
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff装备剩余凹槽："+I2S(ii6))
		call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff镶嵌效果：")
		if(ii7==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii7==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii7==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii7==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii7==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii7==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		if(ii8==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii8==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii8==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii8==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii8==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii8==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		if (ii9==1)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+1")
				set gengu[i] = gengu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff根骨+3")
				set gengu[i] = gengu[i] - 3
			endif
		elseif(ii9==2)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+1")
				set wuxing[i] = wuxing[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff悟性+3")
				set wuxing[i] = wuxing[i] - 3
			endif
		elseif(ii9==3)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+1")
				set jingmai[i] = jingmai[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff经脉+3")
				set jingmai[i] = jingmai[i] - 3
			endif
		elseif(ii9==4)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+1")
				set fuyuan[i] = fuyuan[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff福缘+3")
				set fuyuan[i] = fuyuan[i] - 3
			endif
		elseif(ii9==5)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+1")
				set danpo[i] = danpo[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff胆魄+3")
				set danpo[i] = danpo[i] - 3
			endif
		elseif(ii9==6)then
			if udg_dzdsbool[i]==false then
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+1")
				set yishu[i] = yishu[i] - 1
			else
				call DisplayTimedTextToPlayer(p,0,0,15.,"|cFFff66ff医术+3")
				set yishu[i] = yishu[i] - 3
			endif
		endif
		set k7=1
		loop
			exitwhen k7>6
			if (GetItemUserData(UnitItemInSlotBJ(u,k7))/$5F5E100==ii1 and UnitItemInSlotBJ(u,k7)!=GetManipulatedItem())then
				set q = q+1
			endif
			set k7=k7+1
		endloop
		if(q==2)then
			if (ii1==1) then
				call ModifyHeroStat(0,u,1,$C8)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				set udg_baojilv[i]=(udg_baojilv[i]-.04)
				call UnitRemoveAbility(u,1093677106)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,1000)
				set gengu[i]=(gengu[i]-2)
				set wuxing[i]=(wuxing[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去青龙套装")
			elseif (ii1==2) then
				call ModifyHeroStat(1,u,1,$96)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				set udg_baojishanghai[i]=(udg_baojishanghai[i]-.5)
				set shaguaihufui[i]=(shaguaihufui[i]-1000.)
				call UnitRemoveAbility(u,1093677107)
				set yishu[i]=(yishu[i]-1)
				set jingmai[i]=(jingmai[i]-2)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去朱雀套装")
			elseif (ii1==3) then
				call ModifyHeroStat(0,u,1,$96)
				set juexuelingwu[i]=(juexuelingwu[i]-1)
				call UnitRemoveAbility(u,1093677108)
				call UnitRemoveAbility(u,1093677109)
				call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,$C8)
				set wuxing[i]=(wuxing[i]-2)
				set danpo[i]=(danpo[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去玄武套装")
			elseif (ii1==4) then
				call ModifyHeroStat(1,u,1,$C8)
				call ModifyHeroStat(2,u,1,100)
				call UnitRemoveAbility(u,1093677110)
				set juexuelingwu[i]=(juexuelingwu[i]-2)
				set fuyuan[i]=(fuyuan[i]-2)
				set danpo[i]=(danpo[i]-1)
				call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cFFFF0000失去白虎套装")
			endif
		endif
	endif
	set u = null
	set p = null
	set it =null
endfunction



//穿上装备
function mz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_CHARGED)))
endfunction
function nz takes nothing returns nothing
	local integer i=(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	local integer id=GetItemTypeId(GetManipulatedItem())
	local integer j = 1
	//call BJDebugMsg("触发了nz函数")
	//call BJDebugMsg("招式伤害增加"+I2S(R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害")))))
	//call BJDebugMsg("内力增加"+I2S(R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力")))))
	//call BJDebugMsg("真实伤害增加"+I2S(R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害")))))
	loop
		exitwhen j >= 30
		if id == shopweapon[j].id then  //在smelt_weapon里
			call shopweapon[j].PickUpWeapon(GetTriggerUnit(), GetManipulatedItem())
			exitwhen true
		endif
		set j = j + 1
	endloop
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,R2I(LoadReal(YDHT,id,StringHash("攻击力"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,R2I(LoadReal(YDHT,id,StringHash("防御"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),1,0,R2I(LoadReal(YDHT,id,StringHash("法力上限"))))
	call ModifyHeroStat(0,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害"))))
	call ModifyHeroStat(1,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力"))))
	call ModifyHeroStat(2,GetTriggerUnit(),0,R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害"))))
	set udg_baojishanghai[i]=(udg_baojishanghai[i]+LoadReal(YDHT,id,StringHash("暴击伤害"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击伤害")))
	set udg_baojilv[i]=(udg_baojilv[i]+LoadReal(YDHT,id,StringHash("暴击率"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击率")))
	set juexuelingwu[i]=juexuelingwu[i]+R2I(LoadReal(YDHT,id,StringHash("绝学领悟")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("绝学领悟")))
	set gengu[i]=gengu[i]+R2I(LoadReal(YDHT,id,StringHash("根骨")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("根骨")))
	set danpo[i]=danpo[i]+R2I(LoadReal(YDHT,id,StringHash("胆魄")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("胆魄")))
	set wuxing[i]=wuxing[i]+R2I(LoadReal(YDHT,id,StringHash("悟性")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("悟性")))
	set yishu[i]=yishu[i]+R2I(LoadReal(YDHT,id,StringHash("医术")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("医术")))
	set jingmai[i]=jingmai[i]+R2I(LoadReal(YDHT,id,StringHash("经脉")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("经脉")))
	set fuyuan[i]=fuyuan[i]+R2I(LoadReal(YDHT,id,StringHash("福缘")))+R2I(LoadReal(YDHT,id,StringHash("全属性")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("福缘")))
	set shanghaihuifu[i]=shanghaihuifu[i]+LoadReal(YDHT,id,StringHash("伤害回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("伤害回复"))
	set shaguaihufui[i]=shaguaihufui[i]+LoadReal(YDHT,id,StringHash("杀怪回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("杀怪回复"))
	set shengminghuifu[i]=shengminghuifu[i]+LoadReal(YDHT,id,StringHash("生命回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("生命回复"))
	set falihuifu[i]=falihuifu[i]+LoadReal(YDHT,id,StringHash("法力回复"))+LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("法力回复"))
	// if LoadReal(YDHT,id,StringHash("吸血"))==0.03 then
		// call UnitAddAbility(GetTriggerUnit(),'A009')
		// call SetPlayerAbilityAvailableBJ( false, 'A009', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.05 then
		// call UnitAddAbility(GetTriggerUnit(),'A00A')
		// call SetPlayerAbilityAvailableBJ( false, 'A00A', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.1 then
		// call UnitAddAbility(GetTriggerUnit(),'A00B')
		// call SetPlayerAbilityAvailableBJ( false, 'A00B', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.15 then
		// call UnitAddAbility(GetTriggerUnit(),'A00E')
		// call SetPlayerAbilityAvailableBJ( false, 'A00E', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.2 then
		// call UnitAddAbility(GetTriggerUnit(),'A00I')
		// call SetPlayerAbilityAvailableBJ( false, 'A00I', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.3 then
		// call UnitAddAbility(GetTriggerUnit(),'A00J')
		// call SetPlayerAbilityAvailableBJ( false, 'A00J', GetOwningPlayer(GetTriggerUnit()) )
	// endif
	// if LoadReal(YDHT,id,StringHash("攻击速度"))==10 then
		// call UnitAddAbility(GetTriggerUnit(),'A05E')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==15 then
		// call UnitAddAbility(GetTriggerUnit(),'A052')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==20 then
		// call UnitAddAbility(GetTriggerUnit(),'A06C')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==25 then
		// call UnitAddAbility(GetTriggerUnit(),'A08K')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==30 then
		// call UnitAddAbility(GetTriggerUnit(),'A06D')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==40 then
		// call UnitAddAbility(GetTriggerUnit(),'A06E')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==45 then
		// call UnitAddAbility(GetTriggerUnit(),'A008')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==50 then
		// call UnitAddAbility(GetTriggerUnit(),'A06F')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==60 then
		// call UnitAddAbility(GetTriggerUnit(),'A06G')
	// endif
	// if LoadReal(YDHT,id,StringHash("移动速度"))==70 then
		// call UnitAddAbility(GetTriggerUnit(),'A04J')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==30 then
		// call UnitAddAbility(GetTriggerUnit(),'A05B')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==80 then
		// call UnitAddAbility(GetTriggerUnit(),'A03E')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==100 then
		// call UnitAddAbility(GetTriggerUnit(),'A02N')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==160 then
		// call UnitAddAbility(GetTriggerUnit(),'A01Y')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==180 then
		// call UnitAddAbility(GetTriggerUnit(),'A01F')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==200 then
		// call UnitAddAbility(GetTriggerUnit(),'A0BA')
	// endif
	// if LoadReal(YDHT,id,StringHash("闪避"))==10 then
		// call UnitAddAbility(GetTriggerUnit(),'A00O')
		// call SetPlayerAbilityAvailableBJ( false, 'A00O', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==15 then
		// call UnitAddAbility(GetTriggerUnit(),'A00P')
		// call SetPlayerAbilityAvailableBJ( false, 'A00P', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==20 then
		// call UnitAddAbility(GetTriggerUnit(),'A00Q')
		// call SetPlayerAbilityAvailableBJ( false, 'A00Q', GetOwningPlayer(GetTriggerUnit()) )
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==30 then
		// call UnitAddAbility(GetTriggerUnit(),'A00R')
		// call SetPlayerAbilityAvailableBJ( false, 'A00R', GetOwningPlayer(GetTriggerUnit()) )
	// endif
endfunction
//脱下装备
function pz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_CHARGED)))
endfunction
function qz takes nothing returns nothing
	local integer i=(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	local integer id=GetItemTypeId(GetManipulatedItem())
	//call BJDebugMsg("触发了qz函数")
	//call BJDebugMsg("招式伤害减少"+I2S(R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害")))))
	//call BJDebugMsg("内力减少"+I2S(R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力")))))
	//call BJDebugMsg("真实伤害减少"+I2S(R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害")))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,1,R2I(LoadReal(YDHT,id,StringHash("攻击力"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,1,R2I(LoadReal(YDHT,id,StringHash("防御"))))
	call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),1,1,R2I(LoadReal(YDHT,id,StringHash("法力上限"))))
	call ModifyHeroStat(0,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("招式伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("招式伤害"))))
	call ModifyHeroStat(1,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("内力")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("内力"))))
	call ModifyHeroStat(2,GetTriggerUnit(),1,R2I(LoadReal(YDHT,id,StringHash("真实伤害")))+R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("真实伤害"))))
	set udg_baojishanghai[i]=(udg_baojishanghai[i]-LoadReal(YDHT,id,StringHash("暴击伤害"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击伤害")))
	set udg_baojilv[i]=(udg_baojilv[i]-LoadReal(YDHT,id,StringHash("暴击率"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("暴击率")))
	set juexuelingwu[i]=juexuelingwu[i]-R2I(LoadReal(YDHT,id,StringHash("绝学领悟")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("绝学领悟")))
	set gengu[i]=gengu[i]-R2I(LoadReal(YDHT,id,StringHash("根骨")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("根骨")))
	set danpo[i]=danpo[i]-R2I(LoadReal(YDHT,id,StringHash("胆魄")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("胆魄")))
	set wuxing[i]=wuxing[i]-R2I(LoadReal(YDHT,id,StringHash("悟性")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("悟性")))
	set yishu[i]=yishu[i]-R2I(LoadReal(YDHT,id,StringHash("医术")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("医术")))
	set jingmai[i]=jingmai[i]-R2I(LoadReal(YDHT,id,StringHash("经脉")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("经脉")))
	set fuyuan[i]=fuyuan[i]-R2I(LoadReal(YDHT,id,StringHash("福缘")))-R2I(LoadReal(YDHT,id,StringHash("全属性")))-R2I(LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("福缘")))
	set shanghaihuifu[i]=shanghaihuifu[i]-LoadReal(YDHT,id,StringHash("伤害回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("伤害回复"))
	set shaguaihufui[i]=shaguaihufui[i]-LoadReal(YDHT,id,StringHash("杀怪回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("杀怪回复"))
	set shengminghuifu[i]=shengminghuifu[i]-LoadReal(YDHT,id,StringHash("生命回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("生命回复"))
	set falihuifu[i]=falihuifu[i]-LoadReal(YDHT,id,StringHash("法力回复"))-LoadReal(YDHT,GetHandleId(GetManipulatedItem()),StringHash("法力回复"))
	// if LoadReal(YDHT,id,StringHash("吸血"))==0.03 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A009')
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.05 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00A')
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.1 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00B')
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.15 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00E')
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.2 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00I')
	// elseif LoadReal(YDHT,id,StringHash("吸血"))==0.3 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00J')
	// endif
	// if LoadReal(YDHT,id,StringHash("攻击速度"))==10 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A05E')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==15 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A052')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==20 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A06C')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==25 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A08K')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==30 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A06D')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==40 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A06E')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==45 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A008')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==50 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A06F')
	// elseif LoadReal(YDHT,id,StringHash("攻击速度"))==60 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A06G')
	// endif
	// if LoadReal(YDHT,id,StringHash("移动速度"))==70 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A04J')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==30 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A05B')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==80 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A03E')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==100 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A02N')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==160 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A01Y')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==180 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A01F')
	// elseif LoadReal(YDHT,id,StringHash("移动速度"))==200 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A0BA')
	// endif
	// if LoadReal(YDHT,id,StringHash("闪避"))==10 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00O')
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==15 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00P')
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==20 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00Q')
	// elseif LoadReal(YDHT,id,StringHash("闪避"))==30 then
		// call UnitRemoveAbility(GetTriggerUnit(),'A00R')
	// endif
endfunction

//江湖忠
function UnitHaveJueZhanBa takes nothing returns boolean
	return((UnitHaveItem(GetAttacker(),'I08V')))
endfunction
function JueZhanBaXiaoGuo takes nothing returns nothing
	local unit u = GetTriggerUnit()
	if((ModuloInteger(GetUnitPointValue(u),100)==0))then
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.1*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.05*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	else
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	endif
	set u = null
endfunction
//决战霸
function UnitHaveJiangHuZhong takes nothing returns boolean
	return((UnitHaveItem(GetTriggerUnit(),'I090')))
endfunction
function JiangHuZhongXiaoGuo takes nothing returns nothing
local unit u = GetAttacker()
	if((ModuloInteger(GetUnitPointValue(u),100)==0))then
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.1*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.05*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	else
		if (GetUnitState(u,UNIT_STATE_LIFE)<= 0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(u,1.)
		else
			call SetWidgetLife(u,GetWidgetLife(u)-0.01*GetUnitState(u,UNIT_STATE_MAX_LIFE))
		endif
	endif
	set u = null
endfunction
//穿武器或衣服
function Mz takes nothing returns boolean
	return(((GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT)or(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE))and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function ItemChongFu takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	set E8=1
	set udg_wuqishu[i]=0
	set udg_yifushu[i]=0
	loop
		exitwhen E8>6
		if (GetItemType(UnitItemInSlotBJ(u,E8))==ITEM_TYPE_ARTIFACT) then
			set udg_wuqishu[i]=udg_wuqishu[i]+1
		endif
		if (GetItemType(UnitItemInSlotBJ(u,E8))==ITEM_TYPE_PURCHASABLE) then
			set udg_yifushu[i]=udg_yifushu[i]+1
		endif
		if((GetItemType(UnitItemInSlotBJ(u,E8))==GetItemType(GetManipulatedItem()))and(UnitItemInSlotBJ(u,E8)!=GetManipulatedItem()) and Ce[i]!=7) then
			call UnitRemoveItemSwapped(UnitItemInSlotBJ(u,E8),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000非丫鬟角色最多只能携带一件武器和衣服")
		endif
		set E8=E8+1
	endloop
	if Ce[i]==7 and udg_junzhu[i]==false then
		if GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT and udg_wuqishu[i]>=3 then
			call UnitRemoveItemSwapped(GetManipulatedItem(),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000丫鬟最多只能携带两件武器")
		endif
		if GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE and udg_yifushu[i]>=3 then
			call UnitRemoveItemSwapped(GetManipulatedItem(),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000丫鬟最多只能穿两件衣服")
		endif
	endif
	set u = null
	set p = null
endfunction
//-------套装系统开始--------
function Pz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemLevel(GetManipulatedItem())==3)or(GetItemLevel(GetManipulatedItem())==6)))
endfunction
function Qz takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if((F8[i]==false)and(UnitHaveItem(u,'I01L'))and(UnitHaveItem(u,'I01M')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※精钢套装※|R\n|CFFB2FF00招式伤害+150\n暴击率+4%\n暴击伤害+30%\n杀怪回复+500\n根骨+1\n胆魄+1|R")
		set F8[i]=true
		call ModifyHeroStat(0,u,0,$96)
		set udg_baojilv[i]=(udg_baojilv[i]+.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+.3)
		set shaguaihufui[i]=(shaguaihufui[i]+500.)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((XNKL[i]==false)and(UnitHaveItem(u,'I0A8'))and(UnitHaveItem(u,'I0A9')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※新年快乐套装※|R\n|CFFB2FF00全属性+1000\n全性格属性+5|R")
		set XNKL[i]=true
		call ModifyHeroStat(0,u,0,1000)
		call ModifyHeroStat(1,u,0,1000)
		call ModifyHeroStat(2,u,0,1000)
		set jingmai[i]=(jingmai[i]+5)
		set fuyuan[i]=(fuyuan[i]+5)
		set wuxing[i]=(wuxing[i]+5)
		set yishu[i]=(yishu[i]+5)
		set gengu[i]=(gengu[i]+5)
		set danpo[i]=(danpo[i]+5)
	endif
	if((H8[i]==false)and(UnitHaveItem(u,1227895118))and(UnitHaveItem(u,1227895119))and(UnitHaveItem(u,1227895120)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※七星套装※|R\n|CFFB2FF00招式伤害+200\n魔法上限+15\n法力恢复+5\n气血+10000\n每秒恢复+130\n医术+1\n悟性+1|R")
		set H8[i]=true
		call ModifyHeroStat(0,u,0,$C8)
		call YDWEGeneralBounsSystemUnitSetBonus(u,1,0,15)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$2710)
		call UnitAddAbility(u,1093678424)
		call UnitAddAbility(u,1093678425)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
	endif
	if((I8[i]==false)and(UnitHaveItem(u,'I01Q'))and(UnitHaveItem(u,'I01R')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※破军套装※|R\n|CFFB2FF00攻击速度+30%\n气血+10000\n每秒回复+400\n防御+30\n胆魄+1\n福缘+1")
		set I8[i]=true
		call UnitAddAbility(u,1093678426)
		call UnitAddAbility(u,1093678640)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$2710)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,30)
		set danpo[i]=(danpo[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
	endif
	if((l8[i]==false)and(UnitHaveItem(u,'I00X'))and(UnitHaveItem(u,'I00Y')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※绝恋套装※|R\n|CFFB2FF00招式伤害+150\n真实伤害+100\n绝学领悟力+1\n气血+15000\n每秒回复+300\n伤害回复+300\n全性格属性+1")
		set l8[i]=true
		call ModifyHeroStat(0,u,0,$96)
		call ModifyHeroStat(2,u,0,100)
		set juexuelingwu[i]=(juexuelingwu[i]+1)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,$3A98)
		call UnitAddAbility(u,1093678641)
		set shanghaihuifu[i]=(shanghaihuifu[i]+300.)
		set jingmai[i]=(jingmai[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((G8[i]==false)and(UnitHaveItem(u,'I00Z'))and(UnitHaveItem(u,'I010')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※倾城套装※|R\n|CFFB2FF00防御+170\n绝学领悟力+1\n暴击率+4%\n暴击伤害+30%\n杀怪回复+600\n全性格属性+1")
		set G8[i]=true
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,$AA)
		set juexuelingwu[i]=(juexuelingwu[i]+1)
		set udg_baojilv[i]=(udg_baojilv[i]+.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+.3)
		set shaguaihufui[i]=(shaguaihufui[i]+600.)
		set jingmai[i]=(jingmai[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
		set gengu[i]=(gengu[i]+1)
		set danpo[i]=(danpo[i]+1)
	endif
	if((Ee[i]==false)and(UnitHaveItem(u,'I08V'))and(UnitHaveItem(u,'I08W'))and(UnitHaveItem(u,'I08X')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※江湖套装※|R\n|CFFB2FF00内力+300\n真实伤害+200\n暴击伤害+150%\n法力恢复+10\n暴击率+20%\n绝学领悟力+4\n全性格属性+3\n武功伤害+60%")
		set Ee[i]=true
		call ModifyHeroStat(1,u,0,300)
		call ModifyHeroStat(2,u,0,$C8)
		call UnitAddAbility(u,1093681741)
		set udg_baojilv[i]=(udg_baojilv[i]+.2)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]+1.5)
		set juexuelingwu[i]=(juexuelingwu[i]+4)
		set jingmai[i]=(jingmai[i]+3)
		set fuyuan[i]=(fuyuan[i]+3)
		set wuxing[i]=(wuxing[i]+3)
		set yishu[i]=(yishu[i]+3)
		set gengu[i]=(gengu[i]+3)
		set danpo[i]=(danpo[i]+3)
		set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]+.6)
	endif
	if((De[i]==false)and(UnitHaveItem(u,'I090'))and(UnitHaveItem(u,'I08Z'))and(UnitHaveItem(u,'I08Y')))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffFF4d00※决战套装※|R\n|CFFB2FF00招式伤害+1000\n伤害回复+600\n气血+100000\n每秒恢复+1000\n防御+1000\n绝学领悟力+4\n全性格属性+3\n伤害吸收+30%")
		set De[i]=true
		call ModifyHeroStat(0,u,0,1000)
		set shanghaihuifu[i]=(shanghaihuifu[i]+600.)
		call UnitAddAbility(u,1093681742)
		call UnitAddAbility(u,1093681743)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,1000)
		set juexuelingwu[i]=(juexuelingwu[i]+4)
		set jingmai[i]=(jingmai[i]+3)
		set fuyuan[i]=(fuyuan[i]+3)
		set wuxing[i]=(wuxing[i]+3)
		set yishu[i]=(yishu[i]+3)
		set gengu[i]=(gengu[i]+3)
		set danpo[i]=(danpo[i]+3)
		set udg_shanghaixishou[i]=(udg_shanghaixishou[i]+.3)
	endif
	set u = null
	set p = null
endfunction
//失去套装
function Sz takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemLevel(GetManipulatedItem())==3)or(GetItemLevel(GetManipulatedItem())==6)))
endfunction
function Tz takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	call YDWEPolledWaitNull(.01)
	if((F8[i])and((UnitHaveItem(u,'I01L')==false)or(UnitHaveItem(u,'I01M')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去精钢套装属性|R")
		set F8[i]=false
		call ModifyHeroStat(0,u,1,$96)
		set udg_baojilv[i]=(udg_baojilv[i]-.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-.3)
		set shaguaihufui[i]=(shaguaihufui[i]-500.)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((XNKL[i])and((UnitHaveItem(u,'I0A8')==false)or(UnitHaveItem(u,'I0A9')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去新年快乐套装属性|R")
		set XNKL[i]=false
		call ModifyHeroStat(0,u,1,1000)
		call ModifyHeroStat(1,u,1,1000)
		call ModifyHeroStat(2,u,1,1000)
		set jingmai[i]=(jingmai[i]-5)
		set fuyuan[i]=(fuyuan[i]-5)
		set wuxing[i]=(wuxing[i]-5)
		set yishu[i]=(yishu[i]-5)
		set gengu[i]=(gengu[i]-5)
		set danpo[i]=(danpo[i]-5)
	endif
	if((H8[i])and((UnitHaveItem(u,1227895118)==false)or(UnitHaveItem(u,1227895119)==false)or(UnitHaveItem(u,1227895120)==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去七星套装属性|R")
		set H8[i]=false
		call ModifyHeroStat(0,u,1,$C8)
		call YDWEGeneralBounsSystemUnitSetBonus(u,1,1,15)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$2710)
		call UnitRemoveAbility(u,1093678424)
		call UnitRemoveAbility(u,1093678425)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
	endif
	if((I8[i])and((UnitHaveItem(u,'I01Q')==false)or(UnitHaveItem(u,'I01R')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去破军套装属性|R")
		set I8[i]=false
		call UnitRemoveAbility(u,1093678426)
		call UnitRemoveAbility(u,1093678640)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$2710)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,30)
		set danpo[i]=(danpo[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
	endif
	if((l8[i])and((UnitHaveItem(u,'I00X')==false)or(UnitHaveItem(u,'I00Y')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去绝恋套装属性|R")
		set l8[i]=false
		call ModifyHeroStat(0,u,1,$96)
		call ModifyHeroStat(2,u,1,100)
		set juexuelingwu[i]=(juexuelingwu[i]-1)
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,1,$3A98)
		call UnitRemoveAbility(u,1093678641)
		set shanghaihuifu[i]=(shanghaihuifu[i]-300.)
		set jingmai[i]=(jingmai[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((G8[i])and((UnitHaveItem(u,'I00Z')==false)or(UnitHaveItem(u,'I010')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去倾城套装属性|R")
		set G8[i]=false
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,$AA)
		set juexuelingwu[i]=(juexuelingwu[i]-1)
		set udg_baojilv[i]=(udg_baojilv[i]-.04)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-.3)
		set shaguaihufui[i]=(shaguaihufui[i]-600.)
		set jingmai[i]=(jingmai[i]-1)
		set fuyuan[i]=(fuyuan[i]-1)
		set wuxing[i]=(wuxing[i]-1)
		set yishu[i]=(yishu[i]-1)
		set gengu[i]=(gengu[i]-1)
		set danpo[i]=(danpo[i]-1)
	endif
	if((Ee[i])and((UnitHaveItem(u,'I08V')==false)or(UnitHaveItem(u,'I08W')==false)or(UnitHaveItem(u,'I08X')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去江湖套装属性|R")
		set Ee[i]=false
		call ModifyHeroStat(1,u,1,300)
		call ModifyHeroStat(2,u,1,$C8)
		call UnitRemoveAbility(u,1093681741)
		set udg_baojilv[i]=(udg_baojilv[i]-.2)
		set udg_baojishanghai[i]=(udg_baojishanghai[i]-1.5)
		set juexuelingwu[i]=(juexuelingwu[i]-4)
		set jingmai[i]=(jingmai[i]-3)
		set fuyuan[i]=(fuyuan[i]-3)
		set wuxing[i]=(wuxing[i]-3)
		set yishu[i]=(yishu[i]-3)
		set gengu[i]=(gengu[i]-3)
		set danpo[i]=(danpo[i]-3)
		set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]-.6)
	endif
	if((De[i])and((UnitHaveItem(u,'I090')==false)or(UnitHaveItem(u,'I08Z')==false)or(UnitHaveItem(u,'I08Y')==false)))then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|cffff00ff失去决战套装属性|R")
		set De[i]=false
		call ModifyHeroStat(0,u,1,1000)
		set shanghaihuifu[i]=(shanghaihuifu[i]-600.)
		call UnitRemoveAbility(u,1093681742)
		call UnitRemoveAbility(u,1093681743)
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,1,1000)
		set juexuelingwu[i]=(juexuelingwu[i]-4)
		set jingmai[i]=(jingmai[i]-3)
		set fuyuan[i]=(fuyuan[i]-3)
		set wuxing[i]=(wuxing[i]-3)
		set yishu[i]=(yishu[i]-3)
		set gengu[i]=(gengu[i]-3)
		set danpo[i]=(danpo[i]-3)
		set udg_shanghaixishou[i]=(udg_shanghaixishou[i]-.3)
	endif
	set u = null
	set p = null
endfunction
//镇妖升级
function DoHaveZhenYao takes unit uc, unit ut returns boolean
	local unit u = udg_hero[(1+GetPlayerId(GetOwningPlayer(uc)))]
	if (uc == null or GetUnitTypeId(ut)=='n000' or GetUnitPointValue(ut)==10) then
		return false
	else
		if UnitHaveItem(u, 'I02S') or UnitHaveItem(u, 'I02M') or UnitHaveItem(u, 'I02Q') or UnitHaveItem(u, 'I02R') then
			return true
		endif
	endif
	return false
endfunction
function Vz takes nothing returns boolean
	return DoHaveZhenYao(GetKillingUnit(),GetTriggerUnit())
endfunction
function ZhenYaoLevelUp takes unit u, integer id, integer id2, integer value returns nothing
	local integer i = 0
	call SetWidgetLife(FetchUnitItem(u,id),GetWidgetLife(FetchUnitItem(u,id))-1)
	if UnitHaveItem(u, id) then
		if(500000.-GetWidgetLife(FetchUnitItem(u,id))<I2R(value))then
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"成长值："+(I2S(R2I(500000.-GetWidgetLife(FetchUnitItem(u,id))))+" / "+I2S(value)))
		else
			set i = GetItemUserData(FetchUnitItem(u,id))
			call RemoveItem(FetchUnitItem(u,id))
			call createitemloc(id2,v7[9])
			call SetItemUserData(bj_lastCreatedItem,i)
			call UnitAddItem(u,bj_lastCreatedItem)
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFF33FF00恭喜养武等级获得提升")
		endif
	endif
endfunction
function Wz takes nothing returns nothing
	local unit u = udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]
	call ZhenYaoLevelUp(u, 'I02S', 'I02M', 200)
	call ZhenYaoLevelUp(u, 'I02M', 'I02Q', 500)
	call ZhenYaoLevelUp(u, 'I02Q', 'I02R', 800)
	call ZhenYaoLevelUp(u, 'I02R', 'I02P', 1200)
endfunction
//-------镶嵌宝石系统开始-------//
function IsXiangQian takes item it, unit u returns boolean
	if GetItemTypeId(it)=='I05R' or GetItemTypeId(it)=='I05Q' or GetItemTypeId(it)=='I05M' or GetItemTypeId(it)=='I05O' or GetItemTypeId(it)=='I05P' or GetItemTypeId(it)=='I05N' then
		if Ce[1+GetPlayerId(GetOwningPlayer(u))]!=2 then
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00你不是锻造师，不可以镶嵌宝石")
			call AdjustPlayerStateBJ(20000,GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
			return false
	    else
	        return true
        endif
    endif
    return false
endfunction
function kA takes nothing returns boolean
	return IsXiangQian(GetManipulatedItem(), GetTriggerUnit())
endfunction
function XiangQian takes unit u, item it, item it2, integer id, integer i returns nothing
	local player p = GetOwningPlayer(u)
	local integer ii1 = ModuloInteger(GetItemUserData(it)/1000, 10)
	local integer ii2 = ModuloInteger(GetItemUserData(it)/100, 10)
	local integer ii3 = ModuloInteger(GetItemUserData(it)/10, 10)
	if GetItemTypeId(it2)==id then
		if (ii1==0) then
			call AdjustPlayerStateBJ(20000,p,PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你的第一格物品无法镶嵌宝石")
		else
			call SetItemPositionLoc(it,v7[9])
			if (ii2==0) then
				call SetItemUserData(it,GetItemUserData(it)+100*i-1000)
			else
				if (ii3==0) then
					call SetItemUserData(it,GetItemUserData(it)+10*i-1000)
				else
					call SetItemUserData(it,GetItemUserData(it)+1*i-1000)
				endif
			endif
			call UnitAddItem(u,it)
		endif
	endif
	set p = null
endfunction
function mA takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local item it = UnitItemInSlotBJ(u,1)
	call XiangQian(u, it, GetManipulatedItem(), 'I05M', 1)
	call XiangQian(u, it, GetManipulatedItem(), 'I05P', 2)
	call XiangQian(u, it, GetManipulatedItem(), 'I05O', 3)
	call XiangQian(u, it, GetManipulatedItem(), 'I05Q', 4)
	call XiangQian(u, it, GetManipulatedItem(), 'I05R', 5)
	call XiangQian(u, it, GetManipulatedItem(), 'I05N', 6)
	set u = null
	set it = null
endfunction
//-------镶嵌宝石系统结束-------//
function CA takes nothing returns nothing
	set udg_counter1=udg_counter1+1
	set q7[udg_counter1]=GetUnitTypeId(GetEnumUnit())
	set r7[udg_counter1]=GetEnumUnit()
	set m7[udg_counter1]=GetUnitLoc(GetEnumUnit())
endfunction
function cA takes nothing returns nothing
	set m7[0]=GetRectCenter(Ge)
	set nn7=CountUnitsInGroup((AddPlayerUnitIntoGroup((Player(12)),null)))
	set o7=CountUnitsInGroup((AddPlayerUnitIntoGroup((Player(15)),null)))
	call ForGroupBJ((AddPlayerUnitIntoGroup((Player(12)),null)),function CA)
	call ForGroupBJ((AddPlayerUnitIntoGroup((Player(15)),null)),function CA)
endfunction
//怪物死后重新刷怪
function EA takes nothing returns nothing
	//圣兽死后不刷新
	if GetTriggerUnit()!=udg_qinglong and GetTriggerUnit()!=udg_baihu and GetTriggerUnit()!=udg_zhuque and GetTriggerUnit()!=udg_xuanwu and GetTriggerUnit()!=gg_unit_n00M_0131 then
		call YDWEPolledWaitNull(.02)
		set s7=1
		//call BJDebugMsg(GetUnitName(GetTriggerUnit()))
		//call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
		loop

			exitwhen s7>(nn7+o7)
			if((GetTriggerUnit()==r7[s7]))then
			    if((s7<=nn7))then
				    //call BJDebugMsg("s7="+I2S(s7))
			        //call BJDebugMsg(I2S(q7[s7]))
			        if((GetUnitTypeId(GetTriggerUnit())!='n000'))then
			            call CreateNUnitsAtLoc(1,'n000',Player(12),m7[0],bj_UNIT_FACING)
			            call UnitApplyTimedLifeBJ(((.18-(.01*I2R(O4)))*I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit())))),'BTLF',bj_lastCreatedUnit)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        else
			            call CreateNUnitsAtLoc(1,q7[s7],Player(12),m7[s7],bj_UNIT_FACING)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        endif
			    else
			        if((GetUnitTypeId(GetTriggerUnit())!='n000'))then
			            call CreateNUnitsAtLoc(1,'n000',Player(12),m7[0],bj_UNIT_FACING)
			            call UnitApplyTimedLifeBJ(((.18-(.01*I2R(O4)))*I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit())))),'BTLF',bj_lastCreatedUnit)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        else
			            call CreateNUnitsAtLoc(1,q7[s7],Player(15),m7[s7],bj_UNIT_FACING)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        endif
			    endif
			endif
			set s7=s7+1
		endloop
	endif
endfunction
function GA takes nothing returns boolean
	return(ShiFouShuaGuai)
endfunction
//BOSS成长
function BOSSChengZhang takes nothing returns nothing
	local timer t=GetExpiredTimer()
    if udg_boss[udg_boshu/4]!=null then
	    if IsUnitAliveBJ(udg_boss[udg_boshu/4]) then
		    if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')==0 then
	            call UnitAddAbility(udg_boss[udg_boshu/4],'A0DB')
	            call  DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教BOSS"+GetUnitName(udg_boss[udg_boshu/4])+"已加强")
	        else
	            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')<10 then
	                call IncUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')
	                call  DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教BOSS"+GetUnitName(udg_boss[udg_boshu/4])+"已加强")
                endif
            endif
            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')==0 then
	            call UnitAddAbility(udg_boss[udg_boshu/4],'A0CP')
	        else
	            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')<6 then
		            call IncUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')
		        else
	                call UnitAddAbility(udg_boss[udg_boshu/4],'A0C1')
                endif
            endif
	    else
	        call PauseTimer(t)
	        call DestroyTimer(t)
        endif
    else
        call PauseTimer(t)
        call DestroyTimer(t)
    endif
	set t=null
endfunction

//玩家等级大于波数*4
function LevelGuoGao takes nothing returns boolean
	local integer i=0
	local integer totallevel=0
	local real r=0.
	loop
		exitwhen i > 11
		if udg_hero[i]!=null then
            set totallevel=totallevel+GetUnitLevel(udg_hero[i])
        endif
		set i = i + 1
	endloop
	if   udg_teshushijian and I2R(totallevel)>udg_boshu*4*I2R(GetNumPlayer()) then
		return true
	endif
	return false
endfunction
//刷怪
function HA takes nothing returns nothing
	local timer t=CreateTimer()
	if udg_boshu==5 and udg_teshushijian==true then
		call ChooseNanDu()
	endif
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033邪教势力：第"+(I2S(udg_boshu)+"|CFFFF0033波")))
	if udg_boshu==9 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能神圣护甲和10倍暴击"))
	elseif udg_boshu==11 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能咆哮和重击"))
	elseif udg_boshu==12 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为空军"))
	elseif udg_boshu==13 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能噬血术"))
	elseif udg_boshu==14 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为绞肉车，死亡后会产生小蜘蛛"))
	elseif udg_boshu==15 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为空军，拥有技能20倍暴击"))
	elseif udg_boshu==16 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能精灵之火"))
	elseif udg_boshu==17 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能狂战士和30倍暴击"))
	elseif udg_boshu==18 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪血量很高，并拥有技能嘲讽"))
	elseif udg_boshu==19 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能狂热"))
	elseif udg_boshu==20 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能变相移动"))
	elseif udg_boshu==21 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能反魔法外壳"))
	elseif udg_boshu==22 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能重击"))
	elseif udg_boshu==23 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能90%闪避"))
	elseif udg_boshu==24 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能卡布恩（自爆）"))
	elseif udg_boshu==25 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能闪电攻击"))
	elseif udg_boshu==26 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能神圣护甲"))
	elseif udg_boshu==27 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪血量很高，并拥有技能永久献祭和重生"))
	elseif udg_boshu==28 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：本波为最后一波进攻，本波结束后教主即将出现"))
	endif
	if LevelGuoGao() then
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033激活特殊事件|cFFDDA0DD※邪教全力进攻※")
	endif
	call StopMusic(false)
	call PlayMusicBJ(yh)
	call EnableTrigger(Yi)
	call YDWEPolledWaitNull(60.)
	if((O4>1))then
		call EnableTrigger(Zi)
	    if((ModuloInteger(udg_boshu,4)==0)and(udg_boshu<28) and udg_shengchun==false)then
	        call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)],Player(6),v7[8],v7[3])
	        call GroupAddUnit(w7,bj_lastCreatedUnit)
	        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
	        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教趁我方不备，偷偷地派出BOSS从背后杀过来了，请准备防御")
	    endif
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教趁我方不备，偷偷地从背后杀过来了")

	endif
	if((ModuloInteger(udg_boshu,4)==0)and(udg_boshu<30)and udg_shengchun==false)then
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教派出BOSS前来进攻，请准备防御")
	    call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)],Player(6),v7[6],v7[4])
	    if udg_boshu==4 then
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C2')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C2',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C5')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C5',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C7')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C7',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==8 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CF')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CF',IMinBJ(udg_nandu*2,9))
	    	//call UnitAddAbility(bj_lastCreatedUnit,'A0CM')
	    	//call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CM',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DA')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DA',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==12 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CI')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CI',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CJ')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CJ',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CN')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CN',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==16 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0C8')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C8',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C9')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C9',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CB')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CB',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==20 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CH')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CH',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DE')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DE',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==24 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CK')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CK',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DH')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DH',IMinBJ(udg_nandu*2,9))
	    endif
	    set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	    call TimerStart(t,20,true,function BOSSChengZhang)
	    call GroupAddUnit(w7,bj_lastCreatedUnit)
	    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	elseif((ModuloInteger(udg_boshu,4)!=0)and(udg_boshu<28)and udg_shengchun==false)then
	    if LevelGuoGao() then
		    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033由于激活特殊事件，邪教派出BOSS前来进攻，请准备防御")
	        call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)+1],Player(6),v7[6],v7[4])
	        set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	        call TimerStart(t,20,true,function BOSSChengZhang)
	        call GroupAddUnit(w7,bj_lastCreatedUnit)
	        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	    endif
	endif
	call YDWEPolledWaitNull(20.)
	if((ue>0))then
	call ConditionalTriggerExecute(dj)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033名门高手开始进攻，大家要小心应付了！")
	endif
	call DisableTrigger(Yi)
	call YDWEPolledWaitNull(10.)
	if((O4>1))then
		call DisableTrigger(Zi)
	endif
	set udg_boshu=udg_boshu+1
	call StopMusic(false)
	call PlayMusicBJ(xh)
	if udg_sutong == false then
		call YDWEPolledWaitNull(135-GetNumPlayer()*10)
	endif
	if((udg_boshu>=29) and udg_shengchun==false)then
	    call StopMusic(false)
	    call PlayMusicBJ(zh)
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033西域势力最后BOSS即将发起最后进攻，请作好防守准备")
	    call CreateNUnitsAtLocFacingLocBJ(1,u7[8],Player(6),v7[6],v7[4])
	    set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	    call TimerStart(t,20,true,function BOSSChengZhang)
	    call GroupAddUnit(w7,bj_lastCreatedUnit)
	    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	else
	    if udg_shengchun==true then
		    call AddPlayerTechResearched(Player(12),'R004',1)
		    call AddPlayerTechResearched(Player(6),'R004',1)
	    endif
	    if((x7>=1))then
	        call TriggerExecute(ij)
	    else
	        call TriggerExecute(hj)
	    endif
	endif
	set t=null
endfunction
function JiaJiNeng takes unit u returns nothing
    if udg_boshu>=8 then
	    call UnitAddAbility(u,'A0CX')
	    if udg_boshu>=18 then
	        call UnitAddAbility(u,'A0CY')
	        if udg_boshu>=28 then
	            call UnitAddAbility(u,'A0CZ')
            endif
        endif
    endif
endfunction
function lA takes nothing returns nothing
	if udg_shengchun==false then
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[6],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[7],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[5],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        if LevelGuoGao() then
        	call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[6],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
            call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[7],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
            call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[5],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        endif
    else
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[6],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[7],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[5],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
    endif
endfunction
function KA takes nothing returns nothing
	if udg_shengchun==false then
        call CreateNUnitsAtLocFacingLocBJ(1,y7[(udg_boshu+1)],Player(6),v7[8],v7[3])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        if LevelGuoGao() then
        	call CreateNUnitsAtLocFacingLocBJ(1,y7[(udg_boshu+1)],Player(6),v7[8],v7[3])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        endif
    else
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[8],v7[3])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        call JiaJiNeng(bj_lastCreatedUnit)
    endif
endfunction
function MA takes nothing returns boolean
	return (ShiFouShuaGuai)
endfunction
function NA takes nothing returns nothing
	local integer i = 1
	local integer j = 1
	local integer l = 0
	local real r1 = 0
	local real r2 = 0
	local real rr3 = 1.
	local real rr4 = 1.
	if((ue==1))then
		set r1 = 1.26
		set r2 = 1.4
	elseif((ue==2))then
		set r1 = 1.28
		set r2 = 1.43
	elseif((ue==3))then
		set r1 = 1.3
		set r2 = 1.46
	elseif((ue==4))then
		set r1 = 1.32
		set r2 = 1.49
	elseif((ue==5))then
		set r1 = 1.34
		set r2 = 1.52
	endif
	loop
		exitwhen i>ue
		loop
			exitwhen j>udg_boshu
			if (j<udg_boshu) then
				set rr3 = rr3*r1
				set rr4 = rr4*r2
			endif
			set j=j+1
		endloop
		set l = GetRandomInt(1,11)
		call CreateNUnitsAtLocFacingLocBJ(1,ve[l],Player(6),v7[GetRandomInt(5,8)],v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
		call SetHeroLevelBJ(bj_lastCreatedUnit,(4*udg_boshu),false)
		call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,3,0,R2I(I2R(xe[l])*(rr3*3.3)))
		call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,2,0,(((udg_boshu-1)*ye[l]*9)/10)*ue)
		//call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,1,0,R2I(I2R(ze[l])*rr4))
		call unitadditembyidswapped(Ae[udg_boshu],bj_lastCreatedUnit)
		set i=i+1
	endloop
	//set ue=0
endfunction
function PA takes nothing returns nothing
	call DestroyTimerDialog(z7[1])
	call ConditionalTriggerExecute(Xi)
endfunction
function RA takes nothing returns nothing
	call DestroyTimerDialog(z7[2])
	call ConditionalTriggerExecute(Xi)
	//set x7=0
endfunction
function TA takes nothing returns nothing
	call DestroyTimerDialog(z7[3])
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
	if udg_teshushijian==true then
		call ChooseNanDu()
	endif
	call ConditionalTriggerExecute(Xi)
endfunction
function VA takes nothing returns nothing
	call StartTimerBJ(A7[1],false,(30.+I2R(ie)))
	call CreateTimerDialogBJ(bj_lastStartedTimer,"邪教下次进攻时间")
	set z7[1]=bj_lastCreatedTimerDialog
	set ie=0
endfunction
function XA takes nothing returns nothing
	call StartTimerBJ(A7[2],false,(x7*60.+30.+I2R(ie)))
	call CreateTimerDialogBJ(bj_lastStartedTimer,"邪教下次进攻时间")
	set z7[2]=bj_lastCreatedTimerDialog
	set ie=0
	set x7=0
endfunction
function ZA takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227894853))
endfunction
function ea takes nothing returns nothing
	set x7=x7+1
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF00FF4C在武林弟子的奋力帮助下，邪教的进攻势力被延缓了，大家有1分钟的时间，赶紧去做任务吧~")
	call PlaySoundOnUnitBJ(Dh,100,GetTriggerUnit())
	set shoujiajf[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=shoujiajf[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]+10
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00FF4C守家积分+10")
endfunction
function ga takes nothing returns nothing
	call IssuePointOrderByIdLoc(GetEnumUnit(),$D000F,v7[4])
endfunction
function ha takes nothing returns nothing
	call ForGroupBJ(w7,function ga)
endfunction
function ja takes nothing returns boolean
	return((IsUnitInGroup(GetTriggerUnit(),w7)))
endfunction
function ka takes nothing returns nothing
	call GroupRemoveUnit(w7,GetTriggerUnit())
endfunction
//练功房刷怪
function na takes nothing returns boolean
	return(((GetOwningPlayer(GetFilterUnit())==Player(7))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
 function qa takes nothing returns nothing
    if((CountUnitsInGroup(wv(Ie,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[1],bj_UNIT_FACING)
    endif
    if((CountUnitsInGroup(wv(Re,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[$A],bj_UNIT_FACING)
    endif
    if((CountUnitsInGroup(wv(le,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[2],bj_UNIT_FACING)
    endif
endfunction
//练功房
function sa takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895350))
endfunction
function ua takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房二")
	call SetUnitPosition(GetTriggerUnit(), 4750, -3650)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),4250, -3650,0)
endfunction
function wa takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895351))
endfunction
function xa takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房三")
	call SetUnitPosition(GetTriggerUnit(), 5920, -4750)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),5920,-4750,0)
endfunction
function za takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895361))
endfunction
function Aa takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房一")
	call SetUnitPosition(GetTriggerUnit(), 3730, -4690)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),3730, -4690,0)
endfunction
//切换物品
function Ba takes nothing returns boolean
	return((GetSpellAbilityId()==1093677134))
endfunction
function ba takes nothing returns nothing
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(b7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(C7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],B7))
		set B7=B7+1
	endloop
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(C7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(GetTriggerUnit(),B7))
		set B7=B7+1
	endloop
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(GetTriggerUnit(),UnitItemInSlotBJ(b7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],B7))
		set B7=B7+1
	endloop
endfunction
//鸟的贩卖技能
function ca takes nothing returns boolean
	return((GetSpellAbilityId()==1093679433))
endfunction
function Da takes nothing returns nothing
	call CreateNUnitsAtLoc(1,'nvul',GetOwningPlayer(GetTriggerUnit()),v7[9],bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddItem(bj_lastCreatedUnit,CreateItem(GetItemTypeId(GetSpellTargetItem()),0,0))
	call UnitDropItemTarget(bj_lastCreatedUnit,UnitItemInSlotBJ(bj_lastCreatedUnit,1),Rs)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
	call RemoveItem(GetSpellTargetItem())
	call PlaySoundOnUnitBJ(Ih,100,GetTriggerUnit())
	call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
endfunction
function IsQieHuanItem takes nothing returns boolean
	return((GetSpellAbilityId()=='A00M')and(he[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==false))
endfunction
function QieHuanItem takes nothing returns nothing
	call UnitAddItem(Vs,UnitItemInSlotBJ(GetTriggerUnit(),1))
	call UnitAddItem(GetTriggerUnit(),UnitItemInSlotBJ(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],1))
	call UnitAddItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(Vs,1))
endfunction
//门派武功
function MenPaiWuGong takes nothing returns nothing
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
endfunction
//英雄达到某等级
function Ja takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function HeroLevel takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if (Ce[i]==5) then
		if GetRandomInt(1, 3)==1 then
			call ModifyHeroStat(0, u, 0, GetRandomInt(4, 12))
		elseif GetRandomInt(1, 2) ==1 then
			call ModifyHeroStat(1, u, 0, GetRandomInt(4, 12))
		else
			call ModifyHeroStat(2, u, 0, GetRandomInt(4, 12))
		endif
		if (GetUnitLevel(u)==80) then
			set juexuelingwu[i] = juexuelingwu[i]+10
			if udg_zhangmen[i]==true then
			else
				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓练气大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
			endif
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得练气大师")
			call SetPlayerName(p, "〓练气大师〓"+GetPlayerName(p))
		endif
	endif
	if((GetUnitTypeId(u)=='O004'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,400)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,350)
	endif
	if((GetUnitTypeId(u)=='O000'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,40)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,35)
	endif
	if((GetUnitTypeId(u)=='O001'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,5)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,4)
	endif
	if((GetUnitLevel(u)>=3)and(Z8[i]==false))then
		set Z8[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20
			if (udg_runamen[i]==d8[i]) then
				//if d8[i]==11 then
				//	if GetRandomInt(1,100)<=99 then
				//		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1,18), 2)
				//	else
				//		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19,36), 2)
				//	endif
				//endif
				if d8[i]!=11 then
					call UnitAddAbility(u,X7[d8[i]])
					call UnitMakeAbilityPermanent(u, true, X7[d8[i]])
					call DisplayTextToPlayer(p,0,0,"|cff00FF66恭喜领悟技能："+GetObjectName(X7[d8[i]]))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"初级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"初级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
				endif
				if (udg_runamen[i]==11) then
					set udg_shuxing[i]=udg_shuxing[i]+5
					call DisplayTextToPlayer(p,0,0,"|cff00FF66自由门派3级奖励5点自由属性点及随机武功秘籍一本、小概率获得奇武秘籍一本")
					if GetRandomInt(1,100)<=10 then
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(42, 46), 1), u)
					endif
					if GetRandomInt(1,100)<=99 then
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19, 36), 1), u)
					else
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1, 18), 1), u)
					endif
					//set S9=1
     //           	loop
     //           	    exitwhen S9>20
     //           	    if (X7[d8[i]]==MM9[S9]) then
     //           	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
     //           	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
     //           	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
					//		set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
					//		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
     //           	    endif
     //           	    set S9=S9+1
     //           	endloop
				endif
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[(GetPlayerId(p)*20+L7[i])]!='AEfk') then
					else
						set I7[(((i-1)*20)+L7[i])]=X7[d8[i]]
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)>=3)and GetUnitAbilityLevel(u,X7[udg_runamen[i]])>=2 and (e9[i]==false))then
		set e9[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20
			if d8[i]!=11 then
				if((udg_runamen[i]==d8[i]))then
					call UnitAddAbility(u,Z7[d8[i]])
					call UnitMakeAbilityPermanent(u, true, Z7[d8[i]])
					call DisplayTextToPlayer(p,0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Z7[d8[i]])))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"中级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"中级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
					set L7[i]=1
					loop
						exitwhen L7[i]>wugongshu[i]
						if((I7[((GetPlayerId(p)*20)+L7[i])]!='AEfk'))then
						else
							set I7[(((i-1)*20)+L7[i])]=Z7[d8[i]]
							exitwhen true
						endif
						set L7[i]=L7[i]+1
					endloop
				endif
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)>=3) and GetUnitAbilityLevel(u,Z7[udg_runamen[i]])>=2 and (d9[i]==false))then
		set d9[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20
			if d8[i]!=11 then
				if((udg_runamen[i]==d8[i]))then
					call UnitAddAbility(u,Y7[d8[i]])
					call DisplayTextToPlayer(p,0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Y7[d8[i]])))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"高级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"高级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
					call UnitMakeAbilityPermanent(u, true, Y7[d8[i]])
					set L7[i]=1
					loop
						exitwhen L7[i]>wugongshu[i]
						if((I7[((GetPlayerId(p)*20)+L7[i])]!='AEfk'))then
						else
							set I7[(((i-1)*20)+L7[i])]=Y7[d8[i]]
							exitwhen true
						endif
						set L7[i]=L7[i]+1
					endloop
				endif
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)==10))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了10级，你可以前往全真教（小地图指示点）完成历练1任务（大战江南七怪）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Te)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==25))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了25级，你可以前往少林后山（小地图指示点）完成历练2任务（挑战十八罗汉）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(ag)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==40))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了40级，你可以前往武林城外（小地图指示点）完成历练3任务（勇闯十恶不赦岛）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Bg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==55))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了55级，你可以前往光明顶（小地图指示点）完成历练4任务（勇闯光明顶）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Lg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==70))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了70级，你可以前往少林寺后山（小地图指示点）完成历练5任务（华山论剑）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Rg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if (GetUnitLevel(u)>=80 and jiawuxue[i]==false) then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了80级，获得5个自创武学点（vip玩家获得7个），在通过历练6以后你可以到聚贤庄游坦之处自创武学")
		set wuxuedian[i] = wuxuedian[i] + 5
		if udg_vip[i] >=1 then
			set wuxuedian[i] = wuxuedian[i] + 2
		endif
		set jiawuxue[i] = true
		set zizhiwugong[i] = ZiZhiWuGong.create(0, 0, GetRandomInt(1, 10), 0, 0)
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//杀怪回血
function Ma takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function KillGuaiJiaXie takes nothing returns nothing
	if GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))], 'A03Z')<1 then
		call SetWidgetLife(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],(GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],UNIT_STATE_LIFE)+(shaguaihufui[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+((I2R(danpo[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/2000.)*GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],UNIT_STATE_MAX_LIFE)))))
	endif
endfunction
//每秒回血回蓝
function YiShuHuiXie takes nothing returns nothing
	set c7=1
	loop
		exitwhen c7>5
		if((GetPlayerController(Player(-1+(c7)))==MAP_CONTROL_USER)) and UnitHasBuffBJ(udg_hero[c7], 'B014')==false then
			call SetUnitLifePercentBJ(udg_hero[c7],GetUnitLifePercent(udg_hero[c7])+I2R(yishu[c7])/2000.+10*GetUnitAbilityLevel(udg_hero[c7],'A0D4')+guixihuixie[c7])
			call SetUnitLifeBJ(udg_hero[c7],GetUnitState(udg_hero[c7],UNIT_STATE_LIFE)+shengminghuifu[c7])
			call SetUnitManaBJ(udg_hero[c7],GetUnitStateSwap(UNIT_STATE_MANA,udg_hero[c7])+(.3*I2R(yishu[c7]))+falihuifu[c7]+5*GetUnitAbilityLevel(udg_hero[c7],'A0D4'))
		endif
		set c7=c7+1
	endloop
endfunction
//伤害回复
function Ra takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function Sa takes nothing returns nothing
	if GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))], 'A03Z')<1 then
		call SetWidgetLife(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],(GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UNIT_STATE_LIFE)+((shanghaihuifu[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]/10.)+((I2R(danpo[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])/1500.)*GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UNIT_STATE_MAX_LIFE)))))
	endif
endfunction
//伤害吸收
function Ua takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function Va takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local real r=(1-RMinBJ(udg_shanghaixishou[i],.8))*GetEventDamage()
	call SetWidgetLife(udg_hero[i],(GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+(RMinBJ(udg_shanghaixishou[i],.8)*GetEventDamage())))
	if((UnitHasBuffBJ(GetTriggerUnit(),1110454340))and(GetUnitAbilityLevel(GetTriggerUnit(),1093678930)!=0))then
		call SetWidgetLife(udg_hero[i],(GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+(.3*GetEventDamage())))
	endif
	if UnitHaveItem(udg_hero[i],'I09Z') then
		if GetUnitAbilityLevel(udg_hero[i], 'A03O')!=0 then
			set r = r/3
		endif
		if GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)>=R2I(r)/20 then
			call AdjustPlayerStateBJ(-R2I(r)/20,p,PLAYER_STATE_RESOURCE_GOLD)
			call SetWidgetLife(udg_hero[i],RMinBJ((GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+r),GetUnitState(udg_hero[i],UNIT_STATE_MAX_LIFE)))
		else
			call AdjustPlayerStateBJ(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)*(-1),p,PLAYER_STATE_RESOURCE_GOLD)
			call SetWidgetLife(udg_hero[i],RMinBJ((GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+5*I2R(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD))),GetUnitState(udg_hero[i],UNIT_STATE_MAX_LIFE)))
		endif
	endif
endfunction
//杀怪加声望
function Xa takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function Ya takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local real x
	local real y
	set shengwang[i] = shengwang[i]+udg_boshu/7+1
	if (ModuloInteger(GetUnitPointValue(u),$A)==1) then
		set shengwang[i]=shengwang[i]+8
	endif
	if (p==Player(6)) then
		set zd=zd+GetRandomInt(1,2)
		if (zd>=100) then
			set zd=0
			set x = GetUnitX(u)
			set y = GetUnitY(u)
			call createitem(gudong[GetRandomInt(1,(6+(udg_boshu/5)))],x,y)
		endif
	endif
	set u = null
	set p = null
endfunction
function dB takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function eB takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	set shengwang[i]=(shengwang[i]+1)
	if((ModuloInteger(GetUnitPointValue(GetTriggerUnit()),10)==1))then
		set shengwang[i]=shengwang[i]+5
	elseif((ModuloInteger(GetUnitPointValue(GetTriggerUnit()),10)==2))then
		set shengwang[i]=shengwang[i]+10
	endif
endfunction
//遗忘武功
function YiWangJiNeng takes nothing returns boolean
	return((GetSpellAbilityId()==1093678417))
endfunction
function ForgetAbility takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	if((UnitHaveItem(u,'I06K'))) or udg_yiwang[i]==true then
		call DialogSetMessage(K7[i],"请选择遗忘的武功（遗忘后无法找回）！")
		if((I7[(i-1)*20+1]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+1]))
			set S4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+2]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+2]))
			set T4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+3]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+3]))
			set U4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+4]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+4]))
			set V4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+5]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+5]))
			set W4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+6]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+6]))
			set X4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+7]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+7]))
			set J7[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+8]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+8]))
			set J78[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+9]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+9]))
			set J79[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+10]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+10]))
			set J710[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+11]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+11]))
			set J711[i]=bj_lastCreatedButton
		endif
		call DialogAddButtonBJ(K7[i],"取消")
		set l7[i]=bj_lastCreatedButton
		call DialogDisplay(p,K7[i],true)
	else
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000遗忘武功需要消耗道具遗忘之石！")
	endif
	set u = null
	set p = null
endfunction
function Forget takes player p, integer num returns nothing
	local integer i = 1 + GetPlayerId(p)
	if I7[(i-1)*20+num]=='A03N' and UnitHasBuffBJ(udg_hero[i], 'BOwk') then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF9933"+GetObjectName(I7[(i-1)*20+num])+"施展期间不能遗忘！！！")
	else
		set S9=1
		loop
			exitwhen S9>20
			if((I7[20*(i-1)+num]==MM9[S9]))then
				set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]-udg_jueneishjc[S9])
				call ModifyHeroStat(1,udg_hero[i],1,udg_jueneiminjie[S9])
				set juexuelingwu[i]=(juexuelingwu[i]-udg_jueneijxlw[S9])
				set udg_baojilv[i]=(udg_baojilv[i]-udg_jueneibaojilv[S9])
				set udg_shanghaixishou[i]=(udg_shanghaixishou[i]-udg_jueneishxs[S9])
			endif
			set S9=S9+1
		endloop
		call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF9933成功遗忘技能："+GetObjectName(I7[(i-1)*20+num]))
		call UnitRemoveAbility(udg_hero[i],I7[20*(i-1)+num])
		if I7[(i-1)*20+num]=='A03P' then
			call UnitRemoveAbility(udg_hero[i], 'A03M')
		endif
		if I7[(i-1)*20+num]=='A03T' then
			call UnitRemoveAbility(udg_hero[i], 'A0DB')
		endif
		if I7[20*(i-1)+num] == 'A02B' then
			set udg_zhemei[i] = 0
		endif
		set I7[20*(i-1)+num]='AEfk'
		call RemoveItem(FetchUnitItem(P4[i],'I06K'))
	endif
endfunction
function jB takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	if((GetClickedButton()==S4[i]))then
		call Forget(p, 1)
	elseif((GetClickedButton()==T4[i]))then
		call Forget(p, 2)
	elseif((GetClickedButton()==U4[i]))then
		call Forget(p, 3)
	elseif((GetClickedButton()==V4[i]))then
		call Forget(p, 4)
	elseif((GetClickedButton()==W4[i]))then
		call Forget(p, 5)
	elseif((GetClickedButton()==X4[i]))then
		call Forget(p, 6)
	elseif((GetClickedButton()==J7[i]))then
		call Forget(p, 7)
	elseif((GetClickedButton()==J78[i]))then
		call Forget(p, 8)
	elseif((GetClickedButton()==J79[i]))then
		call Forget(p, 9)
	elseif((GetClickedButton()==J710[i]))then
		call Forget(p, 10)
	elseif((GetClickedButton()==J711[i]))then
		call Forget(p, 11)
	endif
	call DialogClear(K7[i])
	set p = null
endfunction
function CunWuGong takes integer num, integer id1, integer id2, string s, integer dp1, integer fy1, integer gg1, integer jm1, integer wx1, integer ys1 returns nothing
	local integer i = StringHash("武学")
	call SaveInteger(YDHT, i+num, 0, num)
	call SaveInteger(YDHT, i+num, 1, id1)
	call SaveInteger(YDHT, i+num, 2, id2)
	call SaveStr(YDHT, i+num, 3, s)
	call SaveInteger(YDHT, i+num, 4, dp1)
	call SaveInteger(YDHT, i+num, 5, fy1)
	call SaveInteger(YDHT, i+num, 6, gg1)
	call SaveInteger(YDHT, i+num, 7, jm1)
	call SaveInteger(YDHT, i+num, 8, wx1)
	call SaveInteger(YDHT, i+num, 9, ys1)
endfunction
function CunWuGongS takes nothing returns nothing
	//顺序：胆魄、福缘、根骨、经脉、悟性、医术
	call CunWuGong(1, 'I03J', 'A07A', "江湖武学", 0, 10, 0, 0, 14, 15)
	call CunWuGong(2, 'I03H', 'A06H', "江湖武学", 14, 12, 18, 0, 0, 0)
	call CunWuGong(3, 'I02V', 'A07Q', "江湖内功", 0, 12, 0, 18, 0, 14)
	call CunWuGong(4, 'I02U', 'A07P', "江湖内功", 17, 0, 0, 22, 0, 0)
	call CunWuGong(5, 'I03G', 'A06L', "江湖武学", 0, 0, 0, 15, 10, 12)
	call CunWuGong(6, 'I02Z', 'A0DN', "江湖内功", 17, 14, 18, 0, 0, 0)
	call CunWuGong(7, 'I02X', 'A07S', "九阴内功", 0, 17, 17, 17, 20, 0)
	call CunWuGong(8, 'I03I', 'A07N', "九阴武学", 13, 0, 12, 12, 16, 0)
	call CunWuGong(9, 'I02Y', 'A07T', "江湖内功", 22, 20, 0, 17, 0, 0)
	call CunWuGong(10, 'I03K', 'A06J', "江湖武学", 14, 0, 0, 16, 20, 0)
	call CunWuGong(11, 'I03D', 'A07O', "江湖内功", 0, 16, 0, 0, 0, 16)
	call CunWuGong(12, 'I03L', 'A07M', "江湖武学", 0, 14, 14, 14, 14, 0)
	call CunWuGong(13, 'I030', 'A07W', "江湖内功", 0, 0, 0, 23, 18, 17)
	call CunWuGong(14, 'I031', 'A07U', "江湖内功", 18, 20, 16, 0, 0, 0)
	call CunWuGong(15, 'I03E', 'A06M', "江湖武学", 0, 0, 18, 18, 0, 0)
	call CunWuGong(16, 'I033', 'A071', "江湖武学", 0, 12, 0, 16, 0, 11)
	call CunWuGong(17, 'I02W', 'A07R', "江湖内功", 0, 0, 0, 14, 12, 11)
	call CunWuGong(18, 'I03F', 'A06P', "江湖武学", 0, 0, 22, 17, 15, 0)
	call CunWuGong(19, 'I039', 'A07G', "绝世武学", 18, 21, 27, 0, 0, 0)
	call CunWuGong(20, 'I034', 'A07L', "绝世武学", 20, 0, 26, 18, 0, 0)
	call CunWuGong(21, 'I038', 'A07F', "绝世武学", 0, 19, 0, 22, 28, 0)
	call CunWuGong(22, 'I037', 'A07H', "绝世武学", 17, 25, 0, 0, 17, 0)
	call CunWuGong(23, 'I03B', 'A086', "绝世武学", 0, 23, 20, 0, 29, 0)
	call CunWuGong(24, 'I032', 'A07E', "绝世武学", 24, 0, 30, 24, 0, 0)
	call CunWuGong(25, 'I035', 'A085', "绝世武学", 0, 0, 0, 24, 19, 16)
	call CunWuGong(26, 'I036', 'A07J', "绝世武学", 23, 0, 0, 18, 0, 16)
	call CunWuGong(27, 'I03C', 'A089', "绝世武学", 23, 0, 0, 20, 22, 0)
	call CunWuGong(28, 'I03A', 'A07I', "绝世武学", 25, 0, 25, 25, 20, 0)
	call CunWuGong(29, 'I03S', 'A082', "绝世内功", 22, 32, 0, 22, 0, 25)
	call CunWuGong(30, 'I03O', 'A084', "绝世内功", 28, 19, 0, 28, 0, 0)
	call CunWuGong(31, 'I03T', 'S002', "绝世内功", 20, 0, 29, 0, 0, 23)
	call CunWuGong(32, 'I03Q', 'A07X', "绝世内功", 0, 23, 31, 33, 0, 0)
	call CunWuGong(33, 'I03M', 'A0D8', "绝世内功", 28, 24, 0, 33, 0, 30)
	call CunWuGong(34, 'I03P', 'A080', "绝世内功", 25, 0, 0, 32, 22, 32)
	call CunWuGong(35, 'I03U', 'A083', "绝世内功", 0, 24, 0, 30, 24, 21)
	call CunWuGong(36, 'I03R', 'A09D', "绝世内功", 0, 30, 0, 27, 34, 23)
	call CunWuGong(37, 'I09G', 'A0D2', "九阴内功", 0, 17, 17, 17, 20, 0)
	call CunWuGong(38, 'I09H', 'A0D4', "九阴内功", 0, 17, 17, 17, 20, 0)
	call CunWuGong(39, 'I09I', 'A0D6', "九阴内功", 0, 17, 17, 17, 20, 0)
	call CunWuGong(40, 'I09J', 'A0D1', "九阴武学", 13, 0, 12, 12, 16, 0)
	call CunWuGong(41, 'I09K', 'A0D3', "九阴武学", 13, 0, 12, 12, 16, 0)
	call CunWuGong(42, 'I0C2', 'A03N', "奇武", 0, 0, 0, 15, 14, 16)
	call CunWuGong(43, 'I0C3', 'A03P', "奇武", 0, 18, 26, 0, 0, 16)
	call CunWuGong(44, 'I0C4', 'A03L', "奇武", 12, 14, 16, 0, 0, 0)
	call CunWuGong(45, 'I0C5', 'A03Q', "奇武", 17, 0, 0, 0, 20, 0)
	call CunWuGong(46, 'I0C6', 'A03O', "奇武", 14, 15, 16, 0, 0, 12)
	call CunWuGong(47, 'I0C8', 'A0CE', "奇武", 12, 0, 0, 0, 18, 0)
	call CunWuGong(48, 'I0C9', 'A03T', "奇武", 14, 17, 0, 16, 0, 0)
	call CunWuGong(49, 'I0CA', 'A03U', "奇武", 0, 0, 0, 20, 0, 0)
	call CunWuGong(50, 'I0CB', 'A03W', "奇武", 0, 0, 0, 14, 14, 0)
	call CunWuGong(51, 'I0CC', 'A03V', "奇武", 0, 0, 0, 0, 15, 12)
	call CunWuGong(52, 'I0CD', 'A03Z', "奇武", 13, 17, 16, 0, 0, 0)
	call CunWuGong(53, 'I0CJ', 'A04V', "奇武", 15, 0, 16, 0, 17, 0)
	call CunWuGong(54, 'I0CT', 'A06A', "奇武", 15, 0, 15, 15, 15, 0) //《寿木长生功》
	call CunWuGong(55, 'I0CU', 'A06B', "奇武", 20, 20, 0, 18, 0, 0) //《黄沙万里鞭法》
	call CunWuGong(56, 'I0CV', 'A06S', "奇武", 0, 0, 0, 25, 0, 25) //《九阳真经散篇》
endfunction

function GetBookNum takes integer id returns integer
	local integer i = 1
	loop
		exitwhen i > MAX_WU_GONG_NUM
		if LoadInteger(YDHT, StringHash("武学")+i,1) == id then
			return i
		endif
		set i = i + 1
	endloop
	return 0
endfunction
function LearnJiNeng takes unit ut,  item it returns nothing
	local player p = GetOwningPlayer(ut)
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	local integer num = GetBookNum(GetItemTypeId(it))
	local integer id = LoadInteger(YDHT, StringHash("武学")+num, 2)
	local integer dp1 = LoadInteger(YDHT, StringHash("武学")+num, 4)
	local integer fy1 = LoadInteger(YDHT, StringHash("武学")+num, 5)
	local integer gg1 = LoadInteger(YDHT, StringHash("武学")+num, 6)
	local integer jm1 = LoadInteger(YDHT, StringHash("武学")+num, 7)
	local integer wx1 = LoadInteger(YDHT, StringHash("武学")+num, 8)
	local integer ys1 = LoadInteger(YDHT, StringHash("武学")+num, 9)
	if (GetUnitAbilityLevel(u,id)>0) then
		call DisplayTextToPlayer(p,0,0,"|CFFFF0033你已经拥有此武功了")
		call unitadditembyidswapped(GetItemTypeId(it),ut)
	else
		if (danpo[i]>=dp1 and fuyuan[i]>=fy1 and gengu[i]>=gg1 and jingmai[i]>=jm1 and wuxing[i]>=wx1 and yishu[i]>=ys1) then
			if id == 'A03Q' then
				call UnitAddAbility(u, id)
				call UnitMakeAbilityPermanent(u, true, id)
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得"+GetObjectName(id))
				call AddPlayerTechResearched(p,'Rhri',1)
			else
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[20*(i-1)+L7[i]]!='AEfk')then
						if((L7[i]==wugongshu[i]))then
							call DisplayTextToPlayer(p,0,0,"|CFFFF0033学习技能已达上限，请先遗忘部分技能")
							call unitadditembyidswapped(GetItemTypeId(it),ut)
						endif
					else
						call UnitAddAbility(u, id)
						call UnitMakeAbilityPermanent(u, true, id)
						if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5) >= 2 then
							call SetUnitAbilityLevel(u, id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5))
						endif
						set I7[20*(i-1)+L7[i]] = id
						if GetUnitAbilityLevel(u, id) >=2 then
							call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"想起"+GetObjectName(id))
						else
							call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得"+GetObjectName(id))
						endif
						set S9=1
            	    	loop
            	    	    exitwhen S9>20
            	    	    if (id==MM9[S9]) then
            	    	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
            	    	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
            	    	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
								set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
								set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
            	    	    endif
            	    	    set S9=S9+1
            	    	endloop
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
			endif
		else
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033学习条件不足")
			if (danpo[i]>=dp1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033胆魄缺少："+I2S(dp1-danpo[i]))
			endif
			if (gengu[i]>=gg1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033根骨缺少："+I2S(gg1-gengu[i]))
			endif
			if (fuyuan[i]>=fy1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033福缘缺少："+I2S(fy1-fuyuan[i]))
			endif
			if (wuxing[i]>=wx1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033悟性缺少："+I2S(wx1-wuxing[i]))
			endif
			if (jingmai[i]>=jm1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033经脉缺少："+I2S(jm1-jingmai[i]))
			endif
			if (yishu[i]>=ys1)then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033医术缺少："+I2S(ys1-yishu[i]))
			endif
			call unitadditembyidswapped(GetItemTypeId(it),ut)
		endif
	endif
	set p = null
	set u = null
endfunction
//学习武功
function IsWuGongBook takes nothing returns boolean
	return (GetBookNum(GetItemTypeId(GetManipulatedItem()))!=0)
endfunction
function BookLearnWuGong takes nothing returns nothing
	call LearnJiNeng(GetTriggerUnit(), GetManipulatedItem())
endfunction
//传送至桃花岛
function mB takes nothing returns boolean
	return  GetItemTypeId(GetManipulatedItem())=='I09V' and UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)
endfunction
function nB takes nothing returns nothing
	call SetUnitPosition(GetTriggerUnit(),9631,1139)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),9631,1139,0)
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入桃花岛")
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
endfunction
//内功加成属性
function NeiGongJiaCheng takes integer i, integer id, real baoji,real shxs,integer jxlw,integer minjie,real shjc returns nothing
    set MM9[i]=id
    set udg_jueneibaojilv[i]=baoji
    set udg_jueneishxs[i]=shxs
    set udg_jueneijxlw[i]=jxlw
    set udg_jueneiminjie[i]=minjie
    set udg_jueneishjc[i]=shjc
endfunction
function NeiGongJiaChengS takes nothing returns nothing
	//序号、ID、暴击率、伤害吸收、绝学领悟、内力、伤害加成
    call NeiGongJiaCheng(1,'A0D8',.15,.2,5,30,1.)
    call NeiGongJiaCheng(2,1093679154,.08,.25,4,150,.4)
    call NeiGongJiaCheng(3,'A083',.05,.3,3,100,.3)
    call NeiGongJiaCheng(4,'A09D',.06,.4,4,120,.8)
    call NeiGongJiaCheng(5,1093679152,.12,.2,3,130,.7)
    call NeiGongJiaCheng(6,'A07X',.16,.15,3,60,.5)
    call NeiGongJiaCheng(7,'A084',.1,.1,2,80,.6)
    call NeiGongJiaCheng(8,1395666994,.2,.2,1,50,.9)
    call NeiGongJiaCheng(9,'A07O',.04,0,0,25,.2)
    call NeiGongJiaCheng(10,'A07P',.06,0,0,30,.12)
    call NeiGongJiaCheng(11,'A07Q',.08,0,0,30,.14)
    call NeiGongJiaCheng(12,1093678930,.06,0,0,20,.15)
    call NeiGongJiaCheng(13,'A07S',.1,0,0,40,.25)
    call NeiGongJiaCheng(14,1093678932,.1,0,0,30,.3)
    call NeiGongJiaCheng(15,'A07U',.07,0,0,50,.18)
    call NeiGongJiaCheng(16,1093678935,.09,0,0,50,.1)
    call NeiGongJiaCheng(17,'A0DN',.03,0,0,40,.18)
    call NeiGongJiaCheng(18,'A0D2',.2,0,0,80,.5)
    call NeiGongJiaCheng(19,'A0D6',.8,0,0,10,.15)
    call NeiGongJiaCheng(20,'A0D4',-0.2,0,0,-40,-0.25)
endfunction
//------学习武功系统结束------
//------武功效果系统开始------
function uC takes nothing returns boolean
	return((UnitHasBuffBJ(GetAttacker(),'B002')))
endfunction
function vC takes nothing returns nothing
	local unit u = GetAttacker()
	if (GetUnitState(u,UNIT_STATE_LIFE)<=0.001*GetUnitState(u,UNIT_STATE_MAX_LIFE)) then
		call SetWidgetLife(u,1.)
	else
		call SetWidgetLife(u,GetUnitState(u,UNIT_STATE_LIFE)-0.001*GetUnitState(u,UNIT_STATE_MAX_LIFE))
	endif
	set u = null
endfunction
function xC takes nothing returns boolean
	return((UnitHasBuffBJ(GetAttacker(),1112437615)))
endfunction
function yC takes nothing returns nothing
	local unit u = GetAttacker()
	if (GetUnitState(u,UNIT_STATE_LIFE)<=0.003*GetUnitState(u,UNIT_STATE_MAX_LIFE)) then
		call SetWidgetLife(u,1.)
	else
		call SetWidgetLife(u,GetUnitState(u,UNIT_STATE_LIFE)-0.003*GetUnitState(u,UNIT_STATE_MAX_LIFE))
	endif
	set u = null
endfunction
function AC takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit()) and (UnitHasBuffBJ(GetFilterUnit(),'BEsh') or UnitHasBuffBJ(GetFilterUnit(),'B01J') or UnitHasBuffBJ(GetFilterUnit(),'B003') or UnitHasBuffBJ(GetFilterUnit(),'Bcri') or UnitHasBuffBJ(GetFilterUnit(),1110454324) or UnitHasBuffBJ(GetFilterUnit(),1110454342) or UnitHasBuffBJ(GetFilterUnit(),1110454343))
endfunction
function aC takes nothing returns nothing
	local location loc = GetUnitLoc(GetEnumUnit())
	local location loc2 = null
	if((UnitHasBuffBJ(GetEnumUnit(),'BEsh')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.001*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.001*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif

	if((UnitHasBuffBJ(GetEnumUnit(),'B01J')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif

	if((UnitHasBuffBJ(GetEnumUnit(),'B003')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.002*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.002*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),'Bcri')))then
		set loc2 = pu(loc,256.,GetRandomReal(0,360.))
		call IssuePointOrderByIdLoc(GetEnumUnit(),$D0012,loc2)
		call RemoveLocation(loc2)
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454324)))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454342)))then
		if((ModuloInteger(GetUnitPointValue(GetEnumUnit()),10)!=0))then
			if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.01*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
				call SetWidgetLife(GetEnumUnit(),1.)
			else
				call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.01*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
			endif
		else
			if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
				call SetWidgetLife(GetEnumUnit(),1.)
			else
				call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
			endif
		endif
		call CreateTextTagLocBJ("脑神丹效果",loc,60.,12.,65.,55.,42.,0)
		call Nw(3.,bj_lastCreatedTextTag)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454343)))then
		//if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
		//	call SetWidgetLife(GetEnumUnit(),1.)
		//else
		call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE))
		//endif
		call CreateTextTagLocBJ("化尸粉效果",loc,60.,12.,65.,55.,42.,0)
		call Nw(3.,bj_lastCreatedTextTag)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
	endif
	call RemoveLocation(loc)
	set loc = null
	set loc2 = null
endfunction
//每秒钟做一次
function BC takes nothing returns nothing
	call ForGroupBJ(wv(bj_mapInitialPlayableArea,Condition(function AC)),function aC)
endfunction
//-----激活残章-----
function ActCanZhang takes unit ut, item it, integer id1, integer lwd, integer id2, integer id3, integer id4, string s, integer flag returns integer
	local player p = GetOwningPlayer(ut)
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	if (GetUnitAbilityLevel(u, id1)<=0) then
		call DisplayTextToPlayer(p,0,0,"|CFFFF0033你尚未学会该武功，无法激活隐藏招式")
		call unitadditembyidswapped(GetItemTypeId(it), ut)
	else
		if((flag>=1))then
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033你之前已经激活过了")
			call unitadditembyidswapped(GetItemTypeId(it),ut)
		else
			if (juexuelingwu[i]>=lwd and GetUnitAbilityLevel(u,id2)!=0 and GetUnitAbilityLevel(u,id3)!=0 and GetUnitAbilityLevel(u,id4)!=0) then
				set flag=1
				call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了"+s)
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033条件不足，激活失败")
				call unitadditembyidswapped(GetItemTypeId(it), ut)
			endif
		endif
	endif
	set u = null
	set p = null
	return flag
endfunction
function CC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896371))
endfunction
function cC takes nothing returns nothing
	set Jd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07H', 5, 1093678935, 'A07U', 1093679152, "反两仪刀法第1式：行气如虹", Jd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function EC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896370))
endfunction
function FC takes nothing returns nothing
	set Id[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A085', 5, 'A07P', 1093678930, 1093679154, "六脉神剑第1式：少商剑", Id[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function HC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896369))
endfunction
function IC takes nothing returns nothing
	set Qd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07L', 5, 1093679154, 'A07Q', 'A0DN', "打狗棒法第1式：恶狗拦路", Qd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function JC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896374))
endfunction
function KC takes nothing returns nothing
	set ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07F', 5, 'A09D', 1093679152, 'A071', "独孤九剑第1式：破剑式", ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function MC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896372))
endfunction
function NC takes nothing returns nothing
	set Od[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A086', 5, 'A083', 'A07X', 'A06M', "胡家刀法第1式：八方藏刀式", Od[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function PC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896368))
endfunction
function QC takes nothing returns nothing
	set Pd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A089', 5, 'A084', 'A0D2', 'A07S', "西毒棍法第1式：蛇盘青竹", Pd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function SC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896377))
endfunction
function TC takes nothing returns nothing
	set Kd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07J', 5, 'A06J', 1093678932, 1395666994, "辟邪剑法第1式：流星赶月", Kd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function VC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896376))
endfunction
function WC takes nothing returns nothing
	set Ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07I', 5, 'A07N', 'A0D8', 'A07X', "野球拳第1式：翻肘裂捶", Ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function YC takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())==1227896375
endfunction
function ZC takes nothing returns nothing
	set Nd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07E', 5, 'A0D8', 'A07O', 'A0DN', "降龙十八掌第1式：神龙摆尾", Nd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function ec takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I065'))
endfunction
function gc takes nothing returns nothing
	set Md[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07G', 5, 'A06H', 'A07S', 'A084', "黯然销魂掌第1式：无中生有", Md[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
//九阳真经残卷
function isJiuYangCanJuan takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I0CW'))
endfunction
function jiuYangCanJuan takes nothing returns nothing
	set JYd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A0DN', 5, 'A0DN', 'A09D', 'A07X', "九阳真经残卷", JYd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
//武魂石系统
function IsWuHunShi takes nothing returns boolean
	if (GetItemTypeId(GetManipulatedItem())=='I09Q') then
		if (De[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false and Ee[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false) then
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFFFF0033未集齐决战套装或江湖套装，激活失败")
	        return false
	    else
	        return true
        endif
    endif
    return false
endfunction
globals
	dialog wuhun=DialogCreate()
	dialog chuansong=DialogCreate()
	button array wuhun1
	button array chuansong1
endglobals
function WuHunShi takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	call DialogClear(wuhun)
	call RemoveItem(GetManipulatedItem())
	call DialogSetMessage(wuhun,"请选择要激活的残章")
	if Jd[i]==0 then
    	set wuhun1[1]=DialogAddButtonBJ(wuhun,"反两仪刀法")
    endif
    if Id[i]==0 then
    	set wuhun1[2]=DialogAddButtonBJ(wuhun,"六脉神剑")
    endif
    if Qd[i]==0 then
    	set wuhun1[3]=DialogAddButtonBJ(wuhun,"打狗棒法")
    endif
    if ld[i]==0 then
    	set wuhun1[4]=DialogAddButtonBJ(wuhun,"独孤九剑")
    endif
    if Od[i]==0 then
    	set wuhun1[5]=DialogAddButtonBJ(wuhun,"胡家刀法")
    endif
    if Pd[i]==0 then
    	set wuhun1[6]=DialogAddButtonBJ(wuhun,"西毒棍法")
    endif
    if Kd[i]==0 then
    	set wuhun1[7]=DialogAddButtonBJ(wuhun,"辟邪剑法")
    endif
    if Ld[i]==0 then
    	set wuhun1[8]=DialogAddButtonBJ(wuhun,"野球拳法")
    endif
    if Nd[i]==0 then
    	set wuhun1[9]=DialogAddButtonBJ(wuhun,"降龙十八掌")
    endif
    if Md[i]==0 then
    	set wuhun1[10]=DialogAddButtonBJ(wuhun,"黯然销魂掌")
    endif
    set wuhun1[11]=DialogAddButtonBJ(wuhun,"取消")
	call DialogDisplay(p,wuhun,true)
	set u=null
    set p=null
endfunction
function JiHuoCanZhang takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
    if GetClickedButton()==wuhun1[1] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了反两仪刀法第1式：行气如虹")
        set Jd[i]=1
    endif
    if GetClickedButton()==wuhun1[2] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了六脉神剑第1式：少商剑")
        set Id[i]=1
    endif
    if GetClickedButton()==wuhun1[3] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了打狗棒法第1式：恶狗拦路")
        set Qd[i]=1
    endif
    if GetClickedButton()==wuhun1[4] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了独孤九剑第1式：破剑式")
        set ld[i]=1
    endif
    if GetClickedButton()==wuhun1[5] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了胡家刀法第1式：八方藏刀式")
        set Od[i]=1
    endif
    if GetClickedButton()==wuhun1[6] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了西毒棍法第1式：蛇盘青竹")
        set Pd[i]=1
    endif
     if GetClickedButton()==wuhun1[7] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了辟邪剑法第1式：流星赶月")
        set Kd[i]=1
    endif
    if GetClickedButton()==wuhun1[8] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了野球拳第1式：翻肘裂捶")
        set Ld[i]=1
    endif
    if GetClickedButton()==wuhun1[9] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了降龙十八掌第1式：神龙摆尾")
        set Nd[i]=1
    endif
    if GetClickedButton()==wuhun1[10] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了黯然销魂掌第1式：无中生有")
        set Md[i]=1
    endif
    if GetClickedButton()==wuhun1[11] then
        call UnitAddItemById(P4[i],'I09Q')
    endif
    set p=null
endfunction
//===========================================================================
//合成物品
function HeCheng_Conditions takes nothing returns boolean
	//call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
    return Ce[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==2 or GetItemTypeId(GetManipulatedItem()) == 'I099' or GetItemTypeId(GetManipulatedItem()) == 'I09A' or GetItemTypeId(GetManipulatedItem()) == 'I09B' or GetItemTypeId(GetManipulatedItem()) == 'I09D'
endfunction
function HeCheng_Actions takes nothing returns nothing
	//二合一
	//if GetItemTypeId(GetManipulatedItem()) == 'I09C' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
 //   	call YDWENewItemsFormula( 'I09C', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00B' )
	//endif
	//if GetItemTypeId(GetManipulatedItem()) == 'I098' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
 //   	call YDWENewItemsFormula( 'I098', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	//endif
	if GetItemTypeId(GetManipulatedItem()) == 'I00B' or GetItemTypeId(GetManipulatedItem()) == 'I00D' then
    	call YDWENewItemsFormula( 'I00B', 1, 'I00D', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02S' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02S', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02M' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02M' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02M', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02Q' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02Q' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02Q', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02R' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02R' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02R', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02P' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I099' or GetItemTypeId(GetManipulatedItem()) == 'I09A' then
    	call YDWENewItemsFormula( 'I099', 1, 'I09A', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I09C' )
	endif
	//三合一
	if GetItemTypeId(GetManipulatedItem()) == 'I053' or GetItemTypeId(GetManipulatedItem()) == 'I058' or GetItemTypeId(GetManipulatedItem()) == 'I05A' then
    	call YDWENewItemsFormula( 'I053', 1, 'I058', 1, 'I05A', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I05C' )
	endif
	//四合一
	//五合一
	//六合一
	if GetItemTypeId(GetManipulatedItem()) == 'I02P' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I08V' )
	endif

	//call BJDebugMsg(GetItemName(GetLastCombinedItem())+"A")
	//if GetItemType(GetLastCombinedItem())==ITEM_TYPE_ARTIFACT then
	//    call SaveInteger(YDHT,GetHandleId(GetLastCombinedItem()),0,WeaponNaiJiu(GetLastCombinedItem()))
 //   endif
endfunction
//锻造大师补属性
function DZDSBuShuXing takes unit u returns nothing
	local integer ii7 = 0
	local integer ii8 = 0
	local integer ii9 = 0
	local item it = null
	local integer j = 1
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))

	loop
		exitwhen j >= 7
		set it = UnitItemInSlotBJ(u, j)
		set ii7 = ModuloInteger((GetItemUserData(it)/100),10)
		set ii8 = ModuloInteger((GetItemUserData(it)/10),10)
		set ii9 = ModuloInteger((GetItemUserData(it)/1),10)
		//call BJDebugMsg("第"+I2S(j)+"格子物品的数值为"+I2S(ii7*100+ii8*10+ii9))
		if(ii7==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii7==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii7==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii7==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii7==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii7==6)then
			set yishu[i] = yishu[i] + 2
		endif
		if(ii8==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii8==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii8==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii8==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii8==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii8==6)then
			set yishu[i] = yishu[i] + 2
		endif
		if(ii9==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii9==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii9==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii9==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii9==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii9==6)then
			set yishu[i] = yishu[i] + 2
		endif
		set j = j + 1
	endloop
	set it = null
endfunction
//为合成的武器增加耐久度
function WuPinHeCheng takes nothing returns nothing
	local item it=GetLastCombinedItem()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i]==2 and LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it))==false and udg_dzds[i]<=5 then
		set udg_dzds[i] = udg_dzds[i] + 1
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF66FF00恭喜您锻造成功第"+I2S(udg_dzds[i])+"件装备，锻造成功5件装备可以获得锻造大师哦")
		call SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it), true)
	endif
	if Ce[i]==2 and udg_dzds[i]>=5 and udg_dzdsbool[i]==false then
		set udg_dzdsbool[i] = true
		call DZDSBuShuXing(udg_hero[i])
		if udg_zhangmen[i]==true then
		else
			call SaveStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit())),"〓锻造大师〓"+LoadStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit()))))
		endif
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"获得锻造大师")
		call SetPlayerName(GetOwningPlayer(GetTriggerUnit()), "〓锻造大师〓"+GetPlayerName(GetOwningPlayer(GetTriggerUnit())))
	endif
	//call BJDebugMsg(GetItemName(it))
	if GetItemType(it)==ITEM_TYPE_ARTIFACT then
	    call SaveInteger(YDHT,GetHandleId(it),0,WeaponNaiJiu(it))
    endif
    set it=null
endfunction
//模拟九阳神功
function IsJiuYang takes nothing returns boolean
	return GetSpellAbilityId()=='A0DN' or GetSpellAbilityId()=='A01B' or GetSpellAbilityId()=='A01C' or GetSpellAbilityId()=='A01D'
endfunction
function JiuYang_End takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local unit u=LoadUnitHandle(YDHT,GetHandleId(t),0)
	call UnitRemoveAbility(u,'A0DL')
	call UnitRemoveAbility(u,'A0DM')
	call UnitRemoveAbility(u,'A0CO')
	call UnitRemoveAbility(u,'A0CQ')
	call FlushChildHashtable(YDHT,GetHandleId(t))
	call PauseTimer(t)
	call DestroyTimer(t)
	set t=null
	set u=null
endfunction
function JiuYang takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local timer t=CreateTimer()
    local real r=0.
    call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
    call UnitAddAbility(u,'A0DL')
    call UnitAddAbility(u,'A0DM')
    call UnitAddAbility(u,'A0CO')
    call UnitAddAbilityBJ( 'A0CQ', u )
    call SetPlayerAbilityAvailableBJ( false, 'A0CQ', GetOwningPlayer(u) )
    if GetSpellAbilityId()=='A0DN' then
	    set r=30
	elseif GetSpellAbilityId()=='A01B' then
		set r=12
	elseif GetSpellAbilityId()=='A01C' then
		set r=20
	elseif GetSpellAbilityId()=='A01D' then
		set r=30
	endif
    call TimerStart(t,r,false,function JiuYang_End)
    set t=null
    set u=null
endfunction
//医疗篇
function IsYiLiao takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A0D4' ) )
endfunction
function YiLiaoPian takes nothing returns nothing
	local unit u=GetTriggerUnit()
    local unit uc=GetSpellTargetUnit()
    call SetWidgetLife(uc,GetWidgetLife(u)+20000)
    if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	    call SetWidgetLife(uc,GetWidgetLife(u)+380000)
    endif
endfunction




//使用洗髓经
function QI takes nothing returns boolean
return((GetSpellAbilityId()==1093679152)and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function RI takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetUnitLoc(GetTriggerUnit()))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093679153)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',26.)
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D8)
call FlushChildHashtable(YDHT,id*cx)
endfunction

//店小二新手任务
function IJ takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I025'))
endfunction
function lJ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = null
	if((O7[i]==0))then
		if((GetRandomInt(1,100)<=35))then
			set loc = GetRectCenter(Pe)
			set O7[i]=1
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC我这有一壶上等女儿红专程送给襄阳城郭靖的，你能帮我跑一趟吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往正派武林主城的|cFFADFF2F郭靖|r\n")
			call PingMinimapLocForForce(ov(p),loc,5.)
			call RemoveLocation(loc)
		elseif((GetRandomInt(1,70)<=35))then
			set loc = GetRectCenter(Qe)
			set O7[i]=2
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC旁边树林里的野狼经常来袭击村民，你能帮助我们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F6只野狼|r\n")
			call PingMinimapLocForForce(ov(p),loc,5.)
			call RemoveLocation(loc)
		else
			set O7[i]=3
			set loc = GetRectCenter(Re)
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC听说少林寺的练功房升级特别快，为何不去看看呢|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F练功房|r，可以通过主城传送\n")
			call PingMinimapLocForForce(ov(p),loc,5.)
			call RemoveLocation(loc)
		endif
	elseif((O7[i]==1))then
		set loc = GetRectCenter(Pe)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC你怎么还不出发啊？|r\n|cFFFFCC00提示：|r |cFF99FFCC前往正派武林主城的|cFFADFF2F郭靖|r\n")
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif((O7[i]==2))then
		set loc = GetRectCenter(Qe)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC请帮助我们杀死野狼吧|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F6只野狼|r\n")
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif((O7[i]==3))then
		set loc = GetRectCenter(Re)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC听说少林寺的练功房升级特别快，为何不去看看呢|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F练功房|r，可以通过主城传送")
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif((O7[i]==4))then
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00店小二：|r |cFF99FFCC你已经完成新手任务了")
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//郭靖——环戒
function KJ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(O7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==1))
endfunction
function LJ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 100) <= 85 then
		call unitadditembyidswapped('I024',GetTriggerUnit())
	else
		call unitadditembyidswapped('I0CH',GetTriggerUnit())
	endif
	call AddHeroXP(u,100,true)
	set shengwang[i]=shengwang[i]+$A
	call PlaySoundOnUnitBJ(Hh,100,u)
	call DisplayTextToPlayer(p,0,0,("|CFF34FF00完成任务获得经验+100、江湖声望+10和"+GetItemName(bj_lastCreatedItem)))
	set O7[i]=4
	set u = null
	set p = null
endfunction
//杀狼任务——青铜刀
function TI takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nwlt'))
endfunction
function UI takes nothing returns nothing
	local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((O7[i]==2))then
		set P7[i]=(P7[i]+1)
		if((P7[i]>=6))then
			set P7[i]=0
			set O7[i]=4
			if GetRandomInt(1, 100) <= 85 then
				call unitadditembyidswapped('I020',GetTriggerUnit())
			else
				call unitadditembyidswapped('I0CI',GetTriggerUnit())
			endif
			call AddHeroXP(GetKillingUnit(),100,true)
			set shengwang[i]=shengwang[i]+50
			call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
			call DisplayTextToPlayer(p,0,0,("|CFF34FF00完成任务获得经验+100、江湖声望+50和"+GetItemName(bj_lastCreatedItem)))
		else
			call DisplayTextToPlayer(p,0,0,("野狼："+(I2S(P7[i])+" / 6")))
		endif
	endif
	set u = null
	set p = null
endfunction
//少林练功房——养精蓄锐令
function NJ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(O7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==3))
endfunction
function OJ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	call unitadditembyidswapped('I06H',GetTriggerUnit())
	call AddHeroXP(u,100,true)
	set shengwang[i]=shengwang[i]+$A
	call PlaySoundOnUnitBJ(Hh,100,u)
	call DisplayTextToPlayer(p,0,0,("|CFF34FF00完成任务获得经验+100、江湖声望+10和"+GetItemName(bj_lastCreatedItem)))
	set O7[i]=4
	set u = null
	set p = null
endfunction
//寻找物品
globals
	integer array xunwu
	integer array yangshou
	integer array udg_yangshou
endglobals
function IsWuPin takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0BB'
endfunction
function LookForWuPin takes nothing returns nothing
	local unit u =GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id = LoadInteger(YDHT, GetHandleId(p), StringHash("item"))
	local string s
	if (xunwu[i]==0)then
		if xiuxing[i]<=2 then
			if GetRandomInt(1, 2)==1 then
				set id = ZhuangBei[GetRandomInt(1, 6)]
			else
				set id = ShiPin[GetRandomInt(1, 18)]
			endif
		elseif xiuxing[i]<=4 then
			if GetRandomInt(1, 2)==1 then
				set id = ZhuangBei[GetRandomInt(7, 9)]
			else
				set id = ShiPin[GetRandomInt(9, 33)]
			endif
		else
			if GetRandomInt(1, 3)==1 then
				set id = ZhuangBei[GetRandomInt(10, 14)]
			else
				set id = ShiPin[GetRandomInt(34, 44)]
			endif
		endif
		set xunwu[i]=1
		call SaveInteger(YDHT, GetHandleId(p), StringHash("item"), id)
		call createitemloc(id,v7[$B])
		set s = GetItemName(bj_lastCreatedItem)
		call RemoveItem(bj_lastCreatedItem)
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC我需要"+s+"，你能帮我找来么|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骐寻找|cFFADFF2F"+s+"|r\n")
	else
		call createitemloc(id,v7[$B])
		set s = GetItemName(bj_lastCreatedItem)
		call RemoveItem(bj_lastCreatedItem)
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC帮我找到"+s+"了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骐寻找|cFFADFF2F"+s+"|r\n")
	endif
	set u = null
	set p = null
endfunction
function IsFangQiWuPin takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0BC'
endfunction
function FangQiWuPin takes nothing returns nothing
	local unit u =GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if (xunwu[i]==0)then
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC当前没有接任务哦|r\n")
	else
		set shengwang[i] = shengwang[i] - 100
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC堂堂大侠，居然找不到小女子需要的东西吗|r\n")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00放弃任务，声望减少100|r\n")
		set xunwu[i]=0
	endif
	set u = null
	set p = null
endfunction
function IsWanChengWuPin takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0BD'
endfunction
function WanChengWuPin takes nothing returns nothing
	local unit u =GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id = LoadInteger(YDHT, GetHandleId(p), StringHash("item"))
	if xunwu[i]==1 and UnitHaveItem(u, id) and id != 0 then
		call RemoveItem(FetchUnitItem(u, id))
		set shengwang[i] = shengwang[i] + 40 * (xiuxing[i]+1)
		call AddHeroXP(udg_hero[i],15*GetHeroLevel(udg_hero[i])*GetHeroLevel(udg_hero[i])*(xiuxing[i]+1),true)
		set xunwu[i]=0
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC谢谢你的帮助|r\n")
		if GetRandomInt(1, 10)<=xiuxing[i]+1 then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00完成任务，奖励声望"+I2S(40 * (xiuxing[i]+1))+"点，经验"+I2S(15*GetHeroLevel(udg_hero[i])*GetHeroLevel(udg_hero[i])*(xiuxing[i]+1))+"点|r\n")
		else
			call unitadditembyidswapped('I04T',udg_hero[i])
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00完成任务，奖励声望"+I2S(40 * (xiuxing[i]+1))+"点，经验"+I2S(15*GetHeroLevel(udg_hero[i])*GetHeroLevel(udg_hero[i])*(xiuxing[i]+1))+"点，九阳丹一颗|r\n")
		endif
		if Ce[i]==6 then
			if udg_xbds[i]<9 then
				set udg_xbds[i] = udg_xbds[i]+1
				call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您完成了"+I2S(udg_xbds[i])+"次寻宝任务，完成10次可获得寻宝大师哦")
			else
				if udg_xbdsbool[i] == false then
					set udg_xbdsbool[i] = true
					if udg_zhangmen[i]==true then
					else
						call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓寻宝大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
					endif
					call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得寻宝大师")
					call SetPlayerName(p, "〓寻宝大师〓"+GetPlayerName(p))
				endif
			endif
		endif
	elseif xunwu[i]==1 then
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC还没有找到小女子需要的东西吗|r\n")
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骐：|r |cFF99FFCC当前没有接任务哦|r\n")
	endif
	set u = null
	set p = null
endfunction
//杀人系统
function IsYangShou takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0BF'
endfunction
function KillYangShou takes nothing returns nothing
	local unit u =GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id = LoadInteger(YDHT, GetHandleId(p), StringHash("life"))
	local integer j = GetRandomInt(1,xiuxing[i]*3+3)
	local string s
	if (yangshou[i]==0)then
		set id=udg_yangshou[j]
		set yangshou[i]=1
		call SaveInteger(YDHT, GetHandleId(p), StringHash("life"), id)
		call SaveInteger(YDHT, GetHandleId(p), StringHash("life")*2, (j-1)/3)
		call CreateNUnitsAtLoc(1, id, Player(15), v7[$B], 270.)
		set s = GetUnitName(bj_lastCreatedUnit)
		call RemoveUnit(bj_lastCreatedUnit)
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骏：|r |cFF99FFCC老夫夜观天象，"+s+"阳寿已尽，速去与老夫解决他|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骏解决|cFFADFF2F"+s+"|r\n")
	else
		call CreateNUnitsAtLoc(1, id, Player(15), v7[$B], 270.)
		set s = GetUnitName(bj_lastCreatedUnit)
		call RemoveUnit(bj_lastCreatedUnit)
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骏：|r |cFF99FFCC解决"+s+"了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骏解决|cFFADFF2F"+s+"|r\n")
	endif
	set u = null
	set p = null
endfunction
function IsFangQiYangShou takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0BE'
endfunction
function FangQiYangShou takes nothing returns nothing
	local unit u =GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if (yangshou[i]==0)then
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骏：|r |cFF99FFCC当前没有接任务|r\n")
	else
		set shengwang[i] = shengwang[i] - 100
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00游骏：|r |cFF99FFCC堂堂大侠，竟解决不了一个小喽啰|r\n")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00放弃任务，声望减少100|r\n")
		set yangshou[i]=0
	endif
	set u = null
	set p = null
endfunction
function IsWanChengYangShou takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit()) == LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), StringHash("life")) and yangshou[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==1
endfunction
function WanChengYangShou takes nothing returns nothing
	local unit u =GetKillingUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id = LoadInteger(YDHT, GetHandleId(p), StringHash("life"))
	local integer j = GetRandomInt(40, 60)
	local integer l = LoadInteger(YDHT, GetHandleId(p), StringHash("life")*2)
	set shengwang[i] = shengwang[i] +  j * (l+1)
	call AdjustPlayerStateBJ(5000 * (l+1), p, PLAYER_STATE_RESOURCE_GOLD)
	call AdjustPlayerStateBJ(10 * (l+1),  p, PLAYER_STATE_RESOURCE_LUMBER)
	//call AddHeroXP(udg_hero[i],200*GetHeroLevel(udg_hero[i])*GetHeroLevel(udg_hero[i])*(xiuxing[i]+1),true)

	set yangshou[i]=0
	if GetRandomInt(1, 10)<=l+1 then
		call unitadditembyidswapped('I04T',udg_hero[i])
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00完成任务，奖励声望"+I2S(j * (l+1))+"点，金钱"+I2S(5000 * (l+1))+"，珍稀币"+I2S(10 * (l+1))+"，九阳丹一颗|r\n")
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00完成任务，奖励声望"+I2S(j * (l+1))+"点，金钱"+I2S(5000 * (l+1))+"，珍稀币"+I2S(10 * (l+1)))
	endif
	set u = null
	set p = null
endfunction
//帮郭靖求婚任务、偷玉箫任务、寻找杨过
function IsQiuHun takes nothing returns boolean
	return(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I09T' or GetItemTypeId(GetManipulatedItem())=='I09U' or GetItemTypeId(GetManipulatedItem())=='I09L' or GetItemTypeId(GetManipulatedItem())=='I09M' or GetItemTypeId(GetManipulatedItem())=='I0AW' or GetItemTypeId(GetManipulatedItem())=='I0AT' or GetItemTypeId(GetManipulatedItem())=='I0AV')
endfunction
function QiuHun_Action takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem())=='I09T' then
		if(qiuhun[i]==0)then
			set qiuhun[i]=1
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC我要教郭靖兄弟九阴真经帮助他向蓉儿求婚，可是九阴真经突然找不到了|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通寻找|cFFADFF2F九阴真经上下卷（九阴真经和九阴白骨爪）|r\n")
		else
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC帮我找到经书了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通寻找|cFFADFF2F九阴真经上下卷（九阴真经和九阴白骨爪）|r\n")
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I0AT' and udg_runamen[i]==2 then
		if(zhaoyangguo[i]==0)then
			set zhaoyangguo[i]=1
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00小龙女：|r |cFF99FFCC少侠如果见到过儿，把玉蜂交给他，他就知道我没有死了|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助小龙女找到|cFFADFF2F杨过|r\n")
			call unitadditembyidswapped('I0AU', u)
		elseif(zhaoyangguo[i]==1)then
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00小龙女：|r |cFF99FFCC见到过儿了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助小龙女找到|cFFADFF2F杨过|r\n")
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00小龙女：|r |cFF99FFCC感谢少侠相助，帮我找到了过儿|r\n")
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I0AV' and udg_runamen[i]==2 then
		if(zhaoyangguo[i]==0)then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你还没有到小龙女处接任务|r\n")
		elseif(zhaoyangguo[i]==1)then
			if UnitHaveItem(u, 'I0AU') then
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC太好了，姑姑没有死！谢谢少侠，这本残章送给你了|r\n")
				call RemoveItem(FetchUnitItem(u,'I0AU'))
				call unitadditembyidswapped('I065', u)
				set zhaoyangguo[i]=2
			else
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC姑姑已经死去多年，哪里来的狂小子在胡言乱语|r\n")
			endif
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC感谢少侠相助，帮我找到了姑姑|r\n")
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I09U' then
		if(touxiao[i]==0)then
			set touxiao[i]=1
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC黄老邪把我关在这好久，天天吹箫烦死了，你能帮我把他的玉箫偷来吗？|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通偷到|cFFADFF2F玉箫|r\n")
		else
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC帮我偷到玉箫了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通偷到|cFFADFF2F玉箫|r\n")
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I09L' then
		if GetUnitAbilityLevel(u, 'A0D1')>=1 then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC小子，你已经掌握此武功了")
		else
			if  UnitHaveItem(u,'I03I') and GetUnitAbilityLevel(u, 'A07S')>=1 and wuxing[i]>=35 then
				call RemoveItem(FetchUnitItem(u,'I03I'))
				call unitadditembyidswapped('I09J', u)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC看你资质不错，书的这几页就是摧坚神抓的修习法门|r\n")
			else
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC小子，你的条件不足|r\n")
			endif
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I0AW' and linganran[i]==0 then
		if GetUnitAbilityLevel(u, 'A07G')>=1 then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC少侠，你已经掌握此武功了")
		else
			if  fuyuan[i]>=25 and wuxing[i]>=25 then
				call unitadditembyidswapped('I039', u)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC看你资质不错，这本黯然销魂掌的秘籍就给你了|r\n")
				set linganran[i] = 1
			else
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00杨过：|r |cFF99FFCC少侠，你的条件不足|r\n")
			endif
		endif
	elseif GetItemTypeId(GetManipulatedItem())=='I09M' then
		if GetUnitAbilityLevel(u, 'A0D4')>=1 then
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00洪七公：|r |cFF99FFCC年轻人，你已经掌握此武功了")
		else
			if  UnitHaveItem(u,'I02X') and yishu[i]>=35 then
				call RemoveItem(FetchUnitItem(u,'I02X'))
				call unitadditembyidswapped('I09H', u)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00洪七公：|r |cFF99FFCC看你资质不错，书的这几页就是医疗篇的修习法门|r\n")
			else
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00洪七公：|r |cFF99FFCC年轻人，你的条件不足|r\n")
			endif
		endif
		call ShowUnitHide(gg_unit_n00E_0066)
	endif
	set u=null
	set p=null
endfunction
function IsQiuHunWan takes nothing returns boolean
	return(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER) and ((qiuhun[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==1 and UnitHaveItem(GetTriggerUnit(),'I02X') and UnitHaveItem(GetTriggerUnit(),'I03I'))or (touxiao[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==1 and UnitHaveItem(GetTriggerUnit(),'I0A1')))
endfunction
function QiuHunWanCheng takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	//call BJDebugMsg("有没有？")
	if qiuhun[i]==1 and UnitHaveItem(u,'I02X') and UnitHaveItem(u,'I03I') then
		set L7[i] = 1
		loop
			exitwhen L7[i] > wugongshu[i]
			if (I7[(i-1)*20+L7[i]]!='AEfk')then
				if L7[i]==wugongshu[i] then
					call RemoveItem(FetchUnitItem(u,'I02X'))
					call RemoveItem(FetchUnitItem(u,'I03I'))
					call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你找到了，不能让你白跑，我把这遗忘技能的法门传给你，今后你遗忘技能就不需要遗忘之石了|r\n")
					set udg_yiwang[i]=true
					set qiuhun[i]=0
					exitwhen true
				endif
			else
				call UnitAddAbility(u,'A017')
				set I7[(((i-1)*20)+L7[i])]='A017'
				call RemoveItem(FetchUnitItem(u,'I02X'))
				call RemoveItem(FetchUnitItem(u,'I03I'))
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你找到了，不能让你白跑，我这七十二路空明拳传给你了|r\n")
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得空明拳")
				set qiuhun[i]=0
				exitwhen true
			endif
			set L7[i] = L7[i] + 1
		endloop
	elseif touxiao[i]==1 and UnitHaveItem(u,'I0A1') then
		set L7[i] = 1
		loop
			exitwhen L7[i] > wugongshu[i]
			if (I7[(i-1)*20+L7[i]]!='AEfk')then
				if L7[i]==wugongshu[i] then
					call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC小子，你学的武功太多了，遗忘一些再过来找我吧|r\n")
					exitwhen true
				endif
			else
				call UnitAddAbility(u,'A018')
				set I7[(((i-1)*20)+L7[i])]='A018'
				call RemoveItem(FetchUnitItem(u,'I0A1'))
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你偷到了，不能让你白跑，我把从黄老邪那偷学的碧海潮生曲传给你|r\n")
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得碧海潮生曲")
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC这把玉箫其实是一把难得的神器，就送给你了吧|r\n")
				call unitadditembyidswapped('I09D',u)
				set touxiao[i]=0
				exitwhen true
			endif
			set L7[i] = L7[i] + 1
		endloop
	endif
	set u=null
	set p=null
endfunction
//帮郭靖求婚结束
//驿站传送
function IsYiZhan takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem())=='I0BP' or GetItemTypeId(GetManipulatedItem())=='I0BQ' or GetItemTypeId(GetManipulatedItem())=='I0BR' or GetItemTypeId(GetManipulatedItem())=='I0BS' or GetItemTypeId(GetManipulatedItem())=='I0BT' or GetItemTypeId(GetManipulatedItem())=='I0BU' or GetItemTypeId(GetManipulatedItem())=='I0BV' or GetItemTypeId(GetManipulatedItem())=='I0BW' or GetItemTypeId(GetManipulatedItem())=='I0BX')
endfunction
function YiZhanChuanSong takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem())=='I0BP' then
	    call SetUnitPosition(udg_hero[i],3763,-9091)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),3763,-9091,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至牛妖幻境")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BQ' then
        call SetUnitPosition(udg_hero[i],1446,-2317)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),1446,-2317,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至初入江湖")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BR' then
        call SetUnitPosition(udg_hero[i],1863,0)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),1863,0,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至少林寺外")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BS' then
        call SetUnitPosition(udg_hero[i],-1476,8139)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-1476,8139,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至光明顶下")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BT' then
        call SetUnitPosition(udg_hero[i],-2400,-3900)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-2400,-3900,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至江南水乡")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BU' then
        call SetUnitPosition(udg_hero[i],-4400,-2950)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-4400,-2950,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至全真三子")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BV' then
        call SetUnitPosition(udg_hero[i],-5960,-160)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-5960,-160,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至雁门关内")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BW' then
        call SetUnitPosition(udg_hero[i],-13000,-15500)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-13000,-15500,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至大辽国")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BX' then
        call SetUnitPosition(udg_hero[i],-9000,-14000)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-9000,-14000,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至聚贤庄")
    endif
    set p = null
    set u = null
endfunction
//-------空明拳开始-------//
function IsKongMing takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A017')>=1 and GetRandomReal(.0,100.)<=15.+I2R(fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))])/5.
endfunction
function KongMing_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function KongMing_Action takes nothing returns nothing
	local unit u=GetAttacker()
    local unit uc=GetEnumUnit()
    local real hujia=GetUnitState(uc, ConvertUnitState(0x20))
	local real shengming=GetUnitState(uc,UNIT_STATE_MAX_LIFE)
    local real shxishu=1.+shengming/500000000+hujia/2000
    local real shanghai=0.
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    local location loc=GetUnitLoc(uc)
    if GetUnitAbilityLevel(u,'A07S')>=1 then
	    set shxishu=shxishu+.6
    endif
    if GetUnitAbilityLevel(u,'A0D1')>=1 then
	    set shxishu=shxishu+.8
    endif
    if GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0D1')>=1 and GetUnitAbilityLevel(u,'A06P')!=0 and GetUnitAbilityLevel(u,'A07U')!=0 and GetUnitAbilityLevel(GetTriggerUnit(),'A018')!=0 then
    	set shxishu=shxishu*5*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,10,8,shxishu,'A017')
    call WuGongShangHai(u,uc,shanghai)
    call DestroyEffect(AddSpecialEffectTarget("Units\\NightElf\\Wisp\\WispExplode.mdl",uc,"overhead"))
    if((GetUnitAbilityLevel(u,'A06P')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,'Bcri')==false))then
        call WanBuff(u, uc, 4)
    endif
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
endfunction
function KongMingQuan takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(uc)
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local group g=CreateGroup()
    call WuGongShengChong(u,'A017',1200.)
    if GetUnitAbilityLevel(u,'A07U')!=0 then
	    call GroupEnumUnitsInRangeOfLoc(g,loc,400,Condition(function KongMing_Condition))
	else
	    call GroupAddUnit(g,uc)
    endif
        call ForGroupBJ(g,function KongMing_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
    set p=null
    set g=null
endfunction
function IsKongMingBeiDa takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER) and GetUnitAbilityLevel(GetTriggerUnit(),'A017')>=1 and GetUnitAbilityLevel(GetTriggerUnit(),'A018')>=1
endfunction
function KongMingBeiDa takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if aidacishu[i]>=100 then
		set aidacishu[i]=0
		call unitadditembyidswapped('rsps',GetTriggerUnit())
	else
		set aidacishu[i]=aidacishu[i]+1
	endif
endfunction
//-------空明拳结束-------//
//-------碧海潮生曲开始-------//
function IsBiHai takes nothing returns boolean
	return(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)) and GetSpellAbilityId()=='A018'
endfunction
function BiHai_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function BiHai_Action takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=GetRandomInt(1,5)
	local integer j=5
	local real shxishu=1.
	local real shanghai=0.
	local string array yinlv
	set yinlv[1]="宫!"
	set yinlv[2]="商!"
	set yinlv[3]="角!"
	set yinlv[4]="徵!"
	set yinlv[5]="羽!"
	if GetUnitAbilityLevel(u,'A06H')>=1 then
	    set j=3
    endif
    if GetUnitAbilityLevel(u,'A0D3')>=1 then
	    set j=GetRandomInt(2,5)
    endif
    if GetUnitAbilityLevel(u,'A07N')>=1 then
	    set shxishu=shxishu+1
    endif
    if GetUnitAbilityLevel(u,'A06H')>=1 and GetUnitAbilityLevel(u,'A0D3')>=1 and GetUnitAbilityLevel(u,'A07N')>=1 and GetUnitAbilityLevel(u,'A084')>=1 then
    	set shxishu=shxishu*4*2
	endif
    if UnitHaveItem(u,'I09D') then
	    set shxishu=shxishu*8
    endif
    if GetUnitAbilityLevel(u,'A084')>=1 and UnitHasBuffBJ(u,'B00Y') then
	    set i=5
    endif
	call CreateTextTagLocBJ(yinlv[i],loc,40.,14.,10.,60.,30.,0)
    call Nw(1.5,bj_lastCreatedTextTag)
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    if i==1 then
        call WanBuff(u, uc, 1)
	elseif i==2 then
		call WanBuff(u, uc, 9)
	elseif i==3 then
		set shanghai=ShangHaiGongShi(u,uc,20,30,shxishu,'A018')
		call WuGongShangHai(u,uc,shanghai)
		call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	elseif i==4 then
		call WanBuff(u, uc, 4)
	elseif i==5 then
		if UnitHasBuffBJ(u,'B00Y')==false then
			set bihai[1+GetPlayerId(GetOwningPlayer(u))]=1
			call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,'A01A')
        	call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,uc)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
        else
        	set bihai[1+GetPlayerId(GetOwningPlayer(u))]=bihai[1+GetPlayerId(GetOwningPlayer(u))]+1
        	call UnitRemoveBuffBJ('B00Y',u)
        	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,'A01A')
        	call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,uc)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    	endif
    	if bihai[1+GetPlayerId(GetOwningPlayer(u))]>=j then
	    	call UnitRemoveBuffBJ('B00Y',u)
	    	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	    	set shanghai=ShangHaiGongShi(u,uc,800,1600,shxishu,'A018')
			call WuGongShangHai(u,uc,shanghai)
		endif
	endif
	call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function BiHaiChaoSheng takes nothing returns nothing
	local group g=CreateGroup()
	local unit u=GetTriggerUnit()
	local location loc=GetUnitLoc(u)
	local sound sd=CreateSound("Sound\\Music\\mp3Music\\UndeadVictory.mp3",false,false,false,$A,$A,"DefaultEAXON")
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"))
	//call PlaySoundOnUnitBJ(sd,100,u)
	call WuGongShengChong(u,'A018',700.)
	call GroupEnumUnitsInRangeOfLoc(g,loc,500,Condition(function BiHai_Condition))
	call ForGroupBJ(g,function BiHai_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set g=null
    set loc=null
endfunction
//-------碧海潮生曲结束-------//
//-------任务系统-------
//鲁有脚送信任务
function QJ takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895898))
endfunction
function RJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=3))then
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你无法再接取此任务了")
else
if((jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
if((GetRandomInt(1,100)<=35))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F黄蓉|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,70)<=35))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Xe))
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F达摩祖师|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Pe))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F郭靖\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
else
if((jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F黄蓉|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Xe))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F达摩祖师|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Pe))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F郭靖\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function TJ takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(jd[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==1))
endfunction
function UJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),0,0,500)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
else
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,$C8)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
else
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,30)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
endif
endif
if((GetRandomInt(1,50)<=40))then
call unitadditembyidswapped(YaoCao[5],GetTriggerUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00意外获得了一个锦灯笼")
endif
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),100,true)
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+$F)
call FlushChildHashtable(YDHT,id*cx)
endfunction
function WJ takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(jd[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==2))
endfunction
function XJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),0,0,500)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
else
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,$C8)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
else
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,30)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
endif
endif
if((GetRandomInt(1,50)<=40))then
call unitadditembyidswapped(YaoCao[5],GetTriggerUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00意外获得了一个锦灯笼")
endif
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),100,true)
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+$F)
call FlushChildHashtable(YDHT,id*cx)
endfunction
function ZJ takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(jd[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==3))
endfunction
function dK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),0,0,500)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
else
if((GetRandomInt(1,50)<=25))then
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,$C8)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
else
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,30)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
endif
endif
if((GetRandomInt(1,50)<=40))then
call unitadditembyidswapped(YaoCao[5],GetTriggerUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00意外获得了一个锦灯笼")
endif
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),100,true)
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
set jd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(kd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+$F)
call FlushChildHashtable(YDHT,id*cx)
endfunction
function fK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895352))
endfunction
//击杀野猪首领
function gK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((e8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Se))
set e8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00耶律齐：|r |cFF99FFCC我一生酷爱打猎，平时有时间就会出来试试身手，你愿意一同前往吗|r\n|cFFFFCC00提示：|r |cFF99FFCC击杀山林中的|cFFADFF2F野猪首领|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((e8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Se))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC击杀山林中的|cFFADFF2F野猪首领|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function iK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895353))
endfunction
//林远图押镖任务
function jK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
if((GetRandomInt(1,70)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Te))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给全真教的丘掌门吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教的|cFFADFF2F丘处机|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,60)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ue))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC全真教山下附近的豺狼经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教山下的杀死10只|cFFADFF2F豺狼|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,50)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ve))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给燕子坞的慕容复吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的|cFFADFF2F慕容复|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,40)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(We))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC燕子坞的蝎子王经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的杀死3只|cFFADFF2F蝎子王|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,30)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Xe))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=5
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给少林寺的达摩祖师吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F达摩祖师|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((GetRandomInt(1,20)<=$A))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ye))
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=6
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给雁门关的乔峰吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往雁门关的|cFFADFF2F乔峰|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Je))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC西域邪教持续骚扰我中原武林，是时候给他们一点颜色了|r\n|cFFFFCC00提示：|r |cFF99FFCC守住武林正派，杀死10只|cFFADFF2F进攻的西域教徒|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
endif
endif
endif
endif
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Te))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给全真教的邱掌门吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教的|cFFADFF2F丘处机|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ue))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC全真教山下附近的豺狼经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教山下的杀死10只|cFFADFF2F豺狼|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ve))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给燕子坞的慕容复吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的|cFFADFF2F慕容复|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==4))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(We))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC燕子坞的蝎子王经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的杀死5只|cFFADFF2F蝎子王|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==5))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Xe))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给少林寺的达摩祖师吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F达摩祖师|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==6))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ye))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给雁门关的乔峰吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往雁门关的|cFFADFF2F乔峰|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==7))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Je))
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC西域邪教持续骚扰我中原武林，是时候给他们一点颜色了|r\n|cFFFFCC00提示：|r |cFF99FFCC守住武林正派，杀死10只|cFFADFF2F进攻的西域教徒|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
endif
endif
endif
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function mK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(g8[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==1))
endfunction
function nK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+20，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+20)
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),300,true)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function pK takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='ngns')and(g8[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==2))
endfunction
function qK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetKillingUnit())
set h8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(h8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((h8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=$A))then
set h8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+25，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+25)
call AddHeroXP(GetKillingUnit(),300,true)
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("豺狼："+(I2S(h8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function sK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(g8[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==3))
endfunction
function tK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+20，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+20)
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),300,true)
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function vK takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='nanb')and(g8[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==4))
endfunction
function wK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set i8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(i8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((i8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=3))then
set i8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+30，经验值+300")
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+30)
call AddHeroXP(GetKillingUnit(),300,true)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("蝎子王："+(I2S(i8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 3")))
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function yK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(g8[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==5))
endfunction
function zK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+20，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+20)
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),300,true)
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function aK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(g8[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==6))
endfunction
function BK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+20，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+20)
call AddHeroXP(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),300,true)
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function CK takes nothing returns boolean
return GetKillingUnit()!=null and ((g8[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==7))
endfunction
function cK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set j8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(j8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((j8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=$A))then
set j8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+30，经验值+300")
set g8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+30)
call AddHeroXP(GetKillingUnit(),300,true)
set qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((GetRandomInt(1,35)<=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-5)))then
call unitadditembyidswapped(gudong[GetRandomInt(1,3)],LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("西域邪教："+(I2S(j8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function EK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895364))
endfunction
function FK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((qd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=3))then
if((o8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==false))then
if((GetRandomInt(1,100)<=25))then
call unitadditembyidswapped('I01U',GetTriggerUnit())
set o8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00获得"+GetItemName(bj_lastCreatedItem)))
else
if((GetRandomInt(1,60)<=20))then
call unitadditembyidswapped('I01Z',GetTriggerUnit())
set o8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00获得"+GetItemName(bj_lastCreatedItem)))
else
if((GetRandomInt(1,60)<=30))then
call unitadditembyidswapped(1227895124,GetTriggerUnit())
set o8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00获得"+GetItemName(bj_lastCreatedItem)))
else
call unitadditembyidswapped(1227895109,GetTriggerUnit())
set o8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00获得"+GetItemName(bj_lastCreatedItem)))
endif
endif
endif
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,$B4)<=$A))then
call createitemloc(1227895627,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,$AA)<=$A))then
call createitemloc(1227895385,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,$A0)<=$A))then
call createitemloc('I03D',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,$96)<=$A))then
call createitemloc(1227895382,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,$8C)<=$A))then
call createitemloc(1227895624,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,$82)<=$A))then
call createitemloc(1227895621,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,120)<=$A))then
call createitemloc(1227895603,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,110)<=$A))then
call createitemloc('I02W',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,100)<=$A))then
call createitemloc(1227895601,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,90)<=$A))then
call createitemloc('I03G',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,80)<=$A))then
call createitemloc('I02U',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,70)<=$A))then
call createitemloc(1227895626,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,60)<=$A))then
call createitemloc('I030',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=$A))then
call createitemloc('I02X',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,40)<=$A))then
call createitemloc('I03I',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,30)<=$A))then
call createitemloc('I02Z',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,20)<=$A))then
call createitemloc('I03L',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I03F',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00获得"+GetItemName(bj_lastCreatedItem)))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC你已经领过奖励了\n")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00林远图：|r |cFF99FFCC需要完成至少3次押镖任务才可以领取奖励哦")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//接杀熊、桃花岛哑仆的任务
function HK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896132 or GetItemTypeId(GetManipulatedItem())=='I09W'))
endfunction
function IK takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc=null
if GetItemTypeId(GetManipulatedItem())==1227896132 then
	if((rd[i]==0))then
		set loc=GetRectCenter(Nf)
		set rd[i]=1
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00胡斐：|r |cFF99FFCC这一代时常有熊出没，能搞点熊皮来的话应该可以卖个好价钱|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F30只熊|r\n")
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif((rd[i]==1))then
		set loc=GetRectCenter(Nf)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00胡斐：|r |cFF99FFCC这一代时常有熊出没，能搞点熊皮来的话应该可以卖个好价钱|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F30只熊|r\n")
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif((rd[i]==2))then
		call DisplayTextToPlayer(p,0,0,"|cFfff0000这个任务你已经完成过了")
	endif
elseif GetItemTypeId(GetManipulatedItem())=='I09W' then
	if((LoadInteger(YDHT,StringHash("哑仆任务"),i)==0))then
		call SaveInteger(YDHT,StringHash("哑仆任务"),i,1)
		call PlaySoundOnUnitBJ(bh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC黄老邪把我腿打断的时候，桃花岛上的哑仆一直欺负我，你能帮我杀掉十个哑仆吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F十个哑仆|r\n")
	elseif((LoadInteger(YDHT,StringHash("哑仆任务"),i)==1))then
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00周伯通：|r |cFF99FFCC杀掉十个哑仆了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F十个哑仆|r\n")
	endif
endif
endfunction

//升10级自动奖励丹药
function PK takes nothing returns boolean
	return (GetTriggerUnit()==udg_hero[1] or GetTriggerUnit()==udg_hero[2] or GetTriggerUnit()==udg_hero[3] or GetTriggerUnit()==udg_hero[4] or GetTriggerUnit()==udg_hero[5])and GetUnitLevel(GetTriggerUnit())==10 and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER
endfunction
function QK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
if((GetRandomInt(1,60)<=$A))then
call unitadditembyidswapped(1227895375,GetTriggerUnit())
else
if((GetRandomInt(1,50)<=$A))then
call unitadditembyidswapped(1227895370,GetTriggerUnit())
else
if((GetRandomInt(1,40)<=$A))then
call unitadditembyidswapped(1227895363,GetTriggerUnit())
else
if((GetRandomInt(1,30)<=$A))then
call unitadditembyidswapped(1227895368,GetTriggerUnit())
else
if((GetRandomInt(1,60)<=30))then
call unitadditembyidswapped(1227895369,GetTriggerUnit())
else
call unitadditembyidswapped(1227895365,GetTriggerUnit())
endif
endif
endif
endif
endif
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00恭喜升到10级，获得"+GetItemName(bj_lastCreatedItem)))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//采集断肠草
function SK takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895890))
endfunction
function TK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Gg))
set z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00公孙绿萼：|r |cFF99FFCC杨过中了情花剧毒，你能替我想想办法救救他吗|r\n|cFFFFCC00提示：|r |cFF99FFCC采集绝情谷副本中的|cFFADFF2F断肠草|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Gg))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC采集绝情谷副本的|cFFADFF2F断肠草|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//采集到断肠草
function VK takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	if((GetItemTypeId(GetEnumItem())=='I04S'))then
		call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3,(LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)+1))
		set a9[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=GetEnumItem()
		set B9[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=GetItemLoc(GetEnumItem())
	endif
endfunction
function WK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call EnumItemsInRectBJ(Gg,function VK)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//断肠草
function YK takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I04S'))
endfunction
function ZK takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveItemHandle(YDHT,id*cx,$1769D332,GetManipulatedItem())
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)==false))then
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=12
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if((GetManipulatedItem()==a9[bj_forLoopAIndex]))then
call createitemloc('I04S',B9[bj_forLoopAIndex])
set a9[bj_forLoopAIndex]=bj_lastCreatedItem
call DisplayTimedTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,15.,"|CFFFF0000只能由主角来采集")
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
else
if((z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
set A9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(A9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
if((A9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=$A))then
set z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2
set A9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务请前往公孙绿萼换取奖励")
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("断肠草："+(I2S(A9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
endif
call CreateNUnitsAtLoc(1,1752196449,Player(15),v7[1],bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',GetRandomReal(20.,25.))
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=12
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if((LoadItemHandle(YDHT,id*cx,$1769D332)==a9[bj_forLoopAIndex]))then
set b9[bj_forLoopAIndex]=bj_lastCreatedUnit
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
else
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=12
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if((LoadItemHandle(YDHT,id*cx,$1769D332)==a9[bj_forLoopAIndex]))then
call createitemloc('I04S',B9[bj_forLoopAIndex])
set a9[bj_forLoopAIndex]=bj_lastCreatedItem
call DisplayTimedTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,15.,"|CFFFF0000身上没有该任务或已经完成了")
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//完成断肠草任务
function eL takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(z9[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==2))
endfunction
function fL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call PlaySoundOnUnitBJ(Hh,100,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
set z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+100)
if((GetRandomInt(1,40)<=20))then
call unitadditembyidswapped('I00X',GetTriggerUnit())
else
call unitadditembyidswapped('I00Y',GetTriggerUnit())
endif
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00完成任务江湖声望+100，并获得"+GetItemName(bj_lastCreatedItem)))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function hL takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1752196449))
endfunction
function iL takes nothing returns nothing
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=12
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if((GetTriggerUnit()==b9[bj_forLoopAIndex]))then
call createitemloc('I04S',B9[bj_forLoopAIndex])
set a9[bj_forLoopAIndex]=bj_lastCreatedItem
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
endfunction
//护送耶律楚材
function kL takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896387))
endfunction
function mL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((Sd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(gh))
set Sd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00完颜萍：|r |cFF99FFCC耶律楚材受伤了，你能帮个忙啊|r\n|cFFFFCC00提示：|r |cFF99FFCC护送耶律楚材回|cFFADFF2F大辽国|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call SaveLocationHandle(YDHT,id*cx,1231311908,GetRectCenter(hh))
call CreateNUnitsAtLoc(1,1853254706,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,1231311908),bj_UNIT_FACING)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0012,LoadLocationHandle(YDHT,id*cx,$5E83114F))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,1231311908))
else
if((Sd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(gh))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC护送耶律楚材回|cFFADFF2F大辽国|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00你已经完成了这个任务了（不可重复接取）")
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function oL takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1853254706))
endfunction
function pL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetTriggerPlayer())))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000任务失败了")
set Sd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
call FlushChildHashtable(YDHT,id*cx)
endfunction
function rL takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1853254706))
endfunction
function sL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call PlaySoundOnUnitBJ(Hh,100,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
set Sd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+$96)
set juexuelingwu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(juexuelingwu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
call RemoveUnit(GetTriggerUnit())
call AdjustPlayerStateBJ($7530,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务江湖声望+150，并获得金钱+30000、稀有币+20、绝学领悟力+1")
call ShowUnitShow(gg_unit_nvl2_0005)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//高昌迷宫任务
function uL takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896388))
endfunction
function vL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(xg))
set Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
call PlaySoundOnUnitBJ(bh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00苗人凤：|r |cFF99FFCC很多武林恶势力犯事之后都躲到了高昌迷宫里|r\n|cFFFFCC00提示：|r |cFF99FFCC分别杀死|cFFADFF2F10个门派叛徒和武林恶徒|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(xg))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00苗人凤：|r |cFF99FFCC很多武林恶势力犯事之后都躲到了高昌迷宫里|r\n|cFFFFCC00提示：|r |cFF99FFCC分别杀死|cFFADFF2F10个门派叛徒和武林恶徒|r\n")
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFfff0000这个任务你无法再接取了")
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function xL takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(Td[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==1)and(Vd[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==$A)and(Ud[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==$A))
endfunction
function yL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
if((GetRandomInt(1,50)<=fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]))then
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,100)<=$A))then
call createitemloc(1227896370,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,90)<=$A))then
call createitemloc(1227896371,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,80)<=$A))then
call createitemloc(1227896369,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,70)<=$A))then
call createitemloc(1227896374,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,60)<=$A))then
call createitemloc(1227896372,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=$A))then
call createitemloc(1227896368,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,40)<=$A))then
call createitemloc(1227896377,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,30)<=$A))then
call createitemloc(1227896376,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,20)<=$A))then
call createitemloc(1227896375,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I065',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
endif
endif
endif
endif
endif
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+200和绝学隐藏招式残章一本\n")
set Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
else
if((GetRandomInt(1,50)<=15))then
call unitadditembyidswapped(1227896390,GetTriggerUnit())
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+200和号令天下令\n")
set Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
else
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,$1769D332))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务获得江湖声望+200和古董一个")
set Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
endif
endif
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+$C8)
set Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
set Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call FlushChildHashtable(YDHT,id*cx)
endfunction
//辽国第一先锋任务+拯救阿紫任务
function AL takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896389 or GetItemTypeId(GetManipulatedItem())=='I0AN'))
endfunction
function aL takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local location loc = GetRectCenter(mh)
	if (GetItemTypeId(GetManipulatedItem())==1227896389) then
		if (Wd[i]==0) then
			set Wd[i]=1
			call PlaySoundOnUnitBJ(bh,100,u)
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00乔峰：|r |cFF99FFCC最近辽国养兵蓄锐，似乎对大宋有所企图，若能擒住辽国第一先锋，百姓才能避免战祸|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F辽国第一先锋|r\n")
			call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, loc, 5.)
			call RemoveLocation(loc)
		else
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00乔峰：|r |cFF99FFCC最近辽国养兵蓄锐，似乎对大宋有所企图，若能擒住辽国第一先锋，百姓才能避免战祸|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F辽国第一先锋|r\n")
			call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, loc, 5.)
			call RemoveLocation(loc)
		endif
	else
		if jiuazi[i]==0  then
			if udg_runamen[i]==10 then
				set jiuazi[i]=1
				call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00乔峰：|r |cFF99FFCC阿紫被丁老头抓走了，请英雄帮我击败丁春秋，救出阿紫|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F丁春秋|r\n")
			else
				call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00乔峰：|r |cFF99FFCC你不是星宿派中人，无法接此任务|r\n")
			endif
		else
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00乔峰：|r |cFF99FFCC你已完成任务|r\n")
		endif
	endif
endfunction
function bL takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1751543663) or (GetUnitTypeId(GetTriggerUnit())=='odkt') or (GetUnitTypeId(GetTriggerUnit())=='h00J'))
endfunction
function CL takes nothing returns nothing
	local player p = GetOwningPlayer(GetKillingUnit())
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetUnitLoc(GetTriggerUnit())
	if GetUnitTypeId(GetTriggerUnit())==1751543663 and GetOwningPlayer(GetTriggerUnit())==Player(12) then
		if((Wd[i]==1))then
			set Wd[i]=2
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00恭喜击破辽国第一先锋，你可以回去领奖励了")
		elseif((Wd[i]==2))then
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00你已经杀过这个怪了，还是先回去交任务把")
		endif
	elseif GetUnitTypeId(GetTriggerUnit())=='odkt' then
		if jiuazi[i]==1 then
			set jiuazi[i]=2
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00击败丁春秋，阿紫现身")
			call CreateNUnitsAtLoc(1, 'h00J', Player(12), loc, bj_UNIT_FACING)
		endif
	elseif GetUnitTypeId(GetTriggerUnit())=='h00J' then
		call createitemloc('I0AM',loc)
		call SetItemUserData(bj_lastCreatedItem,GetRandomInt(1, 5)*$989680+GetRandomInt(1, 5)*$F4240+GetRandomInt(1, 5)*$186A0+GetRandomInt(1, 5)*$2710)
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00击败阿紫，获得神木王鼎")
	endif
	call RemoveLocation(loc)
	set p = null
	set loc =null
endfunction
function DL takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(Wd[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==2))
endfunction
function EL takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call PlaySoundOnUnitBJ(Hh,100,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call unitadditembyidswapped(YaoCao[4],GetTriggerUnit())
if((GetRandomInt(1,75)<=25))then
//遗忘石
call unitadditembyidswapped('I06K',GetTriggerUnit())
else
if((GetRandomInt(1,50)<=25))then
//打孔符
call unitadditembyidswapped('I06N',GetTriggerUnit())
else
//神偷令
call unitadditembyidswapped('I06I',GetTriggerUnit())
endif
endif
//三分之一概率双倍掉落
if (GetRandomInt(1,3)==1)then
	if((GetRandomInt(1,75)<=25))then
//遗忘石
call unitadditembyidswapped('I06K',GetTriggerUnit())
else
if((GetRandomInt(1,50)<=25))then
//打孔符
call unitadditembyidswapped('I06N',GetTriggerUnit())
else
//神偷令
call unitadditembyidswapped('I06I',GetTriggerUnit())
endif
endif
endif
set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+250)
set Wd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00完成任务获得江湖声望+250，金银花一个和"+GetItemName(bj_lastCreatedItem)))
call FlushChildHashtable(YDHT,id*cx)
endfunction


//伴侣属性
function BanLvShuXing_1 takes integer num, integer id1, integer id2, integer blgg, integer blwx, integer bljm, integer blfy, integer bldp, integer blys returns nothing
	set R8[num]=id1
	set S8[num]=id2
	set udg_blgg[num]=blgg
	set udg_blwx[num]=blwx
	set udg_bljm[num]=bljm
	set udg_blfy[num]=blfy
	set udg_bldp[num]=bldp
	set udg_blys[num]=blys
endfunction
function LO takes nothing returns nothing
	call BanLvShuXing_1(1, 1697656885, 1227895865, 2, 0, 0, 0, 3, 0)
	call BanLvShuXing_1(2, 1697656886, 1227895874, 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(3, 1697656887, 1227895380, 0, 0, 0, 0, 1, 1)
	call BanLvShuXing_1(4, 1697656888, 1227895864, 0, 2, 2, 1, 0, 0)
	call BanLvShuXing_1(5, 1697656889, 1227895858, 2, 0, 1, 0, 0, 0)
	call BanLvShuXing_1(6, 1697656898, 1227895859, 0, 2, 0, 0, 0, 1)
	call BanLvShuXing_1(7, 1697656897, 1227895857, 0, 0, 0, 2, 0, 0)
	call BanLvShuXing_1(8, 1697656899, 1227895873, 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(9, 1697656900, 1227895863, 2, 0, 0, 2, 1, 0)
	call BanLvShuXing_1(10, 1697656901, 1227895862, 0, 1, 3, 0, 0, 1)
	call BanLvShuXing_1(11, 1697656902, 1227895861, 1, 1, 0, 0, 0, 2)
	call BanLvShuXing_1(12, 1697656903, 1227895860, 0, 0, 2, 1, 1, 0)
	call BanLvShuXing_1(13, 'e01B', 'I0CP', 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(14, 'e01C', 'I0CS', 3, 3, 3, 3, 3, 3) //白猿
endfunction
//结成伴侣
function NO takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT))
endfunction
function OO takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j =1
	local location loc = GetUnitLoc(u)
	if (UnitTypeNotNull(u,UNIT_TYPE_HERO)) then
		loop
			exitwhen j>MAX_BAN_LV_NUM
			if((GetUnitTypeId(k8[i])==R8[j]))then
				set jingmai[i]=(jingmai[i]-udg_bljm[j])
				set fuyuan[i]=(fuyuan[i]-udg_blfy[j])
				set wuxing[i]=(wuxing[i]-udg_blwx[j])
				set yishu[i]=(yishu[i]-udg_blys[j])
				set gengu[i]=(gengu[i]-udg_blgg[j])
				set danpo[i]=(danpo[i]-udg_bldp[j])
			endif
			set j=j+1
		endloop
		call RemoveUnit(k8[i])
		set j=1
		loop
			exitwhen j>MAX_BAN_LV_NUM
			if((GetItemTypeId(GetManipulatedItem())==S8[j]))then
				call PlaySoundOnUnitBJ(Fh,100,u)
				call CreateNUnitsAtLoc(1,R8[j],p,loc,bj_UNIT_FACING)
				call zw(bj_lastCreatedUnit,u,1.,250.,1000.,1500.,75)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00恭喜你与"+GetUnitName(bj_lastCreatedUnit)+"结成伴侣")
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00查看伴侣属性输入“bl”")
				set k8[i]=bj_lastCreatedUnit
				set jingmai[i]=(jingmai[i]+udg_bljm[j])
				set fuyuan[i]=(fuyuan[i]+udg_blfy[j])
				set wuxing[i]=(wuxing[i]+udg_blwx[j])
				set yishu[i]=(yishu[i]+udg_blys[j])
				set gengu[i]=(gengu[i]+udg_blgg[j])
				set danpo[i]=(danpo[i]+udg_bldp[j])
				call RemoveLocation(loc)
			endif
			set j=j+1
		endloop
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//整理物品
function SO takes nothing returns nothing
	if((GetWidgetLife(GetEnumItem())==101.))then    //D古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(nh))
		call RemoveLocation(GetRectCenter(nh))
	elseif((GetWidgetLife(GetEnumItem())==102.))then    //C古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(oh))
		call RemoveLocation(GetRectCenter(oh))
	elseif((GetWidgetLife(GetEnumItem())==103.))then    //B古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(ph))
		call RemoveLocation(GetRectCenter(ph))
	elseif((GetWidgetLife(GetEnumItem())==104.))then    //A古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(qh))
		call RemoveLocation(GetRectCenter(qh))
	elseif((GetWidgetLife(GetEnumItem())==105.))then    //C草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(rh))
		call RemoveLocation(GetRectCenter(rh))
	elseif((GetWidgetLife(GetEnumItem())==106.))then    //B草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(sh))
		call RemoveLocation(GetRectCenter(sh))
	elseif((GetWidgetLife(GetEnumItem())==107.))then    //A草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(th))
		call RemoveLocation(GetRectCenter(th))
	elseif((GetWidgetLife(GetEnumItem())==108.))then    //18种江湖武功
		call SetItemPosition(GetEnumItem(),-1819.,484.)
	elseif((GetWidgetLife(GetEnumItem())==109.))then
		call SetItemPosition(GetEnumItem(),-1300.,-300.)
	endif
endfunction
function TO takes nothing returns nothing
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00==============================================")
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00★注意，这不是广告，这不是广告")
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00★2015年最好玩手游《屠龙杀》下载地址jzjh.uuu9.com")
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00★用手机浏览器输入地址或扫描载入界面二维码即可下载")
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00★还等什么，快去喊小伙伴们一起玩吧")
	//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|CFF00CC00==============================================")
	call EnumItemsInRectBJ(bj_mapInitialPlayableArea,function SO)
endfunction

//经验符
function oQ takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='texp')
endfunction
function pQ takes nothing returns nothing
	call AddHeroXP(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))], 200000, true)
endfunction
//购买等级
function rQ takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I05Z')
endfunction
function sQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if (GetUnitLevel(udg_hero[i])>=100)then
		call AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFCC00等级高于100无法购买等级")
	else
		if Ce[i]==5 then
			call AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFCC00选择该副职无法购买等级")
		else
			call SetHeroLevel(udg_hero[i], GetUnitLevel(udg_hero[i])+1, true)
		endif
	endif
	set u = null
	set p = null
endfunction
//新手大礼包
function uQ takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896394))
endfunction
function vQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	if((GetRandomInt(1,12)<=3))then
		call AdjustPlayerStateBJ(20000, p, PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得金钱+20000")
	else
		if((GetRandomInt(1,9)<=3))then
			call UnitAddItemById(u,udg_jianghu[GetRandomInt(1,18)])
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得随机江湖武功")
		else
			if((GetRandomInt(1,6)<=3))then
				call UnitAddAbility(u,1093679441)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得神行状态")
				call TriggerSleepAction(300.)
				call UnitRemoveAbility(u,1093679441)
				call DisplayTextToPlayer(p,0,0,"|cFFFF0000失去神行效果")
			else
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,20000)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得狂暴状态")
				call TriggerSleepAction(120.)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,20000)
				call DisplayTextToPlayer(p,0,0,"|cFFFF0000失去狂暴效果")
			endif
		endif
	endif
	set u = null
	set p = null
endfunction
//装备打孔
function xQ takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I06N'))
endfunction
function yQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i11 = 0
	local integer i12 = 0
	if(((GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_ARTIFACT)or(GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_PURCHASABLE)or(GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_CHARGED)))then
		set i12 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/1000,10)
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/100,10)
		if (i11>0) then
			set i12 = i12+1
		endif
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/10,10)
		if (i11>0) then
			set i12 = i12+1
		endif
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1)),10)
		if (i11>0) then
			set i12 = i12+1
		endif
		if (i12<3) then
			call SetItemUserData(UnitItemInSlotBJ(u,1),(GetItemUserData(UnitItemInSlotBJ(u,1))+$3E8))
			call DisplayTimedTextToPlayer(p,0,0,30,"|cff00ffff打孔成功！")
		else
			call unitadditembyidswapped('I06N',u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000第一格物品不能再打孔了")
		endif
	else
		call unitadditembyidswapped('I06N',u)
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000第一格物品不是装备")
	endif
	set u = null
	set p = null
endfunction
//加入副职
function AQ takes nothing returns boolean
	return ((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I08Q' or GetItemTypeId(GetManipulatedItem())=='I0A4' or GetItemTypeId(GetManipulatedItem())=='I0A5' or GetItemTypeId(GetManipulatedItem())=='I0A6' or GetItemTypeId(GetManipulatedItem())=='I0A7' or GetItemTypeId(GetManipulatedItem())=='I08S' or GetItemTypeId(GetManipulatedItem())=='I08T' or GetItemTypeId(GetManipulatedItem())=='I0CG'))
endfunction
function aQ takes nothing returns nothing
	local integer i = 1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if((Ce[i]==0))then
		if (GetItemTypeId(GetManipulatedItem())=='I08Q') then
			set yishu[i]=yishu[i]+5
			set Ce[i]=1
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为炼丹师，获得医术+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I08S') then
			set gengu[i]=(gengu[i]+5)
			set Ce[i]=2
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为锻造师，获得根骨+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I08T') then
			set danpo[i]=(danpo[i]+5)
			set Ce[i]=3
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为兵器师，获得胆魄+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A4') then
			set wuxing[i]=wuxing[i]+5
			set Ce[i]=4
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为鉴定师，获得悟性+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A5') then
			set jingmai[i]=jingmai[i]+5
			set Ce[i]=5
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为练气师，获得经脉+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A6') then
			set fuyuan[i]=fuyuan[i]+5
			set Ce[i]=6
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为寻宝师，获得福缘+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A7') then
			if (GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O002' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O003' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O023' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O02H' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O02I') then
				set Ce[i]=7
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为丫鬟，获得全属性+1")
				set danpo[i] = danpo[i]+1
				set wuxing[i] = wuxing[i]+1
				set gengu[i] = gengu[i]+1
				set fuyuan[i] = fuyuan[i]+1
				set jingmai[i] = jingmai[i]+1
				set yishu[i] = yishu[i]+1
			else
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00男性角色不可加入该副职")
			endif
		elseif (GetItemTypeId(GetManipulatedItem())=='I0CG') then
			if (GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O002' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O003' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O023' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O02H' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O02I') then
				set Ce[i]=8
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为精武师，获得全属性+1")
				set danpo[i] = danpo[i]+1
				set wuxing[i] = wuxing[i]+1
				set gengu[i] = gengu[i]+1
				set fuyuan[i] = fuyuan[i]+1
				set jingmai[i] = jingmai[i]+1
				set yishu[i] = yishu[i]+1
			else
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00女性角色不可加入该副职")
			endif
		endif
	else
		call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffff0000你已经加入专精了！（每个角色只能选择一种专精，也可以不选择）")
	endif
endfunction
//终南山
function GQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896148))
endfunction
function HQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if (GetUnitLevel(u)<$A) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足10级无法传送")
	else
		if (shengwang[i]<500) then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足500无法传送")
		else
			set loc = GetRectCenter(Te)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入终南山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//少林寺后山
function lQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896149))
endfunction
function JQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<25)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足25级无法传送")
	else
		if((shengwang[i]<$5DC))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足1500无法传送")
		else
			set loc = GetRectCenter(ag)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入少林寺后山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//塞外
function LQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896150))
endfunction
function MQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<40)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足40级无法传送")
	else
		if((shengwang[i]<$9C4))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足2500无法传送")
		else
			set loc = GetRectCenter(Bg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入塞外")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//光明顶
function OQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896151))
endfunction
function PQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<55)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足55级无法传送")
	else
		if((shengwang[i]<$FA0))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足4000无法传送")
		else
			set loc = GetRectCenter(Lg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入光明顶")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//少林寺后山
function RQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896152))
endfunction
function SQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<70)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足70级无法传送")
	else
		if((shengwang[i]<6000))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足6000无法传送")
		else
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入少林寺后山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//边疆
function UQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896385))
endfunction
function VQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<100)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足100级无法传送")
	else
		if((shengwang[i]<9000))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足9000无法传送")
		else
			set loc = GetRectCenter(Zg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入边疆")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction

//学习门派内功
function pR takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895856))
endfunction
function LearnNeiGong takes nothing returns nothing
	local button b=GetClickedButton()
	local unit u=LoadUnitHandle(YDHT,StringHash("门派内功"),3)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local integer id=LoadInteger(YDHT,StringHash("门派内功"),4)
	local player p = GetOwningPlayer(u)
	if b==LoadButtonHandle(YDHT,StringHash("门派内功"),1) then
		call UnitAddAbility(u,Q8[id])
		call UnitMakeAbilityPermanent(u, true, Q8[id])
        call DisplayTextToPlayer(GetOwningPlayer(u),0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Q8[id])))
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
		call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        set L7[i]=1
        loop
            exitwhen L7[i]>wugongshu[i]
            if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
            else
                set I7[(((i-1)*20)+L7[i])]=Q8[id]
                exitwhen true
            endif
            set L7[i]=L7[i]+1
        endloop
    elseif b==LoadButtonHandle(YDHT,StringHash("门派内功"),2) then
    	if P8[id] == 'A07W' then
	    	if GetUnitAbilityLevel(u, 'A07W') >= 1 then
	        	call IncUnitAbilityLevel(u, P8[id])
	        else
	        	call UnitAddAbility(u,P8[id])
	        	set L7[i]=1
        		loop
        		    exitwhen L7[i]>wugongshu[i]
        		    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
        		    else
        		        set I7[(((i-1)*20)+L7[i])]=P8[id]
        		        exitwhen true
        		    endif
        		    set L7[i]=L7[i]+1
        		endloop
        	endif
        	call IncUnitAbilityLevel(u, P8[id])
        else
        	call UnitAddAbility(u,P8[id])
        	call UnitMakeAbilityPermanent(u, true, P8[id])
        	set L7[i]=1
        	loop
        	    exitwhen L7[i]>wugongshu[i]
        	    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
        	    else
        	        set I7[(((i-1)*20)+L7[i])]=P8[id]
        	        exitwhen true
        	    endif
        	    set L7[i]=L7[i]+1
        	endloop
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u),0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(P8[id])))
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
		call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))


    endif
    call DialogClear(udg_menpaineigong)
    call FlushChildHashtable(YDHT,StringHash("门派内功"))
    call DialogDestroy(udg_menpaineigong)
    set udg_menpaineigong=null
        set b=null
    set u=null
    set p = null
endfunction
function qR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local button b1=null
	local button b2=null
	local trigger t=CreateTrigger()
	local integer j=0
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,i)
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((UnitHaveItem(GetTriggerUnit(),1227895642)==false))then
	    call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
	else
	    if((O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	        call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00你已经修行过了")
	    else
	    	if GetUnitAbilityLevel(udg_hero[i],Y7[udg_runamen[i]])<2 then
			    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"你的"+GetAbilityName(Y7[udg_runamen[i]])+"|r还没修炼到位")
			else
	    	    set j=1
	    	    loop
	    	    exitwhen j>wugongshu[i]
	    	        if (I7[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))*20+j])!='AEfk' then
			            //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"j="+I2S(j))
			            if j==wugongshu[i] then
	    	            	call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00学习技能已达上限，请先遗忘部分技能")
	    	        	endif
	    	        else
	    	            set O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	    	            call RemoveItem(FetchUnitItem(GetTriggerUnit(),1227895642))
	    	            set bj_forLoopBIndex=1
	    	            set bj_forLoopBIndexEnd=20
	    	            loop
	    	                exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
	    	                if((udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==11))then
			                    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"自由门派没有内功")
			                    exitwhen true
			                elseif (udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==13) then
			                	call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"该门派不在此学习内功")
			                	call unitadditembyidswapped(1227895642, GetTriggerUnit())
			                	set O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
			                    exitwhen true
			                else
	    	                    if((udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==bj_forLoopBIndex))then
	    	                    	set udg_menpaineigong=DialogCreate()
	    	                    	call DialogSetMessage(udg_menpaineigong,"请选择你要修习的内功")
	    	                    	set b1= DialogAddButtonBJ(udg_menpaineigong,GetObjectName(Q8[bj_forLoopBIndex]))
	    	                    	set b2= DialogAddButtonBJ(udg_menpaineigong,GetObjectName(P8[bj_forLoopBIndex]))
	    	                    	call SaveButtonHandle(YDHT,StringHash("门派内功"),1,b1)
	    	                    	call SaveButtonHandle(YDHT,StringHash("门派内功"),2,b2)
	    	                    	call SaveUnitHandle(YDHT,StringHash("门派内功"),3,GetTriggerUnit())
	    	                    	call SaveInteger(YDHT,StringHash("门派内功"),4,bj_forLoopBIndex)
	    	                    	call DialogDisplay(GetOwningPlayer(GetTriggerUnit()),udg_menpaineigong,true)
	    	                    	call TriggerRegisterDialogEvent(t,udg_menpaineigong)
	    	                        call TriggerAddAction(t,function LearnNeiGong)
	    	                    endif
	    	                endif
	    	                set bj_forLoopBIndex=bj_forLoopBIndex+1
	    	            endloop
	    	            exitwhen true
	    	        endif
	    	        set j=j+1
	    	    endloop
    	    endif
	    endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
	set b1=null
	set b2=null
endfunction
function IsMuRongNeiGong takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I09F'))
endfunction
function MuRongNeiGong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	if (udg_runamen[i]!=13) then
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00你没有拜入姑苏慕容")
	else
		if (UnitHaveItem(u,1227895642)==false) then
		    call DisplayTextToPlayer(p,0,0,"|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
		else
			if GetUnitAbilityLevel(u,Y7[udg_runamen[i]])<2 then
			    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"你的"+GetAbilityName(Y7[udg_runamen[i]])+"|r还没修炼到位")
			else
			    if (O8[i]==1) then
			        call DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你已经修行过了")
			    else
			        set j=1
			        loop
			        exitwhen j>wugongshu[i]
			            if (I7[(i-1)*20+j])!='AEfk' then
				            if j==wugongshu[i] then
			                	call DisplayTextToPlayer(p,0,0,"|CFF34FF00学习技能已达上限，请先遗忘部分技能")
			            	endif
			            else
			                set O8[i]=1
			                call RemoveItem(FetchUnitItem(u,1227895642))
			                if danpo[i]>20 then
				            	call UnitAddAbility(u,P8[13])
				            	call UnitMakeAbilityPermanent(u, true, P8[13])
    		    				call DisplayTextToPlayer(p,0,0, "|cff00FF66恭喜领悟技能："+GetObjectName(P8[13]))
    		    				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
								call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    		    				set L7[i]=1
    		    				loop
    		    				    exitwhen L7[i]>wugongshu[i]
    		    				    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
    		    				    else
    		    				        set I7[(((i-1)*20)+L7[i])]=P8[13]
    		    				        exitwhen true
    		    				    endif
    		    				    set L7[i]=L7[i]+1
    		    				endloop
    		    			else
    		    				call UnitAddAbility(u,Q8[13])
    		    				call UnitMakeAbilityPermanent(u, true, Q8[13])
    		    				call DisplayTextToPlayer(p,0,0, "|cff00FF66你还是先掌握"+GetObjectName(Q8[13])+"吧")
    		    				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
								call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    		    				set L7[i]=1
    		    				loop
    		    				    exitwhen L7[i]>wugongshu[i]
    		    				    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
    		    				    else
    		    				        set I7[(((i-1)*20)+L7[i])]=Q8[13]
    		    				        exitwhen true
    		    				    endif
    		    				    set L7[i]=L7[i]+1
    		    				endloop
	    					endif
    		    			exitwhen true
			    	    endif
	    	        set j=j+1
			        endloop
			    endif
		    endif
		endif
	endif
	set u = null
	set p = null
endfunction

function ZS takes nothing returns boolean
	return Rd[1]
endfunction
function d5 takes nothing returns nothing
	call RenWuFail(1)
endfunction
function f5 takes nothing returns boolean
	return Rd[2]
endfunction
function g5 takes nothing returns nothing
	call RenWuFail(2)
endfunction
function i5 takes nothing returns boolean
	return Rd[3]
endfunction
function j5 takes nothing returns nothing
	call RenWuFail(3)
endfunction
function m5 takes nothing returns boolean
	return Rd[4]
endfunction
function nn5 takes nothing returns nothing
	call RenWuFail(4)
endfunction
function p5 takes nothing returns boolean
	return Rd[5]
endfunction
function q5 takes nothing returns nothing
	call RenWuFail(5)
endfunction
//古董价格
function s5 takes nothing returns nothing
	set gudong[1]=1227896115
	set nd[1]=500
	set od[1]=6000
	set gudong[2]=1227896116
	set nd[2]=500
	set od[2]=6000
	set gudong[3]=1227896117
	set nd[3]=500
	set od[3]=6000
	set gudong[4]=1227896118
	set nd[4]=1000
	set od[4]=$4E20
	set gudong[5]=1227896119
	set nd[5]=1000
	set od[5]=$4E20
	set gudong[6]=1227896120
	set nd[6]=1000
	set od[6]=$4E20
	set gudong[7]=1227896121
	set nd[7]=7000
	set od[7]=$C350
	set gudong[8]=1227896129
	set nd[8]=7000
	set od[8]=$C350
	set gudong[9]=1227896130
	set nd[9]=7000
	set od[9]=$C350
	set gudong[10]='I05C'
	set nd[10]=$4E20
	set od[10]=$186A0
endfunction
//古董价格变动
function u5 takes nothing returns nothing
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cfffff000古董商人收购价格发生变动了~")
	set pd[1]=GetRandomInt(nd[1],od[1])
	set pd[2]=GetRandomInt(nd[2],od[2])
	set pd[3]=GetRandomInt(nd[3],od[3])
	set pd[4]=GetRandomInt(nd[4],od[4])
	set pd[5]=GetRandomInt(nd[5],od[5])
	set pd[6]=GetRandomInt(nd[6],od[6])
	set pd[7]=GetRandomInt(nd[7],od[7])
	set pd[8]=GetRandomInt(nd[8],od[8])
	set pd[9]=GetRandomInt(nd[9],od[9])
	set pd[10]=GetRandomInt(nd[10],od[10])
endfunction
//查询古董价格
function w5 takes nothing returns boolean
	return (GetItemTypeId(GetManipulatedItem())=='I050')
endfunction
function x5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	set i = 1
	loop
		exitwhen i > 10
		call createitemloc(gudong[i],v7[9])
		if (UnitHaveItem(u,gudong[i])) then
			call DisplayTimedTextToPlayer(p,0,0,30,"|cff00ff00"+GetItemName(bj_lastCreatedItem)+"："+I2S(pd[i])+" ( "+I2S(nd[i])+" ， "+I2S(od[i])+" )")
		else
			call DisplayTimedTextToPlayer(p,0,0,30,GetItemName(bj_lastCreatedItem)+"："+I2S(pd[i])+" ( "+I2S(nd[i])+" ， "+I2S(od[i])+" )")
		endif
		call RemoveItem(bj_lastCreatedItem)
		set i = i + 1
	endloop
	set u = null
	set p = null
endfunction
//卖古董
function z5 takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896113))
endfunction
function A5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	loop
		exitwhen i>10
		if (GetItemTypeId(UnitItemInSlotBJ(u,1))==gudong[i]) then
			if Ce[1+GetPlayerId(p)]!=4 then
				call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00卖出"+GetItemName(UnitItemInSlotBJ(u,1))+"，获得金钱+"+I2S(pd[i])))
				call AdjustPlayerStateBJ(pd[i], p, PLAYER_STATE_RESOURCE_GOLD)
			else
				call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00你是鉴定师，以最高价格卖出"+GetItemName(UnitItemInSlotBJ(u,1))+"，获得金钱+"+I2S(od[i])))
				call AdjustPlayerStateBJ(od[i], p, PLAYER_STATE_RESOURCE_GOLD)
			endif
			call RemoveItem(UnitItemInSlotBJ(u, 1))
		endif
		set i=i+1
	endloop
	set u = null
	set p = null
endfunction
function B5 takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896114))
endfunction
function b5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	local integer j = 1
	set j=1
	loop
		exitwhen j>6
		set i=1
		loop
			exitwhen i>10
			if((GetItemTypeId(UnitItemInSlotBJ(u,j))==gudong[i]))then
				if Ce[1+GetPlayerId(p)]!=4 then
					call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00卖出"+(GetItemName(UnitItemInSlotBJ(u,j))+("，获得金钱+"+I2S(pd[i])))))
					call AdjustPlayerStateBJ(pd[i],GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
				else
					call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00你是鉴定师，以最高价格卖出"+(GetItemName(UnitItemInSlotBJ(u,j))+("，获得金钱+"+I2S(od[i])))))
					call AdjustPlayerStateBJ(od[i],GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
				endif
				call RemoveItem(UnitItemInSlotBJ(u,j))
			endif
			set i=i+1
		endloop
		set j=j+1
	endloop
	set u = null
	set p = null
endfunction
//收集古董
function CollectGuDong_Conditions takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I093')) or ((GetItemTypeId(GetManipulatedItem())=='I094')) or ((GetItemTypeId(GetManipulatedItem())=='I095')) or ((GetItemTypeId(GetManipulatedItem())=='I096'))
endfunction
function CollectGuDong_Actions takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
    if GetItemTypeId(GetManipulatedItem())=='I093' then
	    if Ce[i] == 4 then
        	if udg_gudongD==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套D等级古董，我将送你一本秘籍")
	    	    set udg_gudongD=1
	    	else
	    	    if UnitHaveItem(u,'I053') and UnitHaveItem(u,'I054') and UnitHaveItem(u,'I055') then
				    call RemoveItem(FetchUnitItem(u,'I053'))
			        call RemoveItem(FetchUnitItem(u,'I054'))
			        call RemoveItem(FetchUnitItem(u,'I055'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本江湖秘籍送给你了")
        	        call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 2
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	            call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	        endif
        	        //if Ce[1+GetPlayerId(p)]==4 then
	    	           // call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
	    	           // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本江湖秘籍吧")
        	        //endif
        	        set udg_gudongD=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套D古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I094' then
    	if Ce[i] == 4 then
        	if udg_gudongC==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套C等级古董，我将送你一本秘籍")
	    	    set udg_gudongC=1
	    	else
			    if UnitHaveItem(u,'I056') and UnitHaveItem(u,'I057') and UnitHaveItem(u,'I058') then
				    call RemoveItem(FetchUnitItem(u,'I056'))
			        call RemoveItem(FetchUnitItem(u,'I057'))
			        call RemoveItem(FetchUnitItem(u,'I058'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本绝学秘籍送给你了")
        	        call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 4
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	    	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	    	endif
        	     //   if Ce[1+GetPlayerId(p)]==4 then
	    	    	   // call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
	    	    	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝学秘籍吧")
        	    	//endif
        	        set udg_gudongC=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套C古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I095' then
    	if Ce[i] == 4 then
        	if udg_gudongB==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套B等级古董，我将送你一本秘籍")
	    	    set udg_gudongB=1
	    	else
			    if UnitHaveItem(u,'I059') and UnitHaveItem(u,'I05A') and UnitHaveItem(u,'I05B') then
				    call RemoveItem(FetchUnitItem(u,'I059'))
			        call RemoveItem(FetchUnitItem(u,'I05A'))
			        call RemoveItem(FetchUnitItem(u,'I05B'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本绝内秘籍送给你了")
        	        call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 6
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	    	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	    	endif
        	     //   if Ce[1+GetPlayerId(p)]==4 then
	    	    	   // call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
	    	    	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝内秘籍吧")
        	    	//endif
        	        set udg_gudongB=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套B古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I096' then
    	if Ce[i] == 4 then
        	if udg_gudongA==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集两个A等级古董，我将送你一本秘籍")
	    	    set udg_gudongA=1
	    	else
	    	    if UnitHaveItem(u,'I05C')  then
			        call RemoveItem(FetchUnitItem(u,'I05C'))
			        if UnitHaveItem(u,'I05C')  then
			            call RemoveItem(FetchUnitItem(u,'I05C'))
			            call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本残章送给你了")
        	            call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
        	            set udg_jdds[i] = udg_jdds[i] + 10
        	            if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	        	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	        	endif
        	         //   if Ce[1+GetPlayerId(p)]==4 then
	    	        	   // call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
	    	        	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本残章吧")
        	        	//endif
        	            set udg_gudongA=0
			        else
        	            call UnitAddItemById(u,'I05C')
			            call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐两个A古董哦")
	    	        endif
        	    else
			        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐两个A古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    endif
    if udg_jdds[i]>=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    set udg_jddsbool[i]=true
	    if udg_zhangmen[i]==true then
		else
			call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
		endif
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
		call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
	endif
	set u=null
	set p=null
endfunction
//剑意系统
function c5 takes nothing returns boolean
	return (UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)
endfunction
function D5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (GetItemType(UnitItemInSlotBJ(u,1))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,2))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,3))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,4))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,5))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,6))!=ITEM_TYPE_ARTIFACT) then
		call SetUnitPosition(u,-10510,-9660)
		call PanCameraToTimedForPlayer(p, -10510, -9660, 0)
	else
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00独孤求败：年轻人，你的杀气太重了，看来你我无缘啊")
	endif
	set u = null
	set p = null
endfunction
function XiuWei takes unit u, integer num, integer id, string s returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (wugongxiuwei[i]>=num) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你已经完成这个修为了")
	elseif (wugongxiuwei[i]<num-1) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你还需要完成上一层修为")
	elseif(((xiuxing[i]<num)or(UnitHaveItem(u,id)==false)))then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000条件不足")
	else
		call RemoveItem(FetchUnitItem(u,id))
		set udg_shanghaijiacheng[i]=udg_shanghaijiacheng[i]+0.05
		set wugongxiuwei[i]=num
		call DisplayTextToPlayer(p,0,0,"|cFF00FF00修行成功，武学修为达到第"+s+"层，武功提升5%")
	endif
	set p = null
endfunction
function F5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896136))
endfunction
function G5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 1, 'I01L', "一")
endfunction
function I5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896137))
endfunction
function l5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 2, 1227895094, "二")
endfunction
function K5 takes nothing returns boolean
		return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I05G'))
endfunction
function L5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 3, 1227895091, "三")
endfunction
function N5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896134))
endfunction
function O5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 4, 'I02S', "四")
endfunction
function Q5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896138))
endfunction
function R5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 5, 'I00P', "五")
endfunction
function LingWuJY_Conditions takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896914))
endfunction
function LingWuJY takes nothing returns nothing
	local trigger t=GetTriggeringTrigger()
	local integer id=GetHandleId(t)
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,i)
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,u)
	if((UnitTypeNotNull(u,UNIT_TYPE_HERO)==false))then
	call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
	call DisplayTextToPlayer(Player(-1+i),0,0,"|cFFFF0000需要主角才能领悟")
	else
	if((wugongxiuwei[i]<1))then
	call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
	call DisplayTextToPlayer(Player(-1+i),0,0,"|cFFFF0000你的武功修为不足")
	else
	if((yd[i]==1))then
	set wuxing[i]=(wuxing[i]-xd[i])
	elseif((yd[i]==2))then
	set gengu[i]=(gengu[i]-xd[i])
	elseif((yd[i]==3))then
	set danpo[i]=(danpo[i]-xd[i])
	elseif((yd[i]==4))then
	set yishu[i]=(yishu[i]-xd[i])
	elseif((yd[i]==5))then
	set fuyuan[i]=(fuyuan[i]-xd[i])
	elseif((yd[i]==6))then
	set jingmai[i]=(jingmai[i]-xd[i])
	endif
	if((wugongxiuwei[i]==1))then
	set xd[i]=GetRandomInt(xd[i],2)
	elseif((wugongxiuwei[i]==2))then
	set xd[i]=GetRandomInt(xd[i],4)
	elseif((wugongxiuwei[i]==3))then
	set xd[i]=GetRandomInt(xd[i],6)
	elseif((wugongxiuwei[i]==4))then
	set xd[i]=GetRandomInt(xd[i],8)
	elseif((wugongxiuwei[i]==5))then
	set xd[i]=GetRandomInt(xd[i],10)
	endif
	set yd[i]=0
	call DisplayTimedTextToPlayer(Player(-1+i),0,0,20.,("|cff00ff00恭喜领悟到第"+(I2S(xd[i])+"层剑意")))
	call DisplayTimedTextToPlayer(Player(-1+i),0,0,20.,"|cffffff00输入聊天信息“jy”可以把剑意转化为一种性格属性，但是每次转化需要消耗5个珍稀币")
	if((xd[i]==2))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\fairywing.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==4))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\fenlie.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==6))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\HeroByakuyaWing.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==8))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\AWING.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==10))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\FWIND.MDX")
	set vd[i]=bj_lastCreatedEffect
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
	set t=null
	set u=null
	set p=null
endfunction
//转化剑意
function ZhuanHuaJY_Conditions takes nothing returns boolean
	return((Ad[(1+GetPlayerId(GetTriggerPlayer()))]))
endfunction
function ZhuanHuaJY takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	set Ad[i]=false
	if((GetClickedButton()==B8[i]))then
		call DialogClear(v8[i])
	else
		if((yd[i]==1))then
			set wuxing[i]=(wuxing[i]-xd[i])
		elseif((yd[i]==2))then
			set gengu[i]=(gengu[i]-xd[i])
		elseif((yd[i]==3))then
			set danpo[i]=(danpo[i]-xd[i])
		elseif((yd[i]==4))then
			set yishu[i]=(yishu[i]-xd[i])
		elseif((yd[i]==5))then
			set fuyuan[i]=(fuyuan[i]-xd[i])
		elseif((yd[i]==6))then
			set jingmai[i]=(jingmai[i]-xd[i])
		endif
		if((GetClickedButton()==w8[i]))then
			set gengu[i]=(gengu[i]+xd[i])
			set yd[i]=2
		elseif((GetClickedButton()==y8[i]))then
			set wuxing[i]=(wuxing[i]+xd[i])
			set yd[i]=1
		elseif((GetClickedButton()==z8[i]))then
			set fuyuan[i]=(fuyuan[i]+xd[i])
			set yd[i]=5
		elseif((GetClickedButton()==A8[i]))then
			set danpo[i]=(danpo[i]+xd[i])
			set yd[i]=3
		elseif((GetClickedButton()==a8[i]))then
			set yishu[i]=(yishu[i]+xd[i])
			set yd[i]=4
		elseif((GetClickedButton()==x8[i]))then
			set jingmai[i]=(jingmai[i]+xd[i])
			set yd[i]=6
		endif
		call AdjustPlayerStateBJ(-5,p,PLAYER_STATE_RESOURCE_LUMBER)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC转化成功|r")
		call DialogClear(v8[i])
	endif
	set p=null
endfunction
//结拜系统
function MaiHuangZhi_Conditions takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I000'))
endfunction
function MaiHuangZhi takes nothing returns nothing
	call unitadditembyidswapped('I05Y',GetTriggerUnit())
	call unitadditembyidswapped('I05Y',GetTriggerUnit())
endfunction
function IsHuangZhi takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I05Y'))
endfunction
function ShaoHuangZhi takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if((Bd[i]))then
		call DisplayTimedTextToPlayer(p,0,0,20.,"|cffff0000你已经使用过黄纸了，还是等等另外一个人的响应吧")
		call unitadditembyidswapped('I05Y',GetTriggerUnit())
	else
		set Bd[i]=true
		set ad = ad+1
		set bd[ad]=udg_hero[i]
		if((ModuloInteger(ad,2)==0))then
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20.,("|cffff66ff恭喜"+(GetPlayerName(GetOwningPlayer(bd[(ad-1)]))+("和"+(GetPlayerName(GetOwningPlayer(bd[ad]))+"结拜为兄弟")))))
		else
			call DisplayTimedTextToPlayer(p,0,0,20.,"|cffff66ff使用成功，等待另外一位玩家与你结拜....")
		endif
	endif
	set u=null
	set p=null
endfunction
function kT takes nothing returns boolean
	return (Bd[(1+GetPlayerId(GetTriggerPlayer()))])
endfunction
function mT takes nothing returns nothing
	local integer i = 1 + GetPlayerId(GetTriggerPlayer())
	local integer j = 1
	local real x
	local real y
	loop
		exitwhen j>6
		if (udg_hero[i]==bd[j]) then
			if (ModuloInteger(j,2)==0) then
				if (bd[j-1]!=null) then
					set x = GetUnitX(bd[j-1])
					set y = GetUnitY(bd[j-1])
					call SetUnitPosition(udg_hero[i],x,y)
					call PanCameraToTimedForPlayer(GetTriggerPlayer(),x,y,0)
				endif
			else
				if (bd[j+1]!=null) then
					set x = GetUnitX(bd[j+1])
					set y = GetUnitY(bd[j+1])
					call SetUnitPosition(udg_hero[i],x,y)
					call PanCameraToTimedForPlayer(GetTriggerPlayer(),x,y,0)
				endif
			endif
		endif
	set j=j+1
	endloop
endfunction
//名门系统
function oT takes nothing returns nothing
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
function qT takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem())=='I0BO'or GetItemTypeId(GetManipulatedItem())=='I07S'))
endfunction
function rT takes nothing returns nothing
	//if GetItemTypeId(GetManipulatedItem())==1227896663 then
	//	set ue = 1
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896661 then
	//	set ue = 2
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896660 then
	//	set ue = 3
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896662 then
	//	set ue = 4
	//endif
	if GetItemTypeId(GetManipulatedItem())=='I07S' then
		set ue = 5
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30.,"|cff00ffff有玩家开始预约名门挑战，本波进攻怪物将会增加名门高手，大家要小心应付了！")
	endif
	if GetItemTypeId(GetManipulatedItem())=='I0BO' then
		set ue = 0
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30.,"|cff00ffff有玩家取消了预约名门挑战，下波进攻怪物将不会增加名门高手，大家要小心应付了！")
	endif

endfunction
function cT takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='hmtt'))
endfunction
function DT takes nothing returns nothing
	call ModifyGateBJ(1,Gt)
	call YDWEPolledWaitNull(((.18-(.01*I2R(O4)))*2000.))
	call ModifyGateBJ(0,Gt)
endfunction
function FT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),1093681749)!=0))
endfunction
function GT takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function HT takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163,GetEnumUnit())
	call SetWidgetLife(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163),(GetUnitState(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163),UNIT_STATE_LIFE)-(200.*I2R(GetUnitLevel(GetEnumUnit())))))
endfunction
function IT takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call AddSpecialEffectLocBJ(loc,"war3mapImported\\ChaosExplosion.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.,loc,Condition(function GT)),function HT)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function JT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),1093681753)!=0)and(GetRandomInt(1,70)<=5))
endfunction
function KT takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,1697656919,GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call UnitAddAbility(bj_lastCreatedUnit,1093681754)
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D7)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call ShowUnitHide(bj_lastCreatedUnit)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function MT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A0C0')!=0)and(GetRandomInt(1,70)<=5))
endfunction
function NT takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,1697656918,GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function NewSave takes player p returns nothing
	call YDWE_PreloadSL_Set( p, "ID", 1, StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) )
	call YDWE_PreloadSL_Set( p, "高V", 2, 100 )
	call YDWE_PreloadSL_Set( p, "VIP", 3, 100 )
	call YDWE_PreloadSL_Set( p, "11VIP", 4, 100 )
	call YDWE_PreloadSL_Set( p, "换VIP", 5, 100 )
	call YDWE_PreloadSL_Set( p, "青龙", 6, 100 )
	call YDWE_PreloadSL_Set( p, "招式伤害", 7, 0 )
	call YDWE_PreloadSL_Set( p, "内力", 8, 0 )
	call YDWE_PreloadSL_Set( p, "真实伤害", 9, 0 )
	call YDWE_PreloadSL_Set( p, "暴击伤害", 10, 0 )
	call YDWE_PreloadSL_Set( p, "绝学领悟", 11, 0 )
	call YDWE_PreloadSL_Set( p, "根骨", 12, 0 )
	call YDWE_PreloadSL_Set( p, "胆魄", 13, 0 )
	call YDWE_PreloadSL_Set( p, "医术", 14, 0 )
	call YDWE_PreloadSL_Set( p, "经脉", 15, 0 )
	call YDWE_PreloadSL_Set( p, "悟性", 16, 0 )
	call YDWE_PreloadSL_Set( p, "福缘", 17, 0 )
	call YDWE_PreloadSL_Set( p, "杀人数", 18, 0 )
	call YDWE_PreloadSL_Save( p, "JueZhan", "VIP", SAV_NUM)
	call DisplayTextToPlayer(p, 0, 0, "|CFFff9933创建新存档")
endfunction
globals
	constant integer SAV_NUM = 18
endglobals
function Trig_______VIPActions takes nothing returns nothing
    local player p = null
    local integer  i = 1
    loop
        exitwhen i > 6
        //call BJDebugMsg(I2S(i))
        set p = Player(i-1)
        call YDWE_PreloadSL_Load( p, "JueZhan", "VIP", SAV_NUM  )
        //call BJDebugMsg(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2))
        //call BJDebugMsg(I2S(StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2))))
        //call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "ID", 1)))
        if ((bj_lastLoadPreloadSLResult == true)) then
        	if YDWE_PreloadSL_Get(p, "ID", 1) == StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "高V", 2)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "VIP", 3)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "11VIP", 4)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "换VIP", 5)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "青龙", 6)))
        	    if YDWE_PreloadSL_Get(p, "VIP", 3) == 120 then
        	        set udg_vip[i] = 1
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "11VIP", 4) == 120 then
        	        set udg_elevenvip[i] = 1
        	        set wugongshu[i] = 11
        	        call UnitRemoveAbility(udg_hero[i],'A040')
        	        call UnitRemoveAbility(udg_hero[i],'A041')
        	        call UnitRemoveAbility(udg_hero[i],'A042')
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "换VIP", 5) == 120 then
        	        set udg_changevip[i] = 1
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "高V", 2) == 120 then
        	        set udg_vip[i] = 2
        	        set wugongshu[i] = 11
        	        call UnitRemoveAbility(udg_hero[i],'A040')
        	        call UnitRemoveAbility(udg_hero[i],'A041')
        	        call UnitRemoveAbility(udg_hero[i],'A042')
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
        	    endif
        	endif
        //else
        //	call NewSave(p)
    	endif

        set i = i + 1
    endloop
endfunction
//VIP码计算
function Qskc_GetL takes player pl,string str,integer hashs, integer which_number returns boolean
	local string OOl1= SubStringBJ(str,1,10)
	local string O01l= SubStringBJ(str,11,163)
	local string I1l1= SubStringBJ(str,164,218)
	local string Ill1= SubStringBJ(str,219,245)
	local integer OOll= StringLength(O01l)
	local integer Il0O = StringHash(LoadStr(YDHT, GetHandleId(pl), GetHandleId(pl)*2))
	local integer OO11= 0
	local integer OO1l= 0
	local integer O0O0= 0
	local integer OO0O= 0
	local integer O0ll= 0
	local integer O011 = 0
	local integer O1lO = 0
	local integer Ol1O = 0
	local integer lO01 = 0
	local integer lI0O = 0
	local integer l0O1 = 0
	local integer O0l1 = IAbsBJ(Il0O)
	loop
		exitwhen O011 >= which_number
		set O0l1 =IAbsBJ(StringHash(I2S(O0l1)))
		set OO1l =IAbsBJ(StringHash(I2S(O0l1)))
		set O0O0 =IAbsBJ(StringHash(I2S(O0l1)))
		set O011 = O011 + 1
		set OO0O = OO0O + 1
		set O1lO = O1lO + 1
	endloop
	if O0l1 < $3B9ACA00 then
		set Ol1O = O0l1 + $1A4CCA00
		set O0l1 = O0l1 + $3B9ACA00
		set lO01 = O0l1 + $3C6BAB00
	endif
		set O0ll=StringHash(O01l)
		set lI0O=O0ll + StringHash(I2S(O0l1))
		set O0ll=O0ll + StringHash(I2S(OOll))
		set l0O1=O0ll + StringHash(I2S(OOll))
	loop
		exitwhen OO11 >= OOll
		set O0ll=O0ll + StringHash(SubString(O01l, OO11, OO11 + 1))
		set OO11 = OO11 + 1
	endloop
	return O0ll==hashs and I2S(O0l1)==OOl1
endfunction
function activationCode takes nothing returns nothing
    // 1号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-1418175828,4))) then
        if ((udg_vip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了角色兰馨和门派明教" ) ) )
            set udg_vip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了角色兰馨和门派明教，不能重复解锁" ) )
        endif
    else
    endif
    // 2号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),366685871,5))) then
        if ((udg_elevenvip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了11格武功" ) ) )
            set udg_elevenvip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
            set wugongshu[GetConvertedPlayerId(GetTriggerPlayer())] = 11
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A040')
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A041')
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A042')
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了11格武功，不能重复解锁" ) )
        endif
    else
    endif
    // 3号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),141150855,6))) then
        if ((udg_changevip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了角色瑾轩" ) ) )
            set udg_changevip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了角色瑾轩，不能重复解锁" ) )
        endif
    else
    endif
endfunction

//===========================================================================
function initActivationCode takes nothing returns nothing
    local trigger t = CreateTrigger()
	local integer i = 0
	loop
		exitwhen i > 6
		call TriggerRegisterPlayerChatEvent(t,Player(i),"",true)
		set i = i + 1
	endloop
	call TriggerAddAction(t,function activationCode)
	set t = null
endfunction

/*
 * 万能装备属性存储
 */
function Cuns takes nothing returns nothing
	//攻击力、护甲、招式伤害、内力、真实伤害
	call Cun('I00C',"龙鳞剑","攻击力",5000,"招式伤害",750,"内力",200,"真实伤害",200)
	call Cun('I00B',"倚天剑","攻击力",4500,"招式伤害",700,"内力",190,"真实伤害",0)
	call Cun('I00D',"屠龙刀","攻击力",4850,"招式伤害",720,"内力",195,"真实伤害",300)
	call Cun('I04F',"断肠","攻击力",1000,"招式伤害",150,"内力",0,"真实伤害",80)
	call Cun('I00P',"晶玉扇","攻击力",3000,"招式伤害",250,"内力",150,"真实伤害",0)
	call Cun('I00Q',"紫金刀","攻击力",2700,"招式伤害",230,"内力",0,"真实伤害",100)
	call Cun('I01L',"精钢剑","攻击力",650,"招式伤害",80,"内力",0,"真实伤害",0)
	call Cun('I01N',"七星扇","攻击力",800,"招式伤害",100,"内力",0,"真实伤害",40)
	call Cun('I00X',"鸳鸯刀","攻击力",1500,"招式伤害",150,"内力",50,"真实伤害",0)
	call Cun('I097',"打狗棒","攻击力",4500,"招式伤害",650,"内力",0,"真实伤害",0)
	call Cun('I099',"君子剑","攻击力",2000,"招式伤害",100,"内力",50,"真实伤害",50)
	call Cun('I09B',"蛇杖","攻击力",4500,"招式伤害",0,"内力",0,"真实伤害",1000)
	call Cun('I09A',"淑女剑","攻击力",1800,"招式伤害",50,"内力",100,"真实伤害",50)
	call Cun('I09C',"双剑合璧","攻击力",3800,"招式伤害",220,"内力",220,"真实伤害",150)
	call Cun('I098',"血刀","攻击力",50000,"招式伤害",700,"内力",0,"真实伤害",0)
	call Cun('I09D',"玉箫","攻击力",4850,"招式伤害",0,"内力",900,"真实伤害",0)
	call Cun('I08V',"江湖·忠","攻击力",10000,"招式伤害",350,"内力",350,"真实伤害",350)
	call Cun('I02S',"镇妖+1","攻击力",1000,"招式伤害",150,"内力",0,"真实伤害",0)
	call Cun('I02M',"镇妖+2","攻击力",2000,"招式伤害",300,"内力",0,"真实伤害",0)
	call Cun('I02Q',"镇妖+3","攻击力",3000,"招式伤害",450,"内力",0,"真实伤害",0)
	call Cun('I02R',"镇妖+4","攻击力",4000,"招式伤害",600,"内力",0,"真实伤害",0)
	call Cun('I02P',"镇妖+5","攻击力",5000,"招式伤害",750,"内力",0,"真实伤害",0)
	call Cun('I01F',"点金","攻击力",500,"招式伤害",50,"内力",20,"真实伤害",0)
	call Cun('I01S',"开山斧","攻击力",450,"招式伤害",30,"内力",0,"真实伤害",0)
	call Cun('I020',"青铜刀","攻击力",0,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01E',"秋叶刃","攻击力",600,"招式伤害",60,"内力",0,"真实伤害",0)
	call Cun('I021',"锁候枪","攻击力",200,"招式伤害",15,"内力",0,"真实伤害",0)
	call Cun('I016',"宣花斧","攻击力",800,"招式伤害",100,"内力",0,"真实伤害",0)
	call Cun('I013',"饮血枪","攻击力",1200,"招式伤害",120,"内力",0,"真实伤害",50)

	call Cun('I022',"布衣","防御",35,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01T',"彩衣","防御",60,"招式伤害",0,"内力",15,"真实伤害",0)
	call Cun('I01H',"虎皮衣","防御",85,"招式伤害",0,"内力",40,"真实伤害",0)
	call Cun('I01G',"蛇皮裘","防御",90,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I017',"开阳衣","防御",150,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I014',"烈火衣","防御",300,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01O',"七星锦服","防御",150,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I04E',"金蝉衣","防御",250,"招式伤害",0,"内力",80,"真实伤害",0)
	call Cun('I00O',"软猬甲","防御",450,"招式伤害",0,"内力",100,"真实伤害",0)
	call Cun('I00F',"六合纵横","防御",700,"招式伤害",200,"内力",100,"真实伤害",200)
	call Cun('I00G',"破军无双","防御",800,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I090',"决战·霸","防御",1000,"招式伤害",0,"内力",250,"真实伤害",0)
	call Cun('I0AL',"少林袈裟","防御",500,"招式伤害",300,"内力",0,"真实伤害",0)
	call Cun('I09Z',"通神","防御",500,"招式伤害",0,"内力",0,"真实伤害",0)

	call Cun('I01Q',"破军帽","防御",20,"招式伤害",0,"内力",0,"真实伤害",30)
	call Cun('I00M',"灭云冠","防御",300,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I08Z',"决战·恶","防御",500,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01R',"破军鞋","防御",25,"招式伤害",0,"内力",0,"真实伤害",30)
	call Cun('I00T',"神行鞋","防御",200,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I00N',"踏风靴","防御",200,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I08Y',"决战·魁",null,0,"招式伤害",0,"内力",0,"真实伤害",500)
	call Cun('I01V',"苍蟒护腕","攻击力",0,"招式伤害",0,"内力",0,"真实伤害",10)
	call Cun('I01U',"纱绒护腕","攻击力",0,"招式伤害",15,"内力",0,"真实伤害",0)
	call Cun('I018',"彩云腕",null,0,"招式伤害",50,"内力",20,"真实伤害",0)
	call Cun('I01D',"天璇护腕",null,0,"招式伤害",100,"内力",40,"真实伤害",0)
	call Cun('I01M',"精钢护腕","防御",30,"招式伤害",40,"内力",20,"攻击力",250)
	call Cun('I00Z',"追月手",null,0,"招式伤害",120,"内力",0,"真实伤害",0)
	call Cun('I00R',"天玑毒掌","攻击力",1200,"招式伤害",0,"内力",0,"真实伤害",150)
	call Cun('I00S',"无魅雷手",null,0,"招式伤害",200,"内力",100,"真实伤害",0)
	call Cun('I00H',"魔影炎掌","攻击力",2000,"招式伤害",300,"内力",0,"真实伤害",0)
	call Cun('I00I',"踏风冰手","攻击力",1800,"招式伤害",0,"内力",150,"真实伤害",0)
	call Cun('I023',"护身符","防御",0,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I024',"环戒","攻击力",0,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01X',"琥珀项链",null,0,"招式伤害",0,"内力",15,"真实伤害",0)
	call Cun('I01Y',"水碧护符",null,0,"招式伤害",10,"内力",15,"真实伤害",0)
	call Cun('I01Z',"闪避护符","防御",0,"招式伤害",15,"内力",0,"真实伤害",0)
	call Cun('I01W',"传家符","防御",0,"招式伤害",0,"内力",0,"真实伤害",15)
	call Cun('I01J',"七绝护符",null,0,"招式伤害",0,"内力",0,"真实伤害",20)
	call Cun('I01K',"青竹戒指","攻击力",200,"招式伤害",20,"内力",0,"真实伤害",0)
	call Cun('I01I',"星云戒指",null,0,"招式伤害",30,"内力",0,"真实伤害",0)
	call Cun('I019',"白虎符","攻击力",300,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I01A',"蓝魔项链","防御",50,"招式伤害",0,"内力",40,"真实伤害",0)
	call Cun('I01B',"北斗护符","攻击力",500,"招式伤害",0,"内力",0,"真实伤害",60)
	call Cun('I01C',"梦蝶项链",null,0,"招式伤害",50,"内力",0,"真实伤害",40)
	call Cun('I01P',"七星戒指",null,0,"招式伤害",0,"内力",30,"真实伤害",0)
	call Cun('I010',"云海链",null,0,"招式伤害",120,"内力",60,"真实伤害",0)
	call Cun('I00Y',"七情束",null,0,"招式伤害",100,"内力",0,"真实伤害",0)
	call Cun('I011',"影岚护符",null,0,"招式伤害",100,"内力",0,"真实伤害",0)
	call Cun('I012',"玉修护符",null,0,"招式伤害",0,"内力",0,"真实伤害",50)
	call Cun('I00U',"云灭护符","攻击力",1000,"招式伤害",200,"内力",0,"真实伤害",0)
	call Cun('I00V',"抗魔护符",null,0,"招式伤害",0,"内力",150,"真实伤害",100)
	call Cun('I00W',"重生链","防御",100,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I00J',"神迹戒",null,0,"招式伤害",0,"内力",150,"真实伤害",200)
	call Cun('I00K',"如意戒","攻击力",1500,"招式伤害",0,"内力",150,"真实伤害",0)
	call Cun('I00L',"绿扳指","防御",200,"招式伤害",0,"内力",0,"真实伤害",0)
	call Cun('I08W',"江湖·情",null,0,"招式伤害",900,"内力",400,"真实伤害",0)
	call Cun('I08X',"江湖·义",null,0,"招式伤害",800,"内力",0,"真实伤害",500)

	//根骨、悟性、绝学领悟
	call Cun('I00C',"龙鳞剑","根骨",3,"胆魄",2,"绝学领悟",2,null,0)
	call Cun('I00B',"倚天剑","悟性",3,"医术",2,"绝学领悟",2,null,0)
	call Cun('I00D',"屠龙刀","经脉",3,"福缘",2,"绝学领悟",1,null,0)
	call Cun('I04F',"断肠","经脉",2,null,0,null,0,null,0)
	call Cun('I00P',"晶玉扇","悟性",2,"福缘",2,"绝学领悟",1,null,0)
	call Cun('I00Q',"紫金刀","经脉",2,"医术",2,null,0,null,0)
	call Cun('I01N',"七星扇","医术",1,null,0,null,0,null,0)
	call Cun('I01E',"秋叶刃","根骨",1,null,0,null,0,null,0)
	call Cun('I00X',"鸳鸯刀","福缘",2,null,0,null,0,null,0)
	call Cun('I097',"打狗棒","胆魄",3,"全属性",1,"绝学领悟",2,null,0)
	call Cun('I099',"君子剑","悟性",1,"医术",1,"绝学领悟",1,null,0)
	call Cun('I09B',"蛇杖","根骨",4,"全属性",2,"绝学领悟",1,null,0)
	call Cun('I09A',"淑女剑","福缘",1,"经脉",1,"绝学领悟",1,null,0)
	call Cun('I09C',"双剑合璧","悟性",3,"全属性",1,"绝学领悟",3,null,0)
	call Cun('I098',"血刀","根骨",7,"胆魄",4,"绝学领悟",2,null,0)
	call Cun('I09D',"玉箫","福缘",2,"全属性",2,"绝学领悟",3,null,0)
	call Cun('I08V',"江湖·忠","全属性",2,"绝学领悟",1,null,0,null,0)
	call Cun('I013',"饮血枪","胆魄",1,null,0,null,0,null,0)
	call Cun('I01L',"精钢剑","胆魄",1,null,0,null,0,null,0)

	call Cun('I01G',"蛇皮裘","经脉",1,null,0,null,0,null,0)
	call Cun('I014',"烈火衣","经脉",1,null,0,null,0,null,0)
	call Cun('I01O',"七星锦服","胆魄",1,null,0,null,0,null,0)
	call Cun('I04E',"金蝉衣","悟性",1,"福缘",1,null,0,null,0)
	call Cun('I00O',"软猬甲","根骨",2,"胆魄",2,"绝学领悟",1,null,0)
	call Cun('I00F',"六合纵横","根骨",2,"胆魄",2,"福缘",1,null,0)
	call Cun('I00G',"破军无双","医术",3,"悟性",2,null,0,null,0)
	call Cun('I090',"决战·霸","全属性",1,"绝学领悟",1,null,0,null,0)
	call Cun('I0AL',"少林袈裟","全属性",1,"根骨",2,null,0,null,0)

	call Cun('I01Q',"破军帽","悟性",1,null,0,null,0,null,0)
	call Cun('I00M',"灭云冠","根骨",1,"悟性",2,"经脉",1,"绝学领悟",1)
	call Cun('I08Z',"决战·恶","全属性",1,"绝学领悟",1,null,0,null,0)
	call Cun('I01R',"破军鞋","福缘",1,null,0,null,0,null,0)
	call Cun('I00T',"神行鞋","福缘",2,"经脉",1,null,0,null,0)
	call Cun('I00N',"踏风靴","悟性",2,"福缘",1,"医术",1,null,0)
	call Cun('I08Y',"决战·魁","全属性",1,"绝学领悟",1,null,0,null,0)
	call Cun('I01V',"苍蟒护腕","根骨",1,null,0,null,0,null,0)
	call Cun('I01U',"纱绒护腕","悟性",1,null,0,null,0,null,0)
	call Cun('I01D',"天璇护腕","胆魄",1,null,0,null,0,null,0)
	call Cun('I015',"霓云手套","根骨",1,null,0,null,0,null,0)
	call Cun('I01M',"精钢护腕","根骨",1,null,0,null,0,null,0)
	call Cun('I00Z',"追月手","悟性",2,null,0,null,0,null,0)
	call Cun('I00R',"天玑毒掌","胆魄",2,"经脉",1,null,0,null,0)
	call Cun('I00S',"无魅雷手","悟性",3,"绝学领悟",1,null,0,null,0)
	call Cun('I00H',"魔影炎掌","根骨",2,"经脉",2,"绝学领悟",1,null,0)
	call Cun('I00I',"踏风冰手","悟性",2,"胆魄",2,null,0,null,0)
	call Cun('I01W',"传家符","医术",2,null,0,null,0,null,0)
	call Cun('I0AM',"神木王鼎","医术",5,null,0,null,0,null,0)
	call Cun('I01X',"琥珀项链","经脉",1,null,0,null,0,null,0)
	call Cun('I01Y',"水碧护符","胆魄",1,null,0,null,0,null,0)
	call Cun('I01Z',"闪避护符","福缘",1,null,0,null,0,null,0)
	call Cun('I01J',"七绝护符","福缘",1,null,0,null,0,null,0)
	call Cun('I01I',"星云戒指","医术",1,null,0,null,0,null,0)
	call Cun('I01A',"蓝魔项链","医术",1,null,0,null,0,null,0)
	call Cun('I01B',"北斗护符","福缘",1,null,0,null,0,null,0)
	call Cun('I01C',"梦蝶项链","根骨",1,null,0,null,0,null,0)
	call Cun('I01P',"七星戒指","经脉",1,null,0,null,0,null,0)
	call Cun('I010',"云海链","医术",2,null,0,null,0,null,0)
	call Cun('I00Y',"七情束","经脉",2,null,0,null,0,null,0)
	call Cun('I0CH',"郭靖戴过的环戒","根骨",1,null,0,null,0,null,0)
	call Cun('I011',"影岚护符","悟性",2,"经脉",1,null,0,null,0)
	call Cun('I012',"玉修护符","根骨",1,"胆魄",2,null,0,null,0)
	call Cun('I00U',"云灭护符","根骨",2,"医术",1,null,0,null,0)
	call Cun('I00V',"抗魔护符","胆魄",1,"经脉",2,null,0,null,0)
	call Cun('I00W',"重生链","医术",3,null,0,null,0,null,0)
	call Cun('I00J',"神迹戒","福缘",4,null,0,null,0,null,0)
	call Cun('I00K',"如意戒","经脉",1,"胆魄",3,null,0,null,0)
	call Cun('I00L',"绿扳指","医术",1,"胆魄",1,"福缘",2,null,0)
	call Cun('I08W',"江湖·情","全属性",1,"绝学领悟",1,null,0,null,0)
	call Cun('I08X',"江湖·义","全属性",1,"绝学领悟",1,null,0,null,0)

	//攻击速度、暴击伤害、暴击率、杀怪回复、生命回复等等
	call Cun('I00C',"龙鳞剑","攻击速度",30,"暴击伤害",0.6,"暴击率",0.05,null,0)
	call Cun('I00B',"倚天剑","闪避",15,"法力回复",5,"杀怪回复",2000,"伤害回复",500)
	call Cun('I04F',"断肠","攻击速度",30,"暴击率",0.02,null,0,null,0)
	call Cun('I00P',"晶玉扇","攻击速度",25,"杀怪回复",1500,null,0,null,0)
	call Cun('I00Q',"紫金刀","暴击伤害",0.6,"暴击率",0.05,"杀怪回复",1500,null,0)
	call Cun('I01L',"精钢剑","攻击速度",20,"吸血",0.05,"暴击率",0.03,null,0)
	call Cun('I01N',"七星扇","法力回复",2,null,0,null,0,null,0)
	call Cun('I00X',"鸳鸯刀","攻击速度",20,null,0,null,0,null,0)
	call Cun('I097',"打狗棒","攻击速度",60,"暴击伤害",1.5,null,0,null,0)
	call Cun('I099',"君子剑","吸血",0.15,"法力回复",2,"杀怪回复",500,"生命回复",200)
	call Cun('I09B',"蛇杖","暴击伤害",0.9,"暴击率",0.5,null,0,null,0)
	call Cun('I09A',"淑女剑","闪避",15,"伤害回复",500,"暴击伤害",0.3,"暴击率",0.03)
	call Cun('I09C',"双剑合璧","吸血",0.15,"法力回复",5,"杀怪回复",2000,"生命回复",500)
	call Cun('I09C',"双剑合璧","闪避",15,"伤害回复",800,"暴击伤害",0.5,"暴击率",0.05)
	call Cun('I098',"血刀","攻击速度",60,"暴击伤害",0.8,"杀怪回复",10000,null,0)
	call Cun('I09D',"玉箫","法力回复",15,"杀怪回复",2000,"生命回复",1500,null,0)
	call Cun('I08V',"江湖·忠","攻击速度",60,"暴击伤害",1,"暴击率",0.2,"杀怪回复",3000)
	call Cun('I02S',"镇妖+1","攻击速度",20,"暴击伤害",0.15,"杀怪回复",300,null,0)
	call Cun('I02M',"镇妖+2","攻击速度",30,"暴击伤害",0.3,"杀怪回复",600,null,0)
	call Cun('I02Q',"镇妖+3","攻击速度",40,"暴击伤害",0.45,"杀怪回复",900,null,0)
	call Cun('I02R',"镇妖+4","攻击速度",50,"暴击伤害",0.6,"杀怪回复",1200,null,0)
	call Cun('I02P',"镇妖+5","攻击速度",60,"暴击伤害",0.75,"杀怪回复",1500,null,0)
	call Cun('I01S',"开山斧","暴击伤害",0.15,"杀怪回复",300,null,0,null,0)
	call Cun('I020',"青铜刀","攻击速度",40,"杀怪回复",0,null,0,null,0)
	call Cun('I0CI',"张无忌用过的青铜刀","攻击速度",60,"杀怪回复",0,null,0,null,0)
	call Cun('I01E',"秋叶刃","攻击速度",15,"杀怪回复",500,null,0,null,0)
	call Cun('I021',"锁候枪","分裂",0.3,"暴击率",0.03,null,0,null,0)
	call Cun('I016',"宣花斧","吸血",0.15,null,0,null,0,null,0)
	call Cun('I013',"饮血枪","攻击速度",20,null,0,null,0,null,0)

	call Cun('I022',"布衣","气血",1000,"杀怪回复",30,"移动速度",30,null,0)
	call Cun('I01T',"彩衣","气血",3000,"伤害回复",70,null,0,null,0)
	call Cun('I01H',"虎皮衣","气血",3000,null,0,null,0,null,0)
	call Cun('I01G',"蛇皮裘","气血",5000,"伤害回复",100,"生命回复",250,null,0)
	call Cun('I017',"开阳衣","气血",10000,null,0,null,0,null,0)
	call Cun('I014',"烈火衣","气血",20000,"闪避",10,null,0,null,0)
	call Cun('I01O',"七星锦服","气血",7000,"攻击速度",30,"伤害回复",300,null,0)
	call Cun('I04E',"金蝉衣","气血",15000,"生命回复",700,"法力上限",20,"法力回复",5)
	call Cun('I00O',"软猬甲","气血",40000,"生命回复",1200,"法力上限",20,null,0)
	call Cun('I00F',"六合纵横","气血",30000,"伤害回复",500,null,0,null,0)
	call Cun('I00G',"破军无双","气血",50000,"生命回复",1500,"闪避",20,null,0)
	call Cun('I090',"决战·霸","气血",100000,"生命回复",2000,"暴击率",0.05,null,0)
	call Cun('I0AL',"少林袈裟","气血",100000,"伤害回复",2000,"暴击伤害",0.7,null,0)
	call Cun('I09Z',"通神","气血",40000,null,0,null,0,null,0)

	call Cun('I01Q',"破军帽","气血",1500,"伤害回复",150,null,0,null,0)
	call Cun('I00M',"灭云冠","法力上限",40,"暴击伤害",0.2,null,0,null,0)
	call Cun('I08Z',"决战·恶","气血",50000,"攻击速度",50,"伤害回复",800,"法力上限",100)
	call Cun('I01R',"破军鞋","生命回复",150,"移动速度",70,null,0,null,0)
	call Cun('I00T',"神行鞋","气血",25000,"移动速度",160,"法力上限",25,"法力回复",10)
	call Cun('I00N',"踏风靴","移动速度",180,"杀怪回复",1000,"生命回复",500,"法力回复",4)
	call Cun('I08Y',"决战·魁","移动速度",200,"闪避",30,"伤害回复",600,"暴击伤害",0.8)
	call Cun('I01V',"苍蟒护腕","攻击速度",15,"暴击率",0.05,null,0,null,0)
	call Cun('I01U',"纱绒护腕","攻击速度",15,"暴击伤害",0.15,null,0,null,0)
	call Cun('I018',"彩云腕","生命回复",200,null,0,null,0,null,0)
	call Cun('I01D',"天璇护腕","攻击速度",20,"杀怪回复",600,"气血",6000,null,0)
	call Cun('I015',"霓云手套","吸血",0.03,"生命回复",300,"法力上限",20,null,0)
	call Cun('I01M',"精钢护腕","气血",2000,null,0,null,0,null,0)
	call Cun('I00Z',"追月手","攻击速度",25,"伤害回复",400,"法力回复",5,null,0)
	call Cun('I00R',"天玑毒掌","攻击速度",30,"伤害回复",400,"暴击伤害",0.3,"暴击率",0.02)
	call Cun('I00S',"无魅雷手","攻击速度",30,"杀怪回复",1500,"法力回复",5,null,0)
	call Cun('I00H',"魔影炎掌","攻击速度",40,"杀怪回复",2000,null,0,null,0)
	call Cun('I00I',"踏风冰手","攻击速度",40,"伤害回复",500,"暴击伤害",0.5,"暴击率",0.05)
	call Cun('I023',"护身符","伤害回复",40,null,0,null,0,null,0)
	call Cun('I024',"环戒","杀怪回复",100,"生命回复",50,null,0,null,0)
	call Cun('I0CH',"郭靖戴过的环戒","闪避",20,"杀怪回复",100,"生命回复",50,null,0)
	call Cun('I01W',"传家符","杀怪回复",150,"生命回复",300,null,0,null,0)
	call Cun('I01X',"琥珀项链","杀怪回复",250,"生命回复",150,null,0,null,0)
	call Cun('I01Y',"水碧护符","杀怪回复",200,"生命回复",120,"法力回复",3,"伤害回复",60)
	call Cun('I01Z',"闪避护符","杀怪回复",150,"闪避",10,"伤害回复",80,null,0)
	call Cun('I01J',"七绝护符","攻击速度",30,"暴击率",0.02,null,0,null,0)
	call Cun('I01K',"青竹戒指","法力回复",3,null,0,null,0,null,0)
	call Cun('I01I',"星云戒指","杀怪回复",300,"暴击伤害",0.1,null,0,null,0)
	call Cun('I019',"白虎符","气血",5000,null,0,null,0,null,0)
	call Cun('I01A',"蓝魔项链","杀怪回复",800,"法力上限",40,"法力回复",5,null,0)
	call Cun('I01B',"北斗护符","移动速度",80,"生命回复",600,null,0,null,0)
	call Cun('I01C',"梦蝶项链",null,0,"攻击速度",15,"气血",8000,"伤害回复",100)
	call Cun('I01P',"七星戒指",null,0,"攻击速度",15,"生命回复",200,"暴击伤害",0.15)
	call Cun('I010',"云海链","气血",13000,"杀怪回复",500,"法力上限",25,"暴击伤害",0.2)
	call Cun('I00Y',"七情束","生命回复",400,"法力上限",20,"法力回复",5,"暴击率",0.02)
	call Cun('I011',"影岚护符","吸血",0.05,"攻击速度",20,"移动速度",100,"生命回复",400)
	call Cun('I012',"玉修护符","气血",25000,"杀怪回复",700,"生命回复",600,"暴击率",0.01)
	call Cun('I00U',"云灭护符","攻击速度",40,"杀怪回复",1000,"暴击伤害",0.3,null,0)
	call Cun('I00V',"抗魔护符","吸血",0.1,"气血",25000,"法力上限",15,"暴击伤害",0.4)
	call Cun('I00W',"重生链","吸血",0.05,"攻击速度",45,"生命回复",700,"暴击率",0.01)
	call Cun('I00J',"神迹戒","杀怪回复",1000,"伤害回复",500,"法力回复",8,null,0)
	call Cun('I00K',"如意戒","攻击速度",40,"伤害回复",400,"法力上限",50,null,0)
	call Cun('I00L',"绿扳指","攻击速度",50,"生命回复",500,"气血",20000,"暴击伤害",0.5)
	call Cun('I08W',"江湖·情","生命回复",1000,"法力回复",7,"暴击率",0.1,null,0)
	call Cun('I08X',"江湖·义","吸血",0.3,"攻击速度",0.5,"暴击伤害",1,"暴击率",0.05)
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

	call MapStartCreateUnitsAndInitEnvironments()
	call ConfigureNeutralVictim()
	set ju=Filter(function bu)
	set filterIssueHauntOrderAtLocBJ=Filter(function IssueHauntOrderAtLocBJFilter)
	set filterEnumDestructablesInCircleBJ=Filter(function tu)
	set filterGetUnitsInRectOfPlayer=Filter(function GetUnitsInRectOfPlayerFilter)
	set filterGetUnitsOfTypeIdAll=Filter(function GetUnitsOfTypeIdAllFilter)
	set filterGetUnitsOfPlayerAndTypeId=Filter(function GetUnitsOfPlayerAndTypeIdFilter)
	set filterMeleeTrainedUnitIsHeroBJ=Filter(function MeleeTrainedUnitIsHeroBJFilter)
	set filterLivingPlayerUnitsOfTypeId=Filter(function LivingPlayerUnitsOfTypeIdFilter)
	set i=1
	loop
	exitwhen i>=50
	set udg_baolv[i]=20
	set i=i+1
	endloop
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

	call InitVIPLib()

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
	set lh=CreateTrigger()
	call TriggerRegisterTimerEventSingle(lh,.1)
	call TriggerAddAction(lh,function Zw)
	set Jh=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(4),true)
	call TriggerAddCondition(Jh,Condition(function fx))
	call TriggerAddAction(Jh,function SelectHero)
	set Lh=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(4),true)
	call TriggerAddCondition(Lh,Condition(function kx))
	call TriggerAddAction(Lh,function MenPai)
	set Lh=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(4),true)
	call TriggerAddAction(Lh,function ShowBaoLv)
	set Mh=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mh,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Mh,Condition(function ox))
	call TriggerAddAction(Mh,function JiaRuMenPai)
	//set t=CreateTrigger()
	call InitShopWeapon()
	call InitTrig_ZhangMenSkill()
	//call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	//call TriggerAddCondition(t,Condition(function IsBuyWeapon))
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsShenDingSanYin))
	call TriggerAddAction(t,function ShenDingSanYin)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsCeShiShangHai))
	call TriggerAddAction(t,function CeShiShangHai)
	set t = CreateTrigger()
	call TriggerRegisterUnitEvent(t, gg_unit_N00I_0116, EVENT_UNIT_DAMAGED)
	call TriggerAddCondition(t, Condition(function IsCalcShangHai))
	call TriggerAddAction(t, function CalcShangHai)
	set Mh=CreateTrigger()
	call TriggerRegisterLeaveRectSimple(Mh,udg_xuanmenpai)
	call TriggerAddCondition(Mh,Condition(function WuMenPai_Condition))
	call TriggerAddAction(Mh,function WuMenPai_Action)
	set t=CreateTrigger()
	call TriggerRegisterLeaveRectSimple(t,udg_tiaozhanqu)
	call TriggerAddCondition(t,Condition(function TiaoZhanShiBai))
	call TriggerAddAction(t,function TiaoZhanShiBai_Action)
	set Nh=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Nh,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	call TriggerAddCondition(Nh,Condition(function rx))
	call TriggerAddAction(Nh,function sx)
	set Oh=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Oh,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(Oh,Condition(function uuxx))
	call TriggerAddAction(Oh,function vvxx)
	set Ph=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ph,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(Ph,Condition(function xx))
	call TriggerAddAction(Ph,function yx)
	set t = CreateTrigger()
    call TriggerRegisterTimerEventSingle( t, 2.00 )
    call TriggerAddAction(t, function Trig_______VIPActions)
	set Qh=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Qh,.0)
	call TriggerAddAction(Qh,function Ax)
	set Rh=CreateTrigger()
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(0))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(1))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(2))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(3))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(4))
	call TriggerAddAction(Rh,function RenWuShuXing)
	set Sh=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(Sh,Player(0),"up",false)
	call TriggerAddCondition(Sh,Condition(function GameNanDu_Condition))
	call TriggerAddAction(Sh,function GameNanDu)
	set Th=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Th,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Th,Condition(function Ex))
	call TriggerAddAction(Th,function PlayerDeath)
	set Uh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Uh,udg_revivetimer[1])
	call TriggerAddAction(Uh,function PlayerReviveA)
	set Vh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Vh,udg_revivetimer[2])
	call TriggerAddAction(Vh,function PlayerReviveB)
	set Wh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Wh,udg_revivetimer[3])
	call TriggerAddAction(Wh,function PlayerReviveC)
	set Xh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Xh,udg_revivetimer[4])
	call TriggerAddAction(Xh,function PlayerReviveD)
	set Yh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Yh,udg_revivetimer[5])
	call TriggerAddAction(Yh,function PlayerReviveE)
	set Zh=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Zh,5)
	call TriggerAddAction(Zh,function Qx)
	set ei=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ei,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(ei,Condition(function Ux))
	call TriggerAddAction(ei,function Vx)
	set fi=CreateTrigger()
	call TriggerRegisterPlayerEventLeave(fi,Player(0))
	call TriggerRegisterPlayerEventLeave(fi,Player(1))
	call TriggerRegisterPlayerEventLeave(fi,Player(2))
	call TriggerRegisterPlayerEventLeave(fi,Player(3))
	call TriggerRegisterPlayerEventLeave(fi,Player(4))
	call TriggerAddAction(fi,function PlayerLeave)
	set gi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gi,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(gi,Condition(function ey))
	call TriggerAddAction(gi,function KillGuai)
	set hi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hi,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(hi,Condition(function hy))
	call TriggerAddAction(hi,function Victory)
	set ii=CreateTrigger()
	call TriggerRegisterUnitEvent(ii,udg_ZhengPaiWL,EVENT_UNIT_DEATH)
	call TriggerAddAction(ii,function Lose)
	set ji=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ji,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ji,Condition(function BuyJiDiWuDi))
	call TriggerAddAction(ji,function JiDiWuDi)
	set ki=CreateTrigger()
	call TriggerRegisterTimerEventSingle(ki,10.)
	call TriggerAddAction(ki,function SystemWindow)
	set mi=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(mi,4.)
	call TriggerAddAction(mi,function uuyy)
	set ni=CreateTrigger()
	call Ov(ni)
	call TriggerAddCondition(ni,Condition(function wy))
	call TriggerAddAction(ni,function SetMaxDamage)
	set oi=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(oi,Player(0),"sw",true)
	call TriggerAddCondition(oi,Condition(function BeforeAttack))
	call TriggerAddAction(oi,function SetShiWan)
	set pi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(pi,Condition(function BuyChengFang))
	call TriggerAddAction(pi,function ShengChengFang)
	set ri=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ri,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ri,Condition(function BuyGaoChengFang))
	call TriggerAddAction(ri,function ShengGaoChengFang)
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(si,Condition(function BuyKuanDong))
	call TriggerAddAction(si,function KuanDongHua)
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(si,Condition(function BuyKuanDong_1))
	call TriggerAddAction(si,function KuanDongHua_1)
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(si,Condition(function IsWuXueJingYao))
	call TriggerAddAction(si,function WuXueJingYao)
	set zi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(zi,Condition(function Zy))
	call TriggerAddAction(zi,function dz)
	set Ai=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ai,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Ai,Condition(function fz))
	call TriggerAddAction(Ai,function gz)
	set ai=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ai,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(ai,Condition(function iz))
	call TriggerAddAction(ai,function jz)
	set Bi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Bi,Condition(function mz))
	call TriggerAddAction(Bi,function nz)
	set bi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bi,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(bi,Condition(function pz))
	call TriggerAddAction(bi,function qz)

	//set Ci=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Ci,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	//call TriggerAddCondition(Ci,Condition(function sz))
	//call TriggerAddAction(Ci,function tz)
	//set ci=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(ci,EVENT_PLAYER_UNIT_DROP_ITEM)
	//call TriggerAddCondition(ci,Condition(function vz))
	//call TriggerAddAction(ci,function wz)
	//set Di=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Di,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	//call TriggerAddCondition(Di,Condition(function yz))
	//call TriggerAddAction(Di,function zz)
	//set Ei=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Ei,EVENT_PLAYER_UNIT_DROP_ITEM)
	//call TriggerAddCondition(Ei,Condition(function az))
	//call TriggerAddAction(Ei,function Bz)
	//set Fi=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Fi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	//call TriggerAddCondition(Fi,Condition(function Cz))
	//call TriggerAddAction(Fi,function cz)
	//set Gi=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Gi,EVENT_PLAYER_UNIT_DROP_ITEM)
	//call TriggerAddCondition(Gi,Condition(function Ez))
	//call TriggerAddAction(Gi,function Fz)
	//set Hi=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Hi,EVENT_PLAYER_UNIT_ATTACKED)
	//call TriggerAddCondition(Hi,Condition(function UnitHaveJueZhanBa))
	//call TriggerAddAction(Hi,function JueZhanBaXiaoGuo)
	//set Ii=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Ii,EVENT_PLAYER_UNIT_ATTACKED)
	//call TriggerAddCondition(Ii,Condition(function UnitHaveJiangHuZhong))
	//call TriggerAddAction(Ii,function JiangHuZhongXiaoGuo)
	set li=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(li,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(li,Condition(function Mz))
	call TriggerAddAction(li,function ItemChongFu)
	set Ji=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ji,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Ji,Condition(function Pz))
	call TriggerAddAction(Ji,function Qz)
	set Ki=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ki,EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(Ki,Condition(function Sz))
	call TriggerAddAction(Ki,function Tz)
	set Li=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Li,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Li,Condition(function Vz))
	call TriggerAddAction(Li,function Wz)
	//set t=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	//call TriggerAddCondition(t,Condition(function IsKillYang))
	//call TriggerAddAction(t,function KillYang)
	set Pi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Pi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Pi,Condition(function kA))
	call TriggerAddAction(Pi,function mA)
	set Vi=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Vi,2.)
	call TriggerAddAction(Vi,function cA)
	set Wi=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Wi,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerRegisterPlayerUnitEventSimple(Wi,Player(15),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddAction(Wi,function EA)
	set Xi=CreateTrigger()
	call TriggerAddCondition(Xi,Condition(function GA))
	call TriggerAddAction(Xi,function HA)
	set Yi=CreateTrigger()
	call DisableTrigger(Yi)
	call TriggerRegisterTimerEventPeriodic(Yi,3.)
	call TriggerAddAction(Yi,function lA)
	set Zi=CreateTrigger()
	call DisableTrigger(Zi)
	call TriggerRegisterTimerEventPeriodic(Zi,2.)
	call TriggerAddAction(Zi,function KA)
	set dj=CreateTrigger()
	call TriggerAddCondition(dj,Condition(function MA))
	call TriggerAddAction(dj,function NA)
	set ej=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ej,A7[1])
	call TriggerAddAction(ej,function PA)
	set fj=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(fj,A7[2])
	call TriggerAddAction(fj,function RA)
	set gj=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(gj,A7[3])
	call TriggerAddAction(gj,function TA)
	set hj=CreateTrigger()
	call TriggerAddAction(hj,function VA)
	set ij=CreateTrigger()
	call TriggerAddAction(ij,function XA)
	set jj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(jj,Condition(function ZA))
	call TriggerAddAction(jj,function ea)
	set kj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(kj,5.)
	call TriggerAddAction(kj,function ha)
	set mj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(mj,Player(6),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(mj,Condition(function ja))
	call TriggerAddAction(mj,function ka)
	set nj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(nj,6.)
	call TriggerAddAction(nj,function qa)
	set oj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(oj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(oj,Condition(function sa))
	call TriggerAddAction(oj,function ua)
	set pj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(pj,Condition(function wa))
	call TriggerAddAction(pj,function xa)
	set qj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(qj,Condition(function za))
	call TriggerAddAction(qj,function Aa)
	set rj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(rj,EVENT_PLAYER_UNIT_SPELL_CAST)
	call TriggerAddCondition(rj,Condition(function Ba))
	call TriggerAddAction(rj,function ba)
	set sj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sj,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(sj,Condition(function ca))
	call TriggerAddAction(sj,function Da)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function Trig_ttConditions))
	call TriggerAddAction(t,function Trig_ttActions)
	set tj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tj,EVENT_PLAYER_UNIT_SPELL_CAST)
	call TriggerAddCondition(tj,Condition(function IsQieHuanItem))
	call TriggerAddAction(tj,function QieHuanItem)
	set uj=CreateTrigger()
	call TriggerRegisterTimerEventSingle(uj,.15)
	call TriggerAddAction(uj,function MenPaiWuGong)
	set vj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vj,EVENT_PLAYER_HERO_LEVEL)
	call TriggerAddCondition(vj,Condition(function Ja))
	call TriggerAddAction(vj,function HeroLevel)
	set wj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wj,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(wj,Condition(function Ma))
	call TriggerAddAction(wj,function KillGuaiJiaXie)
	set xj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(xj,1.)
	call TriggerAddAction(xj,function YiShuHuiXie)
	set yj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yj,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(yj,Condition(function Ra))
	call TriggerAddAction(yj,function Sa)
	set zj=CreateTrigger()
	call Ov(zj)
	call TriggerAddCondition(zj,Condition(function Ua))
	call TriggerAddAction(zj,function Va)
	set Aj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Aj,Player(6),EVENT_PLAYER_UNIT_DEATH)
	call TriggerRegisterPlayerUnitEventSimple(Aj,Player(7),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Aj,Condition(function Xa))
	call TriggerAddAction(Aj,function Ya)
	set aj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(aj,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(aj,Condition(function dB))
	call TriggerAddAction(aj,function eB)
	set Bj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bj,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Bj,Condition(function YiWangJiNeng))
	call TriggerAddAction(Bj,function ForgetAbility)
	set t=CreateTrigger()
	call YDWESyStemItemCombineRegistTrigger( t )
    call TriggerAddAction(t, function WuPinHeCheng)
	set bj=CreateTrigger()
	call TriggerRegisterDialogEvent(bj,K7[1])
	call TriggerRegisterDialogEvent(bj,K7[2])
	call TriggerRegisterDialogEvent(bj,K7[3])
	call TriggerRegisterDialogEvent(bj,K7[4])
	call TriggerRegisterDialogEvent(bj,K7[5])
	call TriggerAddAction(bj,function jB)
	set Cj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cj,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Cj,Condition(function mB))
	call TriggerAddAction(Cj,function nB)
	set cj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cj,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(cj,Condition(function IsWuGongBook))
	call TriggerAddAction(cj,function BookLearnWuGong)
	set fk=CreateTrigger()
	call TriggerRegisterTimerEventSingle(fk,0.1)
	call TriggerAddAction(fk,function NeiGongJiaChengS)
	set pk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(pk,Condition(function uC))
	call TriggerAddAction(pk,function vC)
	set qk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(qk,Condition(function xC))
	call TriggerAddAction(qk,function yC)
	set rk=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(rk,1.)
	call TriggerAddAction(rk,function BC)
	set sk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(sk,Condition(function CC))
	call TriggerAddAction(sk,function cC)
	set tk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(tk,Condition(function EC))
	call TriggerAddAction(tk,function FC)
	set uk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(uk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(uk,Condition(function HC))
	call TriggerAddAction(uk,function IC)
	set vk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(vk,Condition(function JC))
	call TriggerAddAction(vk,function KC)
	set wk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(wk,Condition(function MC))
	call TriggerAddAction(wk,function NC)
	set xk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(xk,Condition(function PC))
	call TriggerAddAction(xk,function QC)
	set yk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(yk,Condition(function SC))
	call TriggerAddAction(yk,function TC)
	set zk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(zk,Condition(function VC))
	call TriggerAddAction(zk,function WC)
	set Ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Ak,Condition(function YC))
	call TriggerAddAction(Ak,function ZC)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function ec))
	call TriggerAddAction(ak,function gc)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function isJiuYangCanJuan))
	call TriggerAddAction(ak,function jiuYangCanJuan)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function IsWuHunShi))
	call TriggerAddAction(ak,function WuHunShi)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsWeiTuo))
	call TriggerAddAction(Bk,function WeiTuoGun)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsSiXiang))
	call TriggerAddAction(Bk,function SiXiangZhang)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsXueDao))
	call TriggerAddAction(Bk,function XueDaoDao)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsXueMo))
	call TriggerAddAction(Bk,function XueMoDao)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsFoMie))
	call TriggerAddAction(Bk,function FoMieWanJieGong)
	call XueDao_Trigger()
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsTaiZu))
	call TriggerAddAction(Bk,function TaiZuQuan)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsTieBuShan))
	call TriggerAddAction(Bk,function TieBuShan)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsFengMo))
	call TriggerAddAction(Bk,function FengMoGun)
	set Bk=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( Bk )
	call TriggerAddCondition(Bk,Condition(function IsUnitBoss))
	call TriggerAddAction(Bk,function BossFangJiNeng)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsFengMoShe))
	call TriggerAddAction(Bk,function FengMoShe)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bk,Condition(function IsJinDing))
	call TriggerAddAction(Bk,function JinDingZhang)
	set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(t, Condition(function IsJiuYang))
	    call TriggerAddAction(t, function JiuYang)
	set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(t, Condition(function IsMieJue))
	    call TriggerAddAction(t, function MieJueJian)
	set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(t, Condition(function IsYiLiao))
	    call TriggerAddAction(t, function YiLiaoPian)
	set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(t, Condition(function IsGaiBang))
	    call TriggerAddAction(t, function GaiBangXinFa)
	set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(t, Condition(function IsYeCha))
	    call TriggerAddAction(t, function YeChaGun)
	set t=CreateTrigger()
	    call TriggerRegisterDialogEvent(t,udg_index)
	    call TriggerAddAction(t,function ChooseMoShi_Action)
	set t=CreateTrigger()
	    call TriggerRegisterDialogEvent(t,wuhun)
	    call TriggerAddAction(t,function JiHuoCanZhang)
	set t=CreateTrigger()
	    call TriggerRegisterDialogEvent(t,udg_nan)
	    call TriggerAddAction(t,function ChooseNanDu_Action)
	set t=CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger( t )
		call TriggerAddCondition(t,Condition(function IsJiDiBaoHu))
		call TriggerAddAction(t,function JiDiBaoHu)
	set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(t, Condition(function Trig_YunDaXianShenConditions))
	    call TriggerAddAction(t, function Trig_YunDaXianShenActions)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Bk,Condition(function IsFoGuang))
	call TriggerAddAction(Bk,function FoGuangZhang)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Bk,Condition(function IsXueZhan))
	call TriggerAddAction(Bk,function XueZhanDao)
	//set Bk=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	//call TriggerAddCondition(Bk,Condition(function IsQuanZhen))
	//call TriggerAddAction(Bk,function QuanZhenJian)
	//set Bk=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	//call TriggerAddCondition(Bk,Condition(function IsWanHua))
	//call TriggerAddAction(Bk,function WanHuaJian)
	set Bk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Bk,Condition(function IsEMeiJiuYang))
	call TriggerAddAction(Bk,function EMeiJiuYang)
	set t=CreateTrigger()
	call TriggerRegisterUnitEvent(t,udg_ZhengPaiWL,EVENT_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function JiDiAiDa_Conditions))
	call TriggerAddAction(t,function JiDiAiDa_Actions)
	set t=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t,1000.00)
	call TriggerAddAction(t,function MoJiaoJiuRen)
	set bk=CreateTrigger()
	call Ov(bk)
	call TriggerAddCondition(bk,Condition(function qc))
	call TriggerAddAction(bk,function ucFunc)
	set Ck=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ck,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Ck,Condition(function wc))
	call TriggerAddAction(Ck,function xc)
	set ck=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ck,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(ck,Condition(function zc))
	call TriggerAddAction(ck,function Bc)
	set Dk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Dk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Dk,Condition(function Cc))
	call TriggerAddAction(Dk,function cc)
	set Ek=CreateTrigger()
	call Ov(Ek)
	call TriggerAddCondition(Ek,Condition(function Ec))
	call TriggerAddAction(Ek,function Hc)
	set Fk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Fk,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Fk,Condition(function lc))
	call TriggerAddAction(Fk,function Jc)
	set Gk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Gk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Gk,Condition(function Lc))
	call TriggerAddAction(Gk,function Mc)
	set Hk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Hk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Hk,Condition(function Oc))
	call TriggerAddAction(Hk,function Pc)
	set Ik=CreateTrigger()
	call Ov(Ik)
	call TriggerAddCondition(Ik,Condition(function Rc))
	call TriggerAddAction(Ik,function Sc)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsRouYun))
	call TriggerAddAction(t,function RouYunZhang)
	set Jk=CreateTrigger()
	call Ov(Jk)
	call TriggerAddCondition(Jk,Condition(function Xc))
	call TriggerAddAction(Jk,function Yc)
	set Kk=CreateTrigger()
	call Ov(Kk)
	call TriggerAddCondition(Kk,Condition(function dD))
	call TriggerAddAction(Kk,function eD)
	set Lk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Lk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Lk,Condition(function gD))
	call TriggerAddAction(Lk,function jD)
	set Mk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Mk,Condition(function mD))
	call TriggerAddAction(Mk,function oD)
	set t=CreateTrigger()
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsChunYangHuo))
	call TriggerAddAction(t,function ChunYangHuo)
	set Nk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Nk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Nk,Condition(function qD))
	call TriggerAddAction(Nk,function rD)
	set Ok=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ok,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Ok,Condition(function tD))
	call TriggerAddAction(Ok,function wD)
	set Pk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Pk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Pk,Condition(function yD))
	call TriggerAddAction(Pk,function zD)
	set Qk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Qk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Qk,Condition(function aD))
	call TriggerAddAction(Qk,function BD)
	set Rk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Rk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Rk,Condition(function CD))
	call TriggerAddAction(Rk,function cD)
	set Sk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Sk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Sk,Condition(function ED))
	call TriggerAddAction(Sk,function FD)
	set Tk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Tk,Condition(function HD))
	call TriggerAddAction(Tk,function ID)
	set Uk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Uk,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Uk,Condition(function JD))
	call TriggerAddAction(Uk,function KD)
	set Vk=CreateTrigger()
	call Ov(Vk)
	call TriggerAddCondition(Vk,Condition(function MD))
	call TriggerAddAction(Vk,function ND)
	set Wk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Wk,Condition(function PD))
	call TriggerAddAction(Wk,function QD)
	set Xk=CreateTrigger()
	call Ov(Xk)
	call TriggerAddCondition(Xk,Condition(function SD))
	call TriggerAddAction(Xk,function TD)
	set Yk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Yk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Yk,Condition(function VD))
	call TriggerAddAction(Yk,function WD)
	set Zk=CreateTrigger()
	call Ov(Zk)
	call TriggerAddCondition(Zk,Condition(function YD))
	call TriggerAddAction(Zk,function ZD)

	set t = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition( t, Condition( function Trig_arc_Conditions ) )
    call TriggerAddAction( t, function Trig_arc_Actions )
	set im=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(im,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(im,Condition(function BE))
	call TriggerAddAction(im,function cE)
	set jm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(jm,Condition(function EE))
	call TriggerAddAction(jm,function FE)
	set km=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(km,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(km,Condition(function HE))
	call TriggerAddAction(km,function LE)
	set mm=CreateTrigger()
	call Ov(mm)
	call TriggerAddCondition(mm,Condition(function NE))
	call TriggerAddAction(mm,function OE)
	set nm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(nm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(nm,Condition(function QE))
	call TriggerAddAction(nm,function TE)
	set om=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(om,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(om,Condition(function VE))
	call TriggerAddAction(om,function WE)
	set pm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(pm,Condition(function YE))
	call TriggerAddAction(pm,function ZE)
	set qm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(qm,Condition(function e3))
	call TriggerAddAction(qm,function j3)
	set rm=CreateTrigger()
	call Ov(rm)
	call TriggerAddCondition(rm,Condition(function m3))
	call TriggerAddAction(rm,function nn3)
	set sm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(sm,Condition(function p3))
	call TriggerAddAction(sm,function s3)
	set um=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(um,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(um,Condition(function u3))
	call TriggerAddAction(um,function v3)
	set vm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(vm,Condition(function x3))
	call TriggerAddAction(vm,function y3)
	set wm=CreateTrigger()
	call Ov(wm)
	call TriggerAddCondition(wm,Condition(function A3))
	call TriggerAddAction(wm,function a3)
	set xm=CreateTrigger()
	call Ov(xm)
	call TriggerAddCondition(xm,Condition(function b3))
	call TriggerAddAction(xm,function C3)
	set ym=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ym,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ym,Condition(function D3))
	call TriggerAddAction(ym,function E3)
	set zm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(zm,Condition(function G3))
	call TriggerAddAction(zm,function I3)
	set Am=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Am,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Am,Condition(function J3))
	call TriggerAddAction(Am,function MM3)
	set am=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(am,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(am,Condition(function O3))
	call TriggerAddAction(am,function Q3)
	set Bm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bm,Condition(function S3))
	call TriggerAddAction(Bm,function T3)
	set bm=CreateTrigger()
	call Ov(bm)
	call TriggerAddCondition(bm,Condition(function V3))
	call TriggerAddAction(bm,function Y3)
	set Cm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Cm,Condition(function dF))
	call TriggerAddAction(Cm,function eF)
	set cm=CreateTrigger()
	call Ov(cm)
	call TriggerAddCondition(cm,Condition(function gF))
	call TriggerAddAction(cm,function hF)
	set Dm=CreateTrigger()
	call Ov(Dm)
	call TriggerAddCondition(Dm,Condition(function jF))
	call TriggerAddAction(Dm,function kF)
	set Em=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Em,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Em,Condition(function nF))
	call TriggerAddAction(Em,function oF)
	set Fm=CreateTrigger()
	call Ov(Fm)
	call TriggerAddCondition(Fm,Condition(function qF))
	call TriggerAddAction(Fm,function rF)
	set Gm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Gm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Gm,Condition(function tF))
	call TriggerAddAction(Gm,function yF)
	set Hm=CreateTrigger()
	call Ov(Hm)
	call TriggerAddCondition(Hm,Condition(function AF))
	call TriggerAddAction(Hm,function aF)
	set Im=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Im,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Im,Condition(function bF))
	call TriggerAddAction(Im,function CF)
	set lm=CreateTrigger()
	call Ov(lm)
	call TriggerAddCondition(lm,Condition(function DF))
	call TriggerAddAction(lm,function EF)
	set Jm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Jm,Condition(function GF))
	call TriggerAddAction(Jm,function HF)
	set Km=CreateTrigger()
	call Ov(Km)
	call TriggerAddCondition(Km,Condition(function lF))
	call TriggerAddAction(Km,function JF)
	set Lm=CreateTrigger()
	call Ov(Lm)
	call TriggerAddCondition(Lm,Condition(function LF))
	call TriggerAddAction(Lm,function MF)
	set Mm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mm,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Mm,Condition(function OF))
	call TriggerAddAction(Mm,function RF)
	set Nm=CreateTrigger()
	call Ov(Nm)
	call TriggerAddCondition(Nm,Condition(function TF))
	call TriggerAddAction(Nm,function UF)
	set Om=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Om,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Om,Condition(function WF))
	call TriggerAddAction(Om,function XF)
	set Pm=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(Pm,1.)
	call TriggerAddCondition(Pm,Condition(function ZF))
	call TriggerAddAction(Pm,function gG)
	set Qm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Qm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Qm,Condition(function iG))
	call TriggerAddAction(Qm,function jG)
	set Rm=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(Rm,.03)
	call TriggerAddCondition(Rm,Condition(function mG))
	call TriggerAddAction(Rm,function qG)
	set Sm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Sm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Sm,Condition(function sG))
	call TriggerAddAction(Sm,function tG)
	set Tm=CreateTrigger()
	call Ov(Tm)
	call TriggerAddCondition(Tm,Condition(function vG))
	call TriggerAddAction(Tm,function wG)
	set Um=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Um,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Um,Condition(function yG))
	call TriggerAddAction(Um,function zG)
	set Vm=CreateTrigger()
	call Ov(Vm)
	call TriggerAddCondition(Vm,Condition(function aG))
	call TriggerAddAction(Vm,function BG)
	set Wm=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wm,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Wm,Condition(function CG))
	call TriggerAddAction(Wm,function cG)
	set Xm=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(Xm,.3)
	call TriggerAddCondition(Xm,Condition(function EG))
	call TriggerAddAction(Xm,function IG)
	set Ym=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ym,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Ym,Condition(function JG))
	call TriggerAddAction(Ym,function KG)
	set Zm=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(Zm,1.)
	call TriggerAddCondition(Zm,Condition(function MG))
	call TriggerAddAction(Zm,function QG)
	//胡家刀法
	set dn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(dn,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(dn,Condition(function SG))
	call TriggerAddAction(dn,function WG)
	set en=CreateTrigger()
	call Ov(en)
	call TriggerAddCondition(en,Condition(function YG))
	call TriggerAddAction(en,function ZG)

	set fn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(fn,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(fn,Condition(function e6))
	call TriggerAddAction(fn,function f6)
	set gn=CreateTrigger()
	call Ov(gn)
	call TriggerAddCondition(gn,Condition(function h6))
	call TriggerAddAction(gn,function i6)
	set hn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hn,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(hn,Condition(function k6))
	call TriggerAddAction(hn,function MM6)
	set in=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(in,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(in,Condition(function O6))
	call TriggerAddAction(in,function R6)
	set jn=CreateTrigger()
	call DisableTrigger(jn)
	call TriggerRegisterTimerEventPeriodic(jn,.3)
	call TriggerAddAction(jn,function V6)
	//辟邪剑法之流星赶月
	set kn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(kn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(kn,Condition(function X6))
	call TriggerAddAction(kn,function kH)
	set mn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(mn,Condition(function nH))
	call TriggerAddAction(mn,function oH)
	set nn=CreateTrigger()
	call Ov(nn)
	call TriggerAddCondition(nn,Condition(function qH))
	call TriggerAddAction(nn,function rH)
	set on=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(on,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(on,Condition(function tH))
	call TriggerAddAction(on,function xH)
	set pn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(pn,Condition(function zH))
	call TriggerAddAction(pn,function AH)
	set qn=CreateTrigger()
	call Ov(qn)
	call TriggerAddCondition(qn,Condition(function BH))
	call TriggerAddAction(qn,function bH)
	set sn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(sn,Condition(function cH))
	call TriggerAddAction(sn,function DH)
	set tn=CreateTrigger()
	call Ov(tn)
	call TriggerAddCondition(tn,Condition(function FH))
	call TriggerAddAction(tn,function GH)
	set un=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(un,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(un,Condition(function IH))
	call TriggerAddAction(un,function MH)
	set vn=CreateTrigger()
	call Ov(vn)
	call TriggerAddCondition(vn,Condition(function OH))
	call TriggerAddAction(vn,function PH)
	set wn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(wn,Condition(function RH))
	call TriggerAddAction(wn,function TH)
	set xn=CreateTrigger()
	call Ov(xn)
	call TriggerAddCondition(xn,Condition(function VH))
	call TriggerAddAction(xn,function WH)
	set yn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(yn,Condition(function YH))
	call TriggerAddAction(yn,function ZH)
	set zn=CreateTrigger()
	call Ov(zn)
	call TriggerAddCondition(zn,Condition(function eI))
	call TriggerAddAction(zn,function fI)
	set An=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(An,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(An,Condition(function hI))
	call TriggerAddAction(An,function iI)
	set an=CreateTrigger()
	call Ov(an)
	call TriggerAddCondition(an,Condition(function kI))
	call TriggerAddAction(an,function mI)
	set Bn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bn,Condition(function oI))
	call TriggerAddAction(Bn,function sI)
	set Bn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bn,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Bn,Condition(function isJiuYangCanJuanAct))
	call TriggerAddAction(Bn,function jiuYangCanJuanAct)
	set bn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(bn,Condition(function uI))
	call TriggerAddAction(bn,function vI)
	set Cn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cn,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Cn,Condition(function xI))
	call TriggerAddAction(Cn,function AI)
	set cn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(cn,Condition(function BI))
	call TriggerAddAction(cn,function bI)
	set Dn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Dn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Dn,Condition(function cI))
	call TriggerAddAction(Dn,function DI)
	set En=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(En,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(En,Condition(function FI))
	call TriggerAddAction(En,function GI)
	set Fn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Fn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Fn,Condition(function II))
	call TriggerAddAction(Fn,function lI)
	set In=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(In,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(In,Condition(function QI))
	call TriggerAddAction(In,function RI)
	set Jn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Jn,Condition(function TI))
	call TriggerAddAction(Jn,function UI)
	set Kn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Kn,Condition(function WI))
	call TriggerAddAction(Kn,function XI)
	set Ln=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ln,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ln,Condition(function ZI))
	call TriggerAddAction(Ln,function dl)
	set Mn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Mn,Condition(function fl))
	call TriggerAddAction(Mn,function gl)
	set Nn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Nn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Nn,Condition(function il))
	call TriggerAddAction(Nn,function jl)
	set Tn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Tn,Condition(function al))
	call TriggerAddAction(Tn,function Bl)
	set Un=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Un,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Un,Condition(function cl))
	call TriggerAddAction(Un,function KillTangWenLiang)
	set Vn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Vn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Vn,Condition(function Fl))
	call TriggerAddAction(Vn,function Gl)
	set Wn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wn,Condition(function Il))
	call TriggerAddAction(Wn,function ll)
	set Xn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Xn,Condition(function Kl))
	call TriggerAddAction(Xn,function Ll)
	set Yn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Yn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Yn,Condition(function Nl))
	call TriggerAddAction(Yn,function Ol)
	set Zn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Zn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Zn,Condition(function Ql))
	call TriggerAddAction(Zn,function Rl)
	set do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(do,Condition(function Tl))
	call TriggerAddAction(do,function Ul)
	set eo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(eo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(eo,Condition(function Wl))
	call TriggerAddAction(eo,function Xl)
	set fo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(fo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(fo,Condition(function Zl))
	call TriggerAddAction(fo,function dd1)
	set go=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(go,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(go,Condition(function f1))
	call TriggerAddAction(go,function g1)
	set ho=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ho,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ho,Condition(function i1))
	call TriggerAddAction(ho,function j1)
	set io=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(io,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(io,Condition(function m1))
	call TriggerAddAction(io,function nn1)
	set jo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(jo,Condition(function p1))
	call TriggerAddAction(jo,function q1)
	set ko=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ko,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ko,Condition(function t1))
	call TriggerAddAction(ko,function u1)
	set mo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(mo,Condition(function ww1))
	call TriggerAddAction(mo,function z1)
	set no=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(no,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(no,Condition(function a1))
	call TriggerAddAction(no,function B1)
	set oo=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(oo,500.)
	call TriggerAddAction(oo,function C1)
	set po=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(po,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(po,Condition(function D1))
	call TriggerAddAction(po,function E1)
	set qo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(qo,Condition(function G1))
	call TriggerAddAction(qo,function H1)
	set ro=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ro,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ro,Condition(function l1))
	call TriggerAddAction(ro,function J1)
	set so=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(so,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(so,Condition(function L1))
	call TriggerAddAction(so,function MM1)
	set to=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(to,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(to,Condition(function O1))
	call TriggerAddAction(to,function P1)
	set uo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(uo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(uo,Condition(function R1))
	call TriggerAddAction(uo,function S1)
	set vo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(vo,Condition(function U1))
	call TriggerAddAction(vo,function V1)
	set wo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(wo,Condition(function X1))
	call TriggerAddAction(wo,function Y1)
	set xo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(xo,Condition(function dJ))
	call TriggerAddAction(xo,function eJ)
	set yo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(yo,Condition(function gJ))
	call TriggerAddAction(yo,function hJ)
	set zo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(zo,Condition(function jJ))
	call TriggerAddAction(zo,function kJ)
	set Ao=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ao,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ao,Condition(function nJ))
	call TriggerAddAction(Ao,function oJ)
	set ao=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ao,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ao,Condition(function qJ))
	call TriggerAddAction(ao,function rJ)
	set Bo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Bo,Condition(function tJ))
	call TriggerAddAction(Bo,function uJ)
	set bo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(bo,Condition(function wJ))
	call TriggerAddAction(bo,function xJ)
	set Co=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Co,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Co,Condition(function zJ))
	call TriggerAddAction(Co,function AJ)
	set co=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(co,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(co,Condition(function BJ))
	call TriggerAddAction(co,function bJ)
	set Do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Do,Condition(function cJ))
	call TriggerAddAction(Do,function DJ)
	set Do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Do,Condition(function IsAiRen))
	call TriggerAddAction(Do,function KillAiRen)
	set Eo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Eo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Eo,Condition(function FJ))
	call TriggerAddAction(Eo,function GJ)
	set Fo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Fo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Fo,Condition(function IJ))
	call TriggerAddAction(Fo,function lJ)
	set Go=CreateTrigger()
	call TriggerAddRect(Go,Pe)
	call TriggerAddCondition(Go,Condition(function KJ))
	call TriggerAddAction(Go,function LJ)
	set Ho=CreateTrigger()
	call TriggerAddRect(Ho,Re)
	call TriggerAddRect(Ho,Ie)
	call TriggerAddRect(Ho,le)
	call TriggerAddCondition(Ho,Condition(function NJ))
	call TriggerAddAction(Ho,function OJ)
	set Io=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Io,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Io,Condition(function QJ))
	call TriggerAddAction(Io,function RJ)
	set lo=CreateTrigger()
	call TriggerAddRect(lo,Bg)
	call TriggerAddCondition(lo,Condition(function TJ))
	call TriggerAddAction(lo,function UJ)
	set Jo=CreateTrigger()
	call TriggerAddRect(Jo,Xe)
	call TriggerAddCondition(Jo,Condition(function WJ))
	call TriggerAddAction(Jo,function XJ)
	set Ko=CreateTrigger()
	call TriggerAddRect(Ko,Pe)
	call TriggerAddCondition(Ko,Condition(function ZJ))
	call TriggerAddAction(Ko,function dK)
	set Lo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Lo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Lo,Condition(function fK))
	call TriggerAddAction(Lo,function gK)
	set Mo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Mo,Condition(function iK))
	call TriggerAddAction(Mo,function jK)
	set No=CreateTrigger()
	call TriggerAddRect(No,Te)
	call TriggerAddCondition(No,Condition(function mK))
	call TriggerAddAction(No,function nK)
	set Oo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Oo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Oo,Condition(function pK))
	call TriggerAddAction(Oo,function qK)
	set Po=CreateTrigger()
	call TriggerAddRect(Po,Ve)
	call TriggerAddCondition(Po,Condition(function sK))
	call TriggerAddAction(Po,function tK)
	set Qo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Qo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Qo,Condition(function vK))
	call TriggerAddAction(Qo,function wK)
	set Ro=CreateTrigger()
	call TriggerAddRect(Ro,Xe)
	call TriggerAddCondition(Ro,Condition(function yK))
	call TriggerAddAction(Ro,function zK)
	set So=CreateTrigger()
	call TriggerAddRect(So,Ye)
	call TriggerAddCondition(So,Condition(function aK))
	call TriggerAddAction(So,function BK)
	set To=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(To,Player(6),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(To,Condition(function CK))
	call TriggerAddAction(To,function cK)
	set Uo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Uo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Uo,Condition(function EK))
	call TriggerAddAction(Uo,function FK)
	set Vo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Vo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Vo,Condition(function HK))
	call TriggerAddAction(Vo,function IK)
	set Wo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wo,Condition(function JK))
	call TriggerAddAction(Wo,function KK)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function JiuYin_Condition))
	call TriggerAddAction(t,function JiuYin_Action)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function TaoHua_Condition))
	call TriggerAddAction(t,function TaoHua_Action)
	set Yo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Yo,EVENT_PLAYER_HERO_LEVEL)
	call TriggerAddCondition(Yo,Condition(function PK))
	call TriggerAddAction(Yo,function QK)
	set Zo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Zo,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Zo,Condition(function SK))
	call TriggerAddAction(Zo,function TK)
	set dp=CreateTrigger()
	call TriggerRegisterTimerEventSingle(dp,1.)
	call TriggerAddAction(dp,function WK)
	set ep=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ep,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ep,Condition(function YK))
	call TriggerAddAction(ep,function ZK)
	set fp=CreateTrigger()
	call TriggerAddRect(fp,lg)
	call TriggerAddCondition(fp,Condition(function eL))
	call TriggerAddAction(fp,function fL)
	set gp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gp,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(gp,Condition(function hL))
	call TriggerAddAction(gp,function iL)
	set hp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(hp,Condition(function kL))
	call TriggerAddAction(hp,function mL)
	set jp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jp,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(jp,Condition(function oL))
	call TriggerAddAction(jp,function pL)
	set kp=CreateTrigger()
	call TriggerAddRect(kp,gh)
	call TriggerAddCondition(kp,Condition(function rL))
	call TriggerAddAction(kp,function sL)
	set mp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(mp,Condition(function uL))
	call TriggerAddAction(mp,function vL)
	set np=CreateTrigger()
	call TriggerAddRect(np,kh)
	call TriggerAddCondition(np,Condition(function xL))
	call TriggerAddAction(np,function yL)
	set op=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(op,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(op,Condition(function AL))
	call TriggerAddAction(op,function aL)
	set pp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pp,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(pp,Condition(function bL))
	call TriggerAddAction(pp,function CL)
	set qp=CreateTrigger()
	call TriggerAddRect(qp,Ye)
	call TriggerAddCondition(qp,Condition(function DL))
	call TriggerAddAction(qp,function EL)
	set sp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(sp,Condition(function IL))
	call TriggerAddAction(sp,function lL)
	set tp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(tp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(tp,Condition(function KL))
	call TriggerAddAction(tp,function LL)
	set vp=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(4),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(5),true)

	call TriggerAddCondition(vp,Condition(function NL))
	call TriggerAddAction(vp,function OL)
	set wp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(0),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(1),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(2),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(3),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(4),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(5),0,3)

	call TriggerAddCondition(wp,Condition(function QL))
	call TriggerAddAction(wp,function RL)
	set xp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(0),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(1),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(2),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(3),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(4),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(5),0,0)

	call TriggerAddCondition(xp,Condition(function TL))
	call TriggerAddAction(xp,function UL)
	set yp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(0),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(1),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(2),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(3),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(4),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(5),0,1)

	call TriggerAddCondition(yp,Condition(function WL))
	call TriggerAddAction(yp,function XL)
	set zp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(0),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(1),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(2),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(3),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(4),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(5),0,2)

	call TriggerAddCondition(zp,Condition(function ZL))
	call TriggerAddAction(zp,function dM)
	set ap=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(ap,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ap,Condition(function iM))
	call TriggerAddAction(ap,function jM)
	set Bp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Bp,Condition(function mM))
	call TriggerAddAction(Bp,function nM)
	set bp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(bp,Condition(function pM))
	call TriggerAddAction(bp,function qM)
	set Cp=CreateTrigger()
	call TriggerAddRect(Cp,Ff)
	call TriggerAddCondition(Cp,Condition(function sM))
	call TriggerAddAction(Cp,function tM)
	set cp=CreateTrigger()
	call TriggerAddRect(cp,Hf)
	call TriggerAddCondition(cp,Condition(function vM))
	call TriggerAddAction(cp,function wM)
	set Dp=CreateTrigger()
	call TriggerAddRect(Dp,lf)
	call TriggerAddCondition(Dp,Condition(function yM))
	call TriggerAddAction(Dp,function zM)
	set Ep=CreateTrigger()
	call TriggerAddRect(Ep,Kf)
	call TriggerAddCondition(Ep,Condition(function aM))
	call TriggerAddAction(Ep,function BM)
	set Fp=CreateTrigger()
	call TriggerAddRect(Fp,Of)
	call TriggerAddCondition(Fp,Condition(function CM))
	call TriggerAddAction(Fp,function cM)
	set Gp=CreateTrigger()
	call TriggerAddRect(Gp,Qf)
	call TriggerAddCondition(Gp,Condition(function EM))
	call TriggerAddAction(Gp,function FM)
	set Hp=CreateTrigger()
	call TriggerAddRect(Hp,Tf)
	call TriggerAddCondition(Hp,Condition(function HM))
	call TriggerAddAction(Hp,function IM)
	set Ip=CreateTrigger()
	call TriggerAddRect(Ip,Vf)
	call TriggerAddCondition(Ip,Condition(function JM))
	call TriggerAddAction(Ip,function KM)
	set Jp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Jp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Jp,Condition(function PM))
	call TriggerAddAction(Jp,function QM)
	set Kp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Kp,Condition(function SM))
	call TriggerAddAction(Kp,function TM)
	set Lp=CreateTrigger()
	call TriggerAddRect(Lp,eg)
	call TriggerAddCondition(Lp,Condition(function VM))
	call TriggerAddAction(Lp,function WM)
	set Mp=CreateTrigger()
	call TriggerAddRect(Mp,gg)
	call TriggerAddCondition(Mp,Condition(function YM))
	call TriggerAddAction(Mp,function ZM)
	set Np=CreateTrigger()
	call TriggerAddRect(Np,ig)
	call TriggerAddCondition(Np,Condition(function eN))
	call TriggerAddAction(Np,function fN)
	set Op=CreateTrigger()
	call TriggerAddRect(Op,jg)
	call TriggerAddCondition(Op,Condition(function hN))
	call TriggerAddAction(Op,function iN)
	set Pp=CreateTrigger()
	call TriggerAddRect(Pp,ng)
	call TriggerAddCondition(Pp,Condition(function kN))
	call TriggerAddAction(Pp,function mN)
	set Qp=CreateTrigger()
	call TriggerAddRect(Qp,pg)
	call TriggerAddCondition(Qp,Condition(function oN))
	call TriggerAddAction(Qp,function pN)
	set Rp=CreateTrigger()
	call TriggerAddRect(Rp,qg)
	call TriggerAddCondition(Rp,Condition(function rN))
	call TriggerAddAction(Rp,function sN)
	set Sp=CreateTrigger()
	call TriggerAddRect(Sp,sg)
	call TriggerAddCondition(Sp,Condition(function uN))
	call TriggerAddAction(Sp,function vN)
	set Tp=CreateTrigger()
	call TriggerAddRect(Tp,ug)
	call TriggerAddCondition(Tp,Condition(function xN))
	call TriggerAddAction(Tp,function yN)
	set Up=CreateTrigger()
	call TriggerAddRect(Up,wg)
	call TriggerAddCondition(Up,Condition(function AN))
	call TriggerAddAction(Up,function aN)
	set Vp=CreateTrigger()
	call TriggerAddRect(Vp,xg)
	call TriggerAddCondition(Vp,Condition(function bN))
	call TriggerAddAction(Vp,function CN)
	set Wp=CreateTrigger()
	call TriggerAddRect(Wp,yg)
	call TriggerAddCondition(Wp,Condition(function DN))
	call TriggerAddAction(Wp,function EN)
	set Xp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Xp,Condition(function GN))
	call TriggerAddAction(Xp,function IN)
	set Zp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Zp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Zp,Condition(function MN))
	call TriggerAddAction(Zp,function NN)
	set dq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(dq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(dq,Condition(function PN))
	call TriggerAddAction(dq,function QN)
	set eq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(eq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(eq,Condition(function SN))
	call TriggerAddAction(eq,function TN)
	set fq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(fq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(fq,Condition(function VN))
	call TriggerAddAction(fq,function WN)
	set gq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gq,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(gq,Condition(function YN))
	call TriggerAddAction(gq,function ZN)
	set hq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(hq,Condition(function eO))
	call TriggerAddAction(hq,function fO)
	set jq=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(jq,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(jq,Condition(function kO))
	call TriggerAddAction(jq,function mO)
	set kq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(kq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(kq,Condition(function oO))
	call TriggerAddAction(kq,function pO)
	set mq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(mq,Condition(function rO))
	call TriggerAddAction(mq,function sO)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsTaoHua))
	call TriggerAddAction(t,function TaoHuaDao)
	set t=CreateTrigger()
	call TriggerAddRect(t,botong)
	call TriggerAddCondition(t,Condition(function IsQiuHunWan))
	call TriggerAddAction(t,function QiuHunWanCheng)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsYiZhan))
	call TriggerAddAction(t,function YiZhanChuanSong)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsQiuHun))
	call TriggerAddAction(t,function QiuHun_Action)
	set t=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t,2400.)
	call TriggerAddAction(t,function TaoHuaDaoKaiFang)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsKongMingBeiDa))
	call TriggerAddAction(t,function KongMingBeiDa)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsKongMing))
	call TriggerAddAction(t,function KongMingQuan)
	//set t=CreateTrigger()
	//call TriggerRegisterDialogEvent(t,chuansong)
	//call TriggerAddAction(t,function YiZhanChuanZou)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsBiHai))
	call TriggerAddAction(t,function BiHaiChaoSheng)
	set t=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(t,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddAction(t,function TaoHuaGun)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function OuYangFeng_Condition))
	call TriggerAddAction(t,function OuYangFeng_Action)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function HongQiGong_Condition))
	call TriggerAddAction(t,function HongQiGong_Action)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function ChouXie_Condition))
	call TriggerAddAction(t,function ChouXie_Action)
	set oq=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(oq,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(oq,Condition(function xO))
	call TriggerAddAction(oq,function yO)
	set pq=CreateTrigger()
	call TriggerAddRect(pq,gh)
	call TriggerAddCondition(pq,Condition(function AO))
	call TriggerAddAction(pq,function aO)
	set qq=CreateTrigger()
	call TriggerAddRect(qq,fh)
	call TriggerAddCondition(qq,Condition(function bO))
	call TriggerAddAction(qq,function CO)
	set rq=CreateTrigger()
	call TriggerAddRect(rq,jh)
	call TriggerAddCondition(rq,Condition(function DO))
	call TriggerAddAction(rq,function EO)
	set sq=CreateTrigger()
	call TriggerAddRect(sq,udg_liuqiu)
	call TriggerAddCondition(sq,Condition(function GO))
	call TriggerAddAction(sq,function HO)
	set tq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(tq,Condition(function lO))
	call TriggerAddAction(tq,function JO)
	set uq=CreateTrigger()
	call TriggerRegisterTimerEventSingle(uq,.2)
	call TriggerAddAction(uq,function LO)
	set vq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(vq,Condition(function NO))
	call TriggerAddAction(vq,function OO)
	set xq=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(xq,400.)
	call TriggerAddAction(xq,function TO)
	set yq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(yq,Condition(function VO))
	call TriggerAddAction(yq,function WO)
	set zq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(zq,Condition(function YO))
	call TriggerAddAction(zq,function ZO)
	set Aq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Aq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Aq,Condition(function e0))
	call TriggerAddAction(Aq,function f0)
	set aq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(aq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(aq,Condition(function h0))
	call TriggerAddAction(aq,function i0)
	set Bq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Bq,Condition(function k0))
	call TriggerAddAction(Bq,function m0)
	set bq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(bq,Condition(function o0))
	call TriggerAddAction(bq,function p0)
	set Cq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Cq,Condition(function r0))
	call TriggerAddAction(Cq,function s0)
	set cq=CreateTrigger()
	call TriggerRegisterDialogEvent(cq,v8[1])
	call TriggerRegisterDialogEvent(cq,v8[2])
	call TriggerRegisterDialogEvent(cq,v8[3])
	call TriggerRegisterDialogEvent(cq,v8[4])
	call TriggerRegisterDialogEvent(cq,v8[5])
	call TriggerAddCondition(cq,Condition(function u0))
	call TriggerAddAction(cq,function v0)
	set Dq=CreateTrigger()
	call TriggerRegisterDialogEvent(Dq,D8[1])
	call TriggerRegisterDialogEvent(Dq,D8[2])
	call TriggerRegisterDialogEvent(Dq,D8[3])
	call TriggerRegisterDialogEvent(Dq,D8[4])
	call TriggerRegisterDialogEvent(Dq,D8[5])
	call TriggerAddCondition(Dq,Condition(function x0))
	call TriggerAddAction(Dq,function y0)
	set Eq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Eq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Eq,Condition(function A0))
	call TriggerAddAction(Eq,function a0)
	set Fq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Fq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Fq,Condition(function b0))
	call TriggerAddAction(Fq,function C0)
	set Gq=CreateTrigger()
	call TriggerRegisterDialogEvent(Gq,v8[1])
	call TriggerRegisterDialogEvent(Gq,v8[2])
	call TriggerRegisterDialogEvent(Gq,v8[3])
	call TriggerRegisterDialogEvent(Gq,v8[4])
	call TriggerRegisterDialogEvent(Gq,v8[5])
	call TriggerAddCondition(Gq,Condition(function D0))
	call TriggerAddAction(Gq,function E0)
	set Hq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Hq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Hq,Condition(function G0))
	call TriggerAddAction(Hq,function H0)
	set Iq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Iq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Iq,Condition(function l0))
	call TriggerAddAction(Iq,function J0)
	set lq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(lq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(lq,Condition(function L0))
	call TriggerAddAction(lq,function M0)
	set Jq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Jq,Condition(function O0))
	call TriggerAddAction(Jq,function P0)
	set Kq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Kq,Condition(function R0))
	call TriggerAddAction(Kq,function S0)
	set Lq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Lq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Lq,Condition(function U0))
	call TriggerAddAction(Lq,function V0)
	set Mq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Mq,Condition(function X0))
	call TriggerAddAction(Mq,function Y0)
	set Nq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Nq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Nq,Condition(function dP))
	call TriggerAddAction(Nq,function eP)
	set Oq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Oq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Oq,Condition(function gP))
	call TriggerAddAction(Oq,function hP)
	set Pq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Pq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Pq,Condition(function jP))
	call TriggerAddAction(Pq,function kP)
	set Qq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Qq,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Qq,Condition(function nP))
	call TriggerAddAction(Qq,function oP)
	set Rq=CreateTrigger()
	call TriggerRegisterDialogEvent(Rq,je[1])
	call TriggerRegisterDialogEvent(Rq,je[2])
	call TriggerRegisterDialogEvent(Rq,je[3])
	call TriggerRegisterDialogEvent(Rq,je[4])
	call TriggerRegisterDialogEvent(Rq,je[5])
	call TriggerAddAction(Rq,function qP)
	set Sq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Sq,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Sq,Condition(function sP))
	call TriggerAddAction(Sq,function vP)
	set Tq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tq,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Tq,Condition(function xP))
	call TriggerAddAction(Tq,function AP)
	set Uq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Uq,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Uq,Condition(function BP))
	call TriggerAddAction(Uq,function bP)
	set Wq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Wq,Condition(function EP))
	call TriggerAddAction(Wq,function FP)
	set kr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(kr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(kr,Condition(function oQ))
	call TriggerAddAction(kr,function pQ)
	set mr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(mr,Condition(function rQ))
	call TriggerAddAction(mr,function sQ)
	set nr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(nr,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(nr,Condition(function uQ))
	call TriggerAddAction(nr,function vQ)
	set pr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pr,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(pr,Condition(function xQ))
	call TriggerAddAction(pr,function yQ)
	set qr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(qr,Condition(function AQ))
	call TriggerAddAction(qr,function aQ)
	set tr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(tr,Condition(function GQ))
	call TriggerAddAction(tr,function HQ)
	set ur=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ur,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ur,Condition(function lQ))
	call TriggerAddAction(ur,function JQ)
	set vr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vr,Condition(function LQ))
	call TriggerAddAction(vr,function MQ)
	set wr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(wr,Condition(function OQ))
	call TriggerAddAction(wr,function PQ)
	set xr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(xr,Condition(function RQ))
	call TriggerAddAction(xr,function SQ)
	set yr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(yr,Condition(function UQ))
	call TriggerAddAction(yr,function VQ)
	set zr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(zr,Condition(function XQ))
	call TriggerAddAction(zr,function YQ)
	set Ar=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Ar,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ar,Condition(function dR))
	call TriggerAddAction(Ar,function eR)
	set ar=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ar,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ar,Condition(function gR))
	call TriggerAddAction(ar,function jR)
	set Br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Br,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Br,Condition(function mR))
	call TriggerAddAction(Br,function nR)
	set br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(br,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(br,Condition(function pR))
	call TriggerAddAction(br,function qR)
	set br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(br,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(br,Condition(function IsMuRongNeiGong))
	call TriggerAddAction(br,function MuRongNeiGong)
	set Cr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Cr,Condition(function sR))
	call TriggerAddAction(Cr,function tR)
	set cr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(cr,Condition(function vR))
	call TriggerAddAction(cr,function wR)
	set Dr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Dr,f9[1])
	call TriggerAddAction(Dr,function yR)
	set Er=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Er,f9[2])
	call TriggerAddAction(Er,function AR)
	set Fr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Fr,f9[3])
	call TriggerAddAction(Fr,function BR)
	set Gr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Gr,f9[4])
	call TriggerAddAction(Gr,function CR)
	set Hr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Hr,f9[5])
	call TriggerAddAction(Hr,function DR)
	set Ir=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ir,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Ir,Condition(function FR))
	call TriggerAddAction(Ir,function GR)
	set lr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(lr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(lr,Condition(function IR))
	call TriggerAddAction(lr,function lR)
	set Jr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Jr,Condition(function KR))
	call TriggerAddAction(Jr,function LR)
	set Kr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Kr,Condition(function NR))
	call TriggerAddAction(Kr,function OR)
	set Lr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Lr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Lr,Condition(function QR))
	call TriggerAddAction(Lr,function RR)
	set Mr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Mr,Condition(function TR))
	call TriggerAddAction(Mr,function UR)
	set Nr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Nr,Z9[1])
	call TriggerAddAction(Nr,function WR)
	set Pr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Pr,Z9[2])
	call TriggerAddAction(Pr,function YR)
	set Qr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Qr,Z9[3])
	call TriggerAddAction(Qr,function dS)
	set Rr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Rr,Z9[4])
	call TriggerAddAction(Rr,function fS)
	set Sr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Sr,Z9[5])
	call TriggerAddAction(Sr,function hS)
	set Tr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Tr,Condition(function jS))
	call TriggerAddAction(Tr,function kS)
	set Ur=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ur,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ur,Condition(function nS))
	call TriggerAddAction(Ur,function oS)
	set Vr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Vr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Vr,Condition(function qS))
	call TriggerAddAction(Vr,function rS)
	set Wr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wr,Condition(function tS))
	call TriggerAddAction(Wr,function uS)
	set Xr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Xr,Condition(function wS))
	call TriggerAddAction(Xr,function xS)
	set Yr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Yr,fd[1])
	call TriggerAddCondition(Yr,Condition(function zS))
	call TriggerAddAction(Yr,function AS)
	set Zr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Zr,fd[2])
	call TriggerAddCondition(Zr,Condition(function BS))
	call TriggerAddAction(Zr,function bS)
	set ds=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ds,fd[3])
	call TriggerAddCondition(ds,Condition(function cS))
	call TriggerAddAction(ds,function DS)
	set es=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(es,fd[4])
	call TriggerAddCondition(es,Condition(function FS))
	call TriggerAddAction(es,function GS)
	set fs=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(fs,fd[5])
	call TriggerAddCondition(fs,Condition(function IS))
	call TriggerAddAction(fs,function lS)
	set gs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(gs,Condition(function KS))
	call TriggerAddAction(gs,function LS)
	set hs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hs,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(hs,Condition(function NS))
	call TriggerAddAction(hs,function OS)
	set is=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(is,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(is,Condition(function QS))
	call TriggerAddAction(is,function RS)
	set js=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(js,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(js,Condition(function TS))
	call TriggerAddAction(js,function US)
	set ks=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ks,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ks,Condition(function WS))
	call TriggerAddAction(ks,function XS)
	set ms=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ms,fd[1])
	call TriggerAddCondition(ms,Condition(function ZS))
	call TriggerAddAction(ms,function d5)
	set ns=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ns,fd[2])
	call TriggerAddCondition(ns,Condition(function f5))
	call TriggerAddAction(ns,function g5)
	set os=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(os,fd[3])
	call TriggerAddCondition(os,Condition(function i5))
	call TriggerAddAction(os,function j5)
	set ps=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ps,fd[4])
	call TriggerAddCondition(ps,Condition(function m5))
	call TriggerAddAction(ps,function nn5)
	set qs=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(qs,fd[5])
	call TriggerAddCondition(qs,Condition(function p5))
	call TriggerAddAction(qs,function q5)
	set rs=CreateTrigger()
	call TriggerRegisterTimerEventSingle(rs,.5)
	call TriggerAddAction(rs,function s5)
	set ss=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(ss,200.)
	call TriggerAddAction(ss,function u5)
	set ts=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ts,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ts,Condition(function w5))
	call TriggerAddAction(ts,function x5)
	set us=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(us,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(us,Condition(function z5))
	call TriggerAddAction(us,function A5)
	set vs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vs,Condition(function B5))
	call TriggerAddAction(vs,function b5)
	set vs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vs,Condition(function CollectGuDong_Conditions))
	call TriggerAddAction(vs,function CollectGuDong_Actions)
	set ws=CreateTrigger()
	call TriggerAddRect(ws,Sg)
	call TriggerAddCondition(ws,Condition(function c5))
	call TriggerAddAction(ws,function D5)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function HeCheng_Conditions))
	call TriggerAddAction(t, function HeCheng_Actions)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function IsWuPin))
	call TriggerAddAction(t, function LookForWuPin)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function IsFangQiWuPin))
	call TriggerAddAction(t, function FangQiWuPin)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function IsWanChengWuPin))
	call TriggerAddAction(t, function WanChengWuPin)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function IsYangShou))
	call TriggerAddAction(t, function KillYangShou)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function IsFangQiYangShou))
	call TriggerAddAction(t, function FangQiYangShou)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	call TriggerAddCondition(t, Condition(function IsWanChengYangShou))
	call TriggerAddAction(t, function WanChengYangShou)
	set t =CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsVIPItem))
	call TriggerAddAction(t,function ChooseVIP)
	set xs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(xs,Condition(function F5))
	call TriggerAddAction(xs,function G5)
	set ys=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ys,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ys,Condition(function I5))
	call TriggerAddAction(ys,function l5)
	set zs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(zs,Condition(function K5))
	call TriggerAddAction(zs,function L5)
	set As=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(As,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(As,Condition(function N5))
	call TriggerAddAction(As,function O5)
	set as=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(as,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(as,Condition(function Q5))
	call TriggerAddAction(as,function R5)
	set Bs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Bs,Condition(function LingWuJY_Conditions))
	call TriggerAddAction(Bs,function LingWuJY)
	set Cs=CreateTrigger()
	call TriggerRegisterDialogEvent(Cs,v8[1])
	call TriggerRegisterDialogEvent(Cs,v8[2])
	call TriggerRegisterDialogEvent(Cs,v8[3])
	call TriggerRegisterDialogEvent(Cs,v8[4])
	call TriggerRegisterDialogEvent(Cs,v8[5])
	call TriggerAddCondition(Cs,Condition(function ZhuanHuaJY_Conditions))
	call TriggerAddAction(Cs,function ZhuanHuaJY)
	set cs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(cs,Condition(function MaiHuangZhi_Conditions))
	call TriggerAddAction(cs,function MaiHuangZhi)
	set Ds=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ds,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Ds,Condition(function IsHuangZhi))
	call TriggerAddAction(Ds,function ShaoHuangZhi)
	set Es=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(Es,Player(0),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(1),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(2),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(3),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(4),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(5),"~",true)
	call TriggerAddCondition(Es,Condition(function kT))
	call TriggerAddAction(Es,function mT)
	set Fs=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Fs,3.)
	call TriggerAddAction(Fs,function oT)
	set t=CreateTrigger()
	call TriggerRegisterTimerEventSingle(t,2100.)
	call TriggerAddAction(t,function LiaoGuoJinGong)
	set t=CreateTrigger()
	call TriggerRegisterTimerEventSingle(t,3000.)
	call TriggerAddAction(t,function LingJiuGongJinGong)
	//特殊事件：潇湘子和尹克西到藏经阁盗取九阳神功经书
	set t = CreateTrigger()
	call TriggerRegisterTimerEventSingle(t, GetRandomInt(60, 1800))
	//call TriggerRegisterTimerEventSingle(t, 10)
	call TriggerAddAction(t, function stealJiuYang)
	//击杀潇湘子和尹克西，获得奇武，事件结束
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillStealer))
	call TriggerAddAction(t,function killStealer)
	//击杀觉远大师和张君宝，获得奇武，事件结束
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillSeeker))
	call TriggerAddAction(t,function killSeeker)
	//击杀白猿，获得伴侣白猿
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillBaiYuan))
	call TriggerAddAction(t,function killBaiYuan)
	//击杀曾阿牛，获得九阳残卷
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillANiu))
	call TriggerAddAction(t,function killANiu)
	set Gs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Gs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Gs,Condition(function qT))
	call TriggerAddAction(Gs,function rT)
	set Ks=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ks,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ks,Condition(function cT))
	call TriggerAddAction(Ks,function DT)
	set Ht=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ht,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ht,Condition(function FT))
	call TriggerAddAction(Ht,function IT)
	set It=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(It,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(It,Condition(function JT))
	call TriggerAddAction(It,function KT)
	set Jt=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jt,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Jt,Condition(function MT))
	call TriggerAddAction(Jt,function NT)
	call initActivationCode()
	call KeyInputSystem()
	call SmeltingWeaponSystem()//决战江湖1.4之大辽金匠
	call MonsterCome() //决战江湖1.52之圣兽来了
	call CreateDestructables()
	call Cuns()
	call CunVIPNum()
	call CunWuGongS()
	call najitest()
endfunction
