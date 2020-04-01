require "ZHBaseItem"

ZHCureIngredient = ZHBaseItem:derive("ZHCureIngredient")


function ZHCureIngredient:new(name)
	local o = {}
	setmetatable(o, self)
	self.__index = self

	o.name = name
	o.itemType = ZH.INGREDIENT
end