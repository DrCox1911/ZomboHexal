--[[- Callback Functions.

All events are hooked in `ZHServerEvents.lua` and call these functions.

It is unlikely that you will need to call any of these functions manually.

@module ZH.Server.Callbacks
@author Dr_Cox1911
@release v0.01
@copyright 2020 **File:** server/1LoadOrder/ZHServerCallbacks.lua

]]
local ZH = ZH
local Server = ZH.Server
local Callbacks = ZH.Callbacks
local CommandHandler = ZH.Server.CommandHandler

local table = table
local tostring = tostring
local ipairs = ipairs
local pairs = pairs
local isServer = isServer

Callbacks.onFillContainer = function(roomName, containterType, container)
	Server.Spawn.fillContainer(roomName, containterType, container)
end

--[[- Handles command requests from the clients in MP.

Triggered by the OnClientCommand event.

If the module name is 'ZH'
and the `ZH.Server.CommandHandler` has a function with the name that
matches the command string argument, it calls that function.

@tparam string module name of the command module.
@tparam string command name of the command to run.
@tparam IsoPlayer player player that sent the command.
@tparam variable args data to be passed onto the command call.

]]
Callbacks.clientCommand = function(module, command, player, args)
    --print("Server got command: "..tostring(module)..":"..tostring(command).." - " ..tostring(isServer()))
    if not isServer() then return end
    if module ~= "ZH" then return end
    ZH.log(ZH.INFO, "Server got ClientCommand "..tostring(command))
    if CommandHandler[command] then CommandHandler[command](player, args) end
end