﻿
肉菜 := { 酥肉 : ["五花肉 + 面粉 + 鸡蛋"]
, 青椒肉丝 : ["猪肉 + 青椒"]
, 红烧排骨 : ["排骨", "排骨 + 土豆", "排骨 + 鹌鹑蛋", "排骨 + 豆角"]
, 红烧肉 : ["五花肉", "五花肉 + 鹌鹑蛋"]
, 水煮肉片 : ["里脊 + 豆芽 or 生菜 + 生粉"]
, 大蒜炒肉 : ["五花肉 + 大蒜"]
, 糖醋里脊 : ["里脊 + 番茄酱 + 醋 + 糖"]
, 鸡翅中 : ["鸡翅中 + 可乐", "鸡翅中 + 酱油"]
, 鸡胸 : ["鸡胸 + 面粉 + 鸡蛋 + 面包糠"]
, 鸡爪 : ["鸡爪"]
, 鸡腿 : ["鸡腿 + 青红椒", "鸡腿 + 土豆", "鸡翅根 + 酱油"]
, 牛肚 : ["牛肚 + 青红椒 + 洋葱"]
, 牛肉 : ["牛肉 + 青红椒 + 洋葱", "牛肉 + 芹菜", "牛肉 + 土豆 + 大葱", "牛肉 + 西红柿 + 大葱"]
, 虾 : ["虾 + 酱油", "虾 + 番茄酱 + 醋 + 糖", "虾 + 蒜蓉 + 粉丝"]
, 花蛤 : ["花蛤 + 青红椒"]
, 鱼 : ["鲫鱼 + 豆腐", "鲫鱼 + 大葱", "鲈鱼 + 大葱", "秋刀鱼 + 盐"]}

汤类 := { 萝卜羊肉汤 : ["羊肉 + 萝卜 + 生姜"]
,鱼丸汤 : ["鱼丸 + 醋"]
,鸡蛋汤 : ["鸡蛋 + 小葱"]
,排骨汤 : ["排骨 + 玉米", "排骨 + 萝卜", "排骨 + 海带", "排骨 + 莲藕", "排骨 + 胡萝卜"]
,绿豆汤 : ["绿豆 + 冰糖", "绿豆 + 百合 + 冰糖"]
,雪梨汤 : ["雪梨 + 冰糖"]}

素菜 := { 土豆 : ["土豆 + 小葱", "土豆 + 青红椒", "土豆 + 肉片", "凉拌土豆"]
,莲藕 : ["莲藕", "莲藕 + 肉片", "凉拌莲藕", "藕夹"]
,青菜 : ["油菜", "生菜", "空心菜", "包菜", "芥菜", "菠菜", "韭菜", "韭黄 + 鸡蛋", "香菇 + 油菜", "香菇 + 肉片", "包菜 + 辣椒 + 醋", "包菜 + 肉片", "包菜 + 红薯粉", "油麦菜"]
,黄瓜 : ["黄瓜 + 肉片", "黄瓜 + 火腿", "黄瓜(凉拌)", "黄瓜片(素炒)"]
,西红柿 : ["西红柿 + 白糖", "西红柿 + 鸡蛋"]
,面筋 : ["面筋 + 耗油", "面筋 + 胡萝卜", "面筋 + 洋葱", "面筋 + 青红椒"]
,洋葱 : ["洋葱 + 鸡蛋", "洋葱 + 肉片"]
,胡萝卜 : ["胡萝卜丝", "胡萝卜片1`	 + 肉"]
,鸡蛋 : ["鸡蛋(煎)", "虎皮蛋(红烧)", "虎皮蛋(糖醋)"]
,豆腐 : ["豆腐丝", "豆泡 + 肉", "腐竹(凉拌)", "腐竹 + 肉", "豆干 + 芹菜"]
,茄子 : ["茄子 + 酱油", "茄子 + 肉"]
,豆角 : ["豆角 + 肉", "酸豆角 + 辣椒 + 肉沫", "四季豆(清炒)"]
,玉米 : ["玉米 + 火腿", "玉米 + 肉", "玉米 + 胡萝卜", "玉米(清蒸)"]
,绿豆芽 : ["绿豆芽 + 小葱", "绿豆芽 + 胡萝卜"]}

主食 := { 韭菜饼 : ["韭菜 + 豆芽 + 鸡蛋 + 红薯粉 + 小葱", "韭菜盒子"]
, 饺子 : ["韭菜 + 肉 + 饺子皮", "韭菜 + 鸡蛋 + 饺子皮", "芥菜 + 肉 + 饺子皮", "紫菜 + 肉 + 饺子皮"]
, 馄饨 : ["鸡蛋 + 肉 + 馄饨皮"]
, 米饭 : ["米饭", "鸡蛋 + 饭", "鸡蛋 + 火腿 + 饭", "酱油 + 饭", "菜饭(出去吃)"]}

外出便宜 := {外出 : ["小桥 煲仔饭", "清荣大道 菜饭", "清荣大道 番薯丸", "好粥道", "味之都"]}

Gui, add, button,g#add_zs x6 y5, 加主食
Gui, add, button,g#add_sc y5, 加素菜
Gui, add, button,g#add_sp y5, 加汤类
Gui, add, button,g#add_mt y5, 加肉菜
Gui, add, button,g#add_wc y5, 外出便宜
Gui, add, listview, x6 h200 Grid g#del_item, 类型|材料
Gui, show
return

#del_item:
	if (a_guievent = "doubleclick") {
		LV_Delete(LV_GetNext(0))
	}
return

rand_get(obj) {
	dex := obj.count()
	Random, this_i, 1, % dex
	for key, var in obj
	{
		if (A_Index = this_i)
		{
			ls := obj[key]
			if (ls.maxindex() > 1) {
				Random, pos, 1, % ls.maxindex()
				this_s := ls[pos]
			}
			else
				this_s := ls[1]
			return [key, this_s]
		}
	}
}

mk_ct() {
	LV_ModifyCol(1, "AutoHdr Center")
	LV_ModifyCol(2, "AutoHdr Center")	
}

#add_wc:
	this_ls := rand_get(外出便宜)
	LV_Add("", this_ls*)
	mk_ct()	
return

#add_zs:
	this_ls := rand_get(主食)
	LV_Add("", this_ls*)
	mk_ct()
return

#add_sc:
	this_ls := rand_get(素菜)
	LV_Add("", this_ls*)
	mk_ct()
return

#add_sp:
	this_ls := rand_get(汤类)
	LV_Add("", this_ls*)
	mk_ct()
return

#add_mt:
	this_ls := rand_get(肉菜)
	LV_Add("", this_ls*)
	mk_ct()
return