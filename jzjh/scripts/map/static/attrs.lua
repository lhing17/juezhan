

-- TODO 将kongfu改造成lni文件读取
local kungfu = {}
setmetatable(kungfu,kungfu)
et.kungfu = kungfu

local mt = {}
kungfu.__index = mt

mt.id = 0

mt.name = ''

mt.itemid = 0

mt.abilityid = 0

mt.type = ''

mt.conditions = {
	['悟性'] = 0,
	['根骨'] = 0,
	['经脉'] = 0,
	['医术'] = 0,
	['福缘'] = 0,
	['胆魄'] = 0,
}

