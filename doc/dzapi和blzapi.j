native�����б�

//hardware

//��ȡ�������Ϸ�ڵ�����X
native DzGetMouseTerrainX takes nothing returns real

//��ȡ�������Ϸ�ڵ�����Y
native DzGetMouseTerrainY takes nothing returns real

//��ȡ�������Ϸ�ڵ�����Z
native DzGetMouseTerrainZ takes nothing returns real

//����Ƿ�����Ϸ��
native DzIsMouseOverUI takes nothing returns boolean

//��ȡ�����Ļ����X
native DzGetMouseX takes nothing returns integer

//��ȡ�����Ļ����Y
native DzGetMouseY takes nothing returns integer

//��ȡ�����Ϸ��������X
native DzGetMouseXRelative takes nothing returns integer

//��ȡ�����Ϸ��������Y
native DzGetMouseYRelative takes nothing returns integer

//�������λ��
native DzSetMousePos takes integer x, integer y returns nothing

//ע�������������syncΪtrueʱ������TriggerExecute��Ϊfalseʱ��ֱ������action�����������첽�����ߣ�action�ﲻҪ��ͬ��������
native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing

//ע����̵������
native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing

//ע�������ִ���
native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing

//ע������ƶ�����
native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing

//��ȡ�������İ�����
native DzGetTriggerKey takes nothing returns integer

//��ȡ����delta
native DzGetWheelDelta takes nothing returns integer

//�жϰ����Ƿ���
native DzIsKeyDown takes integer iKey returns boolean

//��ȡ����key�����
native DzGetTriggerKeyPlayer takes nothing returns player

//��ȡwar3���ڿ��
native DzGetWindowWidth takes nothing returns integer

//��ȡwar3���ڸ߶�
native DzGetWindowHeight takes nothing returns integer

//��ȡwar3����X����
native DzGetWindowX takes nothing returns integer

//��ȡwar3����Y����
native DzGetWindowY takes nothing returns integer

//ע��war3���ڴ�С�仯�¼�
native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing

//�жϴ����Ƿ񼤻�
native DzIsWindowActive takes nothing returns boolean

//plus

//���ÿɴݻ���λ��
native DzDestructablePosition takes destructable d, real x, real y returns nothing

//���õ�λλ��-���ص���
native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing

//�첽ִ�к���
native DzExecuteFunc takes string funcName returns nothing

//ȡ���ָ���unit
native DzGetUnitUnderMouse takes nothing returns unit

//����unit����ͼ
native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing

//packet

//ע������ͬ��trigger
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing

//ͬ����Ϸ����
native DzSyncData takes string prefix, string data returns nothing

//��ȡͬ��������
native DzGetTriggerSyncData takes nothing returns string

//��ȡͬ�����ݵ����
native DzGetTriggerSyncPlayer takes nothing returns player

//gui

/////////////////////////////// ԭ��UI�޸�
//���ؽ���Ԫ��
native DzFrameHideInterface takes nothing returns nothing

//�޸���Ϸ���細��λ��
native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing

//ͷ��
native DzFrameGetPortrait takes nothing returns integer

//С��ͼ
native DzFrameGetMinimap takes nothing returns integer

//���ܰ�ť
native DzFrameGetCommandBarButton takes integer row, integer column returns integer

//Ӣ�۰�ť
native DzFrameGetHeroBarButton takes integer buttonId returns integer

//Ӣ��Ѫ��
native DzFrameGetHeroHPBar takes integer buttonId returns integer

//Ӣ������
native DzFrameGetHeroManaBar takes integer buttonId returns integer

//���߰�ť
native DzFrameGetItemBarButton takes integer buttonId returns integer

//С��ͼ��ť
native DzFrameGetMinimapButton takes integer buttonId returns integer

//���ϲ˵���ť
native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer

//�����ʾ
native DzFrameGetTooltip takes nothing returns integer

//������Ϣ
native DzFrameGetChatMessage takes nothing returns integer

//unit message
native DzFrameGetUnitMessage takes nothing returns integer

//top message
native DzFrameGetTopMessage takes nothing returns integer

//��ȡgame ui
native DzGetGameUI takes nothing returns integer

/////////////////////////////// �Զ���UI
//ȡrgbaɫֵ
native DzGetColor takes integer r, integer g, integer b, integer a returns integer

//���ý�����»ص�����ͬ����
native DzFrameSetUpdateCallback takes string func returns nothing

//��ʾ/����Frame
native DzFrameShow takes integer frame, boolean enable returns nothing

//����frame
native DzCreateFrame takes string frame, integer parent, integer id returns integer

//����SimpleFrame
native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer

//����frame
native DzDestroyFrame takes integer frame returns nothing

//����toc
native DzLoadToc takes string fileName returns nothing

//����frame���λ��
native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing

//����frame����λ��
native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing

//���frameê��
native DzFrameClearAllPoints takes integer frame returns nothing

//����frame����/����
native DzFrameSetEnable takes integer name, boolean enable returns nothing

//ע��UI�¼��ص�
native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing

//��ȡ����ui�����
native DzGetTriggerUIEventPlayer takes nothing returns player

//����frame
native DzFrameFindByName takes string name, integer id returns integer

//����SimpleFrame
native DzSimpleFrameFindByName takes string name, integer id returns integer

//����String
native DzSimpleFontStringFindByName takes string name, integer id returns integer

//����Texture
native DzSimpleTextureFindByName takes string name, integer id returns integer

//���frame
native DzClickFrame takes integer frame returns nothing

//�Զ�����Ļ����
native DzSetCustomFovFix takes real value returns nothing

//ʹ�ÿ���ģʽ
native DzEnableWideScreen takes boolean enable returns nothing

//�������֣�֧��EditBox, TextFrame, TextArea, SimpleFontString��GlueEditBoxWar3��SlashChatBox��TimerTextFrame��TextButtonFrame��GlueTextButton��
native DzFrameSetText takes integer frame, string text returns nothing

//��ȡ���֣�֧��EditBox, TextFrame, TextArea, SimpleFontString��
native DzFrameGetText takes integer frame returns string

//�����������ƣ�֧��EditBox��
native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing

//��ȡ�������ƣ�֧��EditBox��
native DzFrameGetTextSizeLimit takes integer frame returns integer

//����������ɫ��֧��TextFrame, EditBox��
native DzFrameSetTextColor takes integer frame, integer color returns nothing

//��ȡ�������λ�õ�ui�ؼ�ָ��
native DzGetMouseFocus takes nothing returns integer

//��������ê�㵽Ŀ��frame��
native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean

//���ý���
native DzFrameSetFocus takes integer frame, boolean enable returns boolean

//����ģ�ͣ�֧��Sprite��Model��StatusBar��
native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing

//��ȡ�ؼ��Ƿ�����
native DzFrameGetEnable takes integer frame returns boolean

//����͸���ȣ�0-255��
native DzFrameSetAlpha takes integer frame, integer alpha returns nothing

//��ȡ͸����
native DzFrameGetAlpha takes integer frame returns integer

//���ö���
native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing

//���ö������ȣ�autocastΪfalse�ǿ��ã�
native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing

//����texture��֧��Backdrop��SimpleStatusBar��
native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing

//��������
native DzFrameSetScale takes integer frame, real scale returns nothing

//����tooltip
native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing

//���������ui��
native DzFrameCageMouse takes integer frame, boolean enable returns nothing

//��ȡ��ǰֵ��֧��Slider��SimpleStatusBar��StatusBar��
native DzFrameGetValue takes integer frame returns real

//���������Сֵ��֧��Slider��SimpleStatusBar��StatusBar��
native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing

//����Stepֵ��֧��Slider��
native DzFrameSetStepValue takes integer frame, real step returns nothing

//���õ�ǰֵ��֧��Slider��SimpleStatusBar��StatusBar��
native DzFrameSetValue takes integer frame, real value returns nothing

//����frame��С
native DzFrameSetSize takes integer frame, real w, real h returns nothing

//����tag����frame
native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer

//������ɫ��֧��SimpleStatusBar��
native DzFrameSetVertexColor takes integer frame, integer color returns nothing

/*
DzFrameSetPoint achor���壬��0��ʼ
enum class AnchorPoint
{
    TOPLEFT = 0,
    TOP = 1,
    TOPRIGHT = 2,
    LEFT = 3,
    CENTER = 4,
    RIGHT = 5,
    BOTTOMLEFT = 6,
    BOTTOM = 7,
    BOTTOMRIGHT = 8,
};

DzFrameSetScript  ע��ui�¼����¼�ID
enum class CFrameEvents
{
    NONE = 0,
    FRAME_EVENT_PRESSED = 1,
    FRAME_MOUSE_ENTER = 2,
    FRAME_MOUSE_LEAVE = 3,
    FRAME_MOUSE_UP = 4,
    FRAME_MOUSE_DOWN = 5,
    FRAME_MOUSE_WHEEL = 6,
    FRAME_FOCUS_ENTER = FRAME_MOUSE_ENTER,
    FRAME_FOCUS_LEAVE = FRAME_MOUSE_LEAVE,
    FRAME_CHECKBOX_CHECKED = 7,
    FRAME_CHECKBOX_UNCHECKED = 8,
    FRAME_EDITBOX_TEXT_CHANGED = 9,
    FRAME_POPUPMENU_ITEM_CHANGE_START = 10,
    FRAME_POPUPMENU_ITEM_CHANGED = 11,
    FRAME_MOUSE_DOUBLECLICK = 12,
    FRAME_SPRITE_ANIM_UPDATE = 13,
};
*/


native EXSetUnitFacing takes unit u, real angle returns nothing
native EXPauseUnit takes unit u, boolean flag returns nothing
native EXSetUnitCollisionType takes boolean enable, unit u, integer t returns nothing
native EXSetUnitMoveType takes unit u, integer t returns nothing

native EXExecuteScript     takes string script returns string

native EXDisplayChat     takes player p, integer chat_recipient, string message returns nothing

native EXGetEffectX takes effect e returns real
native EXGetEffectY takes effect e returns real
native EXGetEffectZ takes effect e returns real
native EXSetEffectXY takes effect e, real x, real y returns nothing
native EXSetEffectZ takes effect e, real z returns nothing
native EXGetEffectSize takes effect e returns real
native EXSetEffectSize takes effect e, real size returns nothing
native EXEffectMatRotateX takes effect e, real angle returns nothing
native EXEffectMatRotateY takes effect e, real angle returns nothing
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXEffectMatScale takes effect e, real x, real y, real z returns nothing
native EXEffectMatReset takes effect e returns nothing
native EXSetEffectSpeed takes effect e, real speed returns nothing

native EXGetEventDamageData takes integer edd_type returns integer
native EXSetEventDamage takes real amount returns boolean

native EXGetUnitAbility        takes unit u, integer abilcode returns ability
native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
native EXGetAbilityId          takes ability abil returns integer
native EXGetAbilityState       takes ability abil, integer state_type returns real
native EXSetAbilityState       takes ability abil, integer state_type, real value returns boolean
native EXGetAbilityDataReal    takes ability abil, integer level, integer data_type returns real
native EXSetAbilityDataReal    takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
native EXGetAbilityDataString  takes ability abil, integer level, integer data_type returns string
native EXSetAbilityDataString  takes ability abil, integer level, integer data_type, string value returns boolean