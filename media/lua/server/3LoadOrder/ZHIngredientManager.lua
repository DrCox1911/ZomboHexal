--- Functions
-- @section Functions

--[[- Registers a ingredient with the ZomboHexal framework
The framework will select a sample of the registered ingredients when a new world is started.
Note: no action is taken when this function is called, it only inserts to the 'ZHAvailableIngredients' table
Any calls to this function must be done before the 'OnGameBoot' event.

@tparam ZHCureIngredient item PZ item name
@tparam Double chance that this ingredient will be part of the recipe
]]
ZHIngredientManager.addIngredient = function(item, chance)
	ZomboHexal.log(ZomboHexal.DEBUG, "adding available ingredient '" .. item:getName() .. "' with chance: " .. chance)
	ZHAvailableIngredients[item] = chance
end



ZHIngredientManager.diceIngredients = function()
	local randi = ZombRand(100)
	ZomboHexal.log(ZomboHexal.DEBUG, "dicing ingredients with randi: " .. randi)

	for key,value in pairs(ZHAvailableIngredients) do
		if (randi < value) then
			table.insert(ZHIngredients, key)
			ZomboHexal.log(ZomboHexal.DEBUG, "ingredient '" .. key:getName() .. "' added to recipe")
		end
	end
	return ZHIngredients
end


