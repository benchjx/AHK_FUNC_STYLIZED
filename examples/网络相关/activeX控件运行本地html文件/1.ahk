﻿ComObjError(False)

Gui Add, ActiveX, w980 h640 vWB, Shell.Explorer  ; 最后一个参数是ActiveX组件的名称.
WB.Navigate("C:\Users\CUSong\Desktop\a\index.html")  ; 该句只适用于web浏览器控件.


Gui Show
Sleep, 1000


MsgBox, % WB.document.attributes.length


return