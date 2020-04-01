ZHBaseItem = {}

ZHBaseItem.Type = "ZHBaseItem"

function ZHBaseItem:toString()
	print("[" .. self.Type)
	for k,v in pairs(self) do print("-->'" .. k .. "' = '" .. v .. "'") end
	print("]")
end

function ZHBaseItem:derive(type)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.Type = type

	return o
end

function ZHBaseItem:new()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.itemType = ZH.UNDEFINED

	return o
end