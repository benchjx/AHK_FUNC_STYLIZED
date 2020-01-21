;===========================================
;~ 段级 执行单位
;===========================================

;------------------------------------
;~ 自动执行段:
	#include xxx.ahk
	#SingleInstance force
	SetBatchLines, -1

	...
	...
	...

	return

	; 由 主启动文件 的第一行开始 , 到 return 结束的代码段
	; 类似 c语言 的 main()函数入口
	; #include 包含的文件 中可执行语句也会被执行, #include 中的 return 也会 完结自动执行段

	; 其间 定义的 (函数) 与 (类) 不会 被执行

	; 其间 定义的 (标签) 会 被执行

	; 期间 定义的 (热键) 相当于 return 将完结 自动执行段



;------------------------------------
;~ 函数定义: 定义本体不会执行
	; 几个文件夹下 的 lib 文件夹中的函数, 无需 #include 文件名.ahk

	; 在脚本启动之前将 检测重名函数 等错误后直接载入所有函数
	; 仅由 函数调用 语句 执行
	; 对象传入函数默认为传址
	; 函数体内部的 (标签):
		;~ 随 函数 内部的 变量作用域
		;~ 标签 return 可以有返回值
		;~ 外部不可访问函数内标签
		;~ 可访问外部标签

	; 函数内不允许建立函数
	; 函数体内部允许访问 全局变量
	; 函数体内部无法创建 超级全局变量

	function(p0, byref p1, p2 := "abc", p3*) {

		;~ p0 , p1 位置必须在 p2 p3 之前
		;~ p3 必须在 p2之前

		global	;~ 与local  无法共存
		local	;~ 与global 无法共存
		static	;~ 需要重复定义某些常量值, 可以提升性能, 或部分保留函数结果

		;~ code line

		return	;~ 无返回值 可 判断 (ret = "")

		label:
			;~ code line
		return

	}




;------------------------------------
;~ 类定义: 定义本体不会执行
	; 类似函数定义
	; 由对象方法由对象的语法调用执行
	; 类名是 超级全局变量
	; 类 的 方法 完全可以 参照函数 的 定义方法, this 变量 可以访问对象本体
	; 基对象玩法比较多


	class BaseClass {
		;~ 这是被 ClassName 类 继承 的 基对象(父类)

		;~ __Get() / __Set() / __Call() 三个方法仅在作为基对象时有效

		;~ ddd := ClassName.aaa + 1		;~ 会弹窗1, 不存在aaa键
		;~ ClassName.bbb := 222			;~ 会弹窗2, 不存在bbb键
		;~ ClassName.ccc("")			;~ 会弹窗3, 不存在ccc键

		__Get() {
			msgbox, 1
		}

		__Set() {
			msgbox, 2
		}

		__Call() {
			msgbox, 3
		}
	}

	class ClassName extends BaseClass {

		static classKey := ""		;~ 类变量

		objKey := ""				;~ new 后的对象初始键值

		property {					;~ 属性
			get {
				;~ get 切忌调用 obj.property 本身, 将递归死循环

				;~ 绕路手段, obj.__property 多造一个键出来
				return this.__property
			}

			set {
				;~ 赋值于此属性的 值 在此以 value 变量 展现
				;~ 其余坑点同上
			}
		}


		method(p0, byref p1, p2 := "abc", p3*) {					;~ 方法名为对象的键, 可用字符串调用
			static
			global
			local

			this.abc := ""			;~ this指代对象本身, 个别情况下this无用, 如 gui 控件的 g标签 指向 class 中的方法

			return

			label:

			return
		}

	}




;------------------------------------
;~ 标签:
	; 标签极像个无返回值的函数
	; 标签其实是个语句块, 它可以镶嵌在任何地方, 可以被触发执行, 可以在执行到标签时执行
	; 计时器性能比循环差很多

	; 调用 标签
		goto, label				;~ 跳转后不返回

		gosub, label			;~ 跳转后遭遇 return 返回继续执行

		SetTimer, label, -1
			;~ 为负数只执行一次
			;~ 但当此语句执行后, label标签视为另一个线程
			;~ 这个命令比 gosub 安全

		settimer, label, 1
			;~ 多个计时标签容易冲突
			;~ 包括遭遇阻塞 msgbox时 wait系列命令时, 多会阻断
			;~ 适合执行短周期的代码块

		return

	; 定义标签
		label:

		return



;------------------------------------
;~ 热键定义:
	; 回调函数, 由用户按键事件触发
	; 热键和热字串是同级概念, 热字串是热键的另一种表现
	; hotkey 命令设置 热键更灵活


	;~ 以下三段触发任意一段都会弹窗, 热键与 标签可能属于同级实现, 猜的

	a::

	::bcdef::

	label:

		msgbox, 1

	return


;------------------------------------
;~ #if 系列段: 没怎么测过..不喜欢


;------------------------------------
;~ 纯回调性质的 界面功能,  内容太多..
;~ GUI 是独立的线程

; 1个 GUI 单位包括:
	;~ 1个 主窗口
	;~ n个 子控件

; 内容定位 增删改查 方式
	;~ v变量, 不灵活
	;~ hwnd句柄, 推荐

	GuiControlGet	;~ 获取控件内容
	GuiControl		;~ 设置控件内容

	; 特殊控件有专有方法 如 listview 控件 treeview 控件
	; WinSet WinGet / control controlget 系列命令也通用于 GUI


; 事件, gui, add 子命令 , option参数中定义

	;~ g标签名, 麻烦, 不推荐使用
	;~ g函数名, 通用, 推荐使用, 函数首位参数将传入hwnd句柄
	;~ g对象.方法名, 纯执行功能时可用, 但this变量会出问题

	;~ onmessage() 函数 , 可以获取大部分

; 其他样式杂项太多




;===========================================
;~ 块级 执行单位, 关于流程控制的 语句块
;===========================================

;--------------------------------
;~ 普通流程控制


;~ 下例 if 语句只有一段会被执行

if (表达式) {

} else if (表达式) {

} else if (表达式) {

} else {

}

;* 其他延伸 if 特殊方法不计



;~ 错误检测
try {

} catch {

}

;~ 1.1.31新增的switch 未测试

;--------------------------------
;~ 普通流程控制
loop, 传统式
{

}

Loop, % 表达式
{

}

loop {

} until (表达式)

;* 其他延伸 loop 内置特殊方法不计

;~ while 循环 , 类似 if , 至末尾跳转至头部继续判断, 正确则继续循环执行
while (表达式) {

}

;* for 循环 , 遍历对象键
for key, var in obj {

}





;===========================================
;~ 行级 执行单位
;===========================================

;~ 赋值语句:

str = value		;~ 传统式赋值

str = 			;~ 分行传统式赋值
(
abc
123
)

str := "value"	;~ 表达式 字符串赋值

str :=    "v1"	;~ 表达式分行
		. "v2"
		. "v3"

num := 123		;~ 表达式 普通数值赋值

var := var2		;~ 表达式 赋值其他变量

arr1 := [1, 2, 3]	;~ 普通数组赋值

arr2 := [ 555		;~ 数组分行赋值
		, 666
		, 777 ]

obj1 := {"A": "a", "B" : "b", "C" : "c"}	;~ 普通关联数组赋值赋值

obj2 := { "e": "E"							;~ 分行关联数组对象赋值
		, "f": "F"
		, "g": "G"}

;~ 命令语句:

MsgBox, abc			;~ 传统式命令

MsgBox, 			;~ 分行传统式命令
(
abc
efg
)

MsgBox, % "abc"		;~ 表达式命令

MsgBox, % "abc"		;~ 分行表达式命令
		. "bcd"
		. "efg"




;~ 函数调用语句:
function(param1, param2..)	;~ 普通函数语句

function(param1				;~ 分行函数语句
		,param2
		,param3)


;~ 对象方法调用语句:

obj.method()

obj["method"]()


;~ 三元运算语句:
function() ? fc1() : fc2()

;===========================================
;~ 表达式 / 运算符... 不写了
;===========================================

