/*	此脚本未GTA5的按键脚本
	非本人原创
	客户需求为: 在脚本本身添加一段代码
	约200行左右为本人添加的代码, 具体需求忘了, 仅为纪念
*/

SetCapsLockState, AlwaysOff
global THISKEY := "x"
global THISKEY2 := "x"
global startorpause := true
#MenuMaskKey vk07
#UseHook
#NoEnv
#SingleInstance force
#Warn ;# 开启 变量相关警示
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode 2



Hotkey, if , WinActive("ahk_class grcWindow") || WinActive("- AutoHotkey")
Hotkey, ~Home, startorit_Bool_lable
Hotkey, ~Esc, start_lable
#if WinActive("ahk_class grcWindow") || WinActive("- AutoHotkey")
;此处为home，esc映射，300行为按键代码本体




#If ((WinActive("ahk_class grcWindow") || WinActive("- AutoHotkey"))  && startorpause)
;此处为改动后的原按键映射出发点
#If

;# 之后注册的按键必须在这两个语境之下才可以生效
Hotkey,if,((WinActive("ahk_class grcWindow") || WinActive("- AutoHotkey"))  && startorpause)

;# 设置热键变量

;## 为 op1 设置热键变量
ArmorKey := "n"
chiyaoKey := "b"
dogTeamKey := "<!4"
SB110Key := "``"
callbirdKey := "j"
feijireganKey := "NumpadSub"

;## op1和op2设置热键变量
EasyWayOutKey := "q"
RefilRocketKey:= "F5"
RefilGrenadeLauncherKey:= "1"
dogKey := "<!3"
snipballsnipKey := "e"
beJackMaKey := "<!2"
motuobangKey := "<!1"
buyduciKey := "5"
hotfeelKey := "t"
chilingshiKey := "k"
shuapingKey := "/"
feijireganputongKey := "NumpadMult"
yincangchaishiKey := "l"
lafushouKey := "NumpadDiv"
IntMenuDelay := 80
KeySendDelay := 4
KeyPressDuration := 1
setkeydelay, KeySendDelay, KeyPressDuration ;#设置延迟
;# 设置热键
初始化()

Return ;# 自动执行段结束

;# 模式1和模式2共有标签

Armor:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{up}{up}{up}{Enter}{down}{down}{down}{Enter}
return
;                                                                            ?chiyao?
;                                                                           Drops chiyao
chiyao:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{up}{up}{up}{Enter}{down}{Enter}
return

;                                                                         ?EasyWayOut?
;                                                                          Easy Way Out
EasyWayOut:
sleep, 40
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Up}{Up}{c down}
Send {\ down}{enter down}{\ up}{enter up}
Send {c Up}
return
;                                                                         ?RefilRocket?
;                                                                          Refils Rocket Launcher
RefilRocket:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{Enter}{down}{down}{down}{Enter}{down}{right}{down}{down}{Enter}{m}
return
;                                                                         ?RefilGrenadeLauncher?
;                                                                          Refils Grenade Launcher
RefilGrenadeLauncher:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{Enter}{down}{down}{down}{Enter}{up}{Enter}{Enter}{m}
return
;                                                                         ?Passive Mode?
;                                                                   Enters and exits passive mode
dog:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{up}{Enter}{Enter}
sleep, 80
Send {m}
sleep, 80
send {wheelup}
sleep, 80
send {Enter}{LAlt}
return


dogTeam:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{down}{down}{down}{down}{Enter}{down}{down}{down}{down}{Enter}{LAlt}
return

SB110:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{up}{up}{up}{Enter}{up}{up}{Enter}{LAlt}
return

snipballsnip:
Send {3}
sleep, 20
Send, % "{" THISKEY "}"
return

beJackMa:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{down}{down}{down}{down}{down}{Enter}{Enter}{Enter}{LAlt}
return

motuobang:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{down}{down}{down}{down}{down}{down}{Enter}{Enter}{Enter}{LAlt}
return

buyduci:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{enter}{down}{down}{down}{enter}{down}{left}{down}{down}{Enter}{m}
return

hotfeel:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{down}{enter}{down}{enter}{down}{down}{down}{down}{space}{m}
return
chilingshi:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{enter}{down}{down}{enter}
return



callbird:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{up}{up}{Enter}{down}{down}{down}{down}{Enter}
return
;
;

shuaping:
Send {y}
Send {space}
Send {enter}
return

feijiregan:
Send {m}{down}{down}{down}{Enter}{down}{Enter}{space}{m}
return

feijireganputong:
Send {m}{down}{down}{Enter}{down}{Enter}{space}{m}
return

yincangchaishi:
Send {m}{up}{up}{up}{up}{up}{up}{up}{up}{up}{Enter}{Enter}{Enter}{m}
return

lafushou:
Send {Enter}{Enter}{Enter}{Enter}{Enter}{Enter}
return

y::
Suspend on
send, {y}
return

u::
Suspend on
send, {u}
return


Enter::
Suspend off
send, {Enter}
return

NumpadEnter::
Suspend off
send, {NumpadEnter}
return


NumpadDown::
NumpadEnd::
NumpadLeft::
NumpadHome::
NumpadUp::
NumpadPgUp::
NumpadRight::
NumpadPgDn::
keytokey("NumpadDown", "Numpad2")
keytokey("NumpadEnd", "Numpad1")
keytokey("NumpadLeft", "Numpad4")
keytokey("NumpadHome", "Numpad7")
keytokey("NumpadUp", "Numpad8")
keytokey("NumpadPgUp", "Numpad9")
keytokey("NumpadRight", "Numpad6")
keytokey("NumpadPgDn", "Numpad3")

return


keytokey(itkeyIn, tothevar) {
	THISITITIT := % A_ThisHotkey . " "
	StringTrimRight , THISITITIT, THISITITIT, 1
	if (itkeyIn = THISITITIT)
		THISKEY := tothevar
}



+~Numpad2::
+~Numpad1::
+~Numpad4::
+~Numpad7::
+~Numpad8::
+~Numpad9::
+~Numpad6::
+~Numpad3::
+~x::
+~4::
+~6::
+~7::
+~8::
+~9::

THISKEY := A_ThisHotkey
StringTrimLeft , THISKEY, THISKEY, 2
return


~Numpad2::
~Numpad1::
~Numpad4::
~Numpad7::
~Numpad8::
~Numpad9::
~Numpad6::
~Numpad3::
~x::
~4::
~6::
~7::
~8::
~9::


THISKEY := A_ThisHotkey
StringTrimLeft , THISKEY, THISKEY, 1
return







;---------------------------------------------------------------------------------------------------------------
;# 模式2独有标签
              ;                               ?RefilRocket?
;                                                                          Refils Rocket Launcher



RefilRocket_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{Enter}{down}{down}{down}{Enter}{down}{right}{down}{down}{Enter}{m}
return
;                                                                         ?RefilGrenadeLauncher?
;                                                                          Refils Grenade Launcher
RefilGrenadeLauncher_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{Enter}{down}{down}{down}{Enter}{up}{Enter}{Enter}{m}
return
;                                                                         ?Passive Mode?
;                                                                   Enters and exits passive mode
dog_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {up}{Enter}{LAlt}
return

snipballsnip_2:
Send {3}
sleep, 40
Send, % "{" THISKEY "}"
return

buyduci_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{enter}{down}{down}{down}{enter}{down}{left}{down}{down}{Enter}{m}
return

startorit_Bool_lable:
	;虚荣， 开关
	startorpause := !startorpause
	return

start_lable:
	startorpause := true
	return


hotfeel_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{down}{enter}{down}{enter}{down}{down}{down}{down}{space}{m}
return
chilingshi_2:
Send {m}
sleep, IntMenuDelay
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {down}{enter}{down}{down}{enter}
return


;---------------------------------------------------------------------------------------------------------------
;# 模式切换热键F4

F4::
;# 更换指示灯
FastSwap()
;# 切换
swap()
return

;---------------------------------------------------------------------------------------------------------------

;# 热键初始化注册函数
初始化(){
global

;# 这个是模式1独有的
Hotkey, %ArmorKey%, Armor
Hotkey, %chiyaoKey%, chiyao
Hotkey, %dogTeamKey%, dogTeam
Hotkey, %SB110Key%, SB110
Hotkey, %callbirdKey%, callbird
Hotkey, %feijireganKey%, feijiregan


;# 这个是模式1和2在标签和热键上完全相同的(不用改)
Hotkey, %EasyWayOutKey%, EasyWayOut
Hotkey, %beJackMaKey%, beJackMa
Hotkey, %motuobangKey%, motuobang
Hotkey, %shuapingKey%, shuaping
Hotkey, %feijireganputongKey%, feijireganputong
Hotkey, %yincangchaishiKey%, yincangchaishi
Hotkey, %lafushouKey%, lafushou

;# 初始化之后直接运行一次swap
swap()
return
}

;---------------------------------------------------------------------------------------------------------------

;# 切换两个模式的函数
swap(){
global
;# 检测OP 确定模式
Sleep 100
op := GetKeyState("ScrollLock" , "T")
op++
;# 如果是模式1,就启用这些模式1独享按键,如果是模式2，那么就直接关闭这些按键
if (op=1){
;# Doc1独享热键(在2中不能被使用,1独享)
Hotkey, %ArmorKey%, Armor,On
Hotkey, %chiyaoKey%, chiyao,On
Hotkey, %dogTeamKey%, dogTeam,On
Hotkey, %SB110Key%, SB110,On
Hotkey, %callbirdKey%, callbird,On
Hotkey, %feijireganKey%, feijiregan,On
}
else if (op=2){
;# Doc1独享热键(在2中不能被使用,1独享)
Hotkey, %ArmorKey%, Armor,OFF
Hotkey, %chiyaoKey%, chiyao,OFF
Hotkey, %dogTeamKey%, dogTeam,OFF
Hotkey, %SB110Key%, SB110,OFF
Hotkey, %callbirdKey%, callbird,OFF
Hotkey, %feijireganKey%, feijiregan,OFF
}
else{
MsgBox,未知错误
}

if (op=1){
;# 这两部分是1和2公用，但是1和2的标签名一样内容不一样，所以只能单独处理
Hotkey, %RefilRocketKey%, RefilRocket
Hotkey, %RefilGrenadeLauncherKey%, RefilGrenadeLauncher
Hotkey, %dogKey%, dog
Hotkey, %snipballsnipKey%, snipballsnip
Hotkey, %buyduciKey%, buyduci
Hotkey, %hotfeelKey%, hotfeel
Hotkey, %chilingshiKey%, chilingshi
}
else if (op=2){

Hotkey, %RefilRocketKey%, RefilRocket_2
Hotkey, %RefilGrenadeLauncherKey%, RefilGrenadeLauncher_2
Hotkey, %dogKey%, dog_2
Hotkey, %snipballsnipKey%, snipballsnip_2
Hotkey, %buyduciKey%, buyduci_2
Hotkey, %hotfeelKey%, hotfeel_2
Hotkey, %chilingshiKey%, chilingshi_2

}
else{
MsgBox,未知错误
}

return
}

;---------------------------------------------------------------------------------------------------------------
;# ScrLK切换状态(作为指示灯)
FastSwap(){
	SetScrollLockState,% GetKeyState("ScrollLock","T") ? "OFF" : "On"
	return
}

