require "ZHBaseItem"
require "ZHCureIngredient"

ZHZombieCure = ZHBaseItem:derive("ZHZombieCure")

function ZHZombieCure:mixCure()
	
end

function ZHZombieCure:new(player, ingredients)
	local o = {}
	setmetatable(o, self)
	self.__index = self

	o.name = getText("Item_ZombieCure")
	o.itemType = ZH.CURE

	local creatorName = player:getForname() .. " " .. player:getSurname()
	if (isClient()) then creatorName = player:getUsername() end
	o.createdBy = creatorName
	o.firstAidSkillCreator = player:getPerkLevel(Perks.Doctor)
	o.ingredients = ingredients

	
end