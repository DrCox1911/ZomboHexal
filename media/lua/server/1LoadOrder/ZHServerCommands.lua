--[[- Command Handler Functions.

These are triggered by `ZH.Server.Callbacks.clientCommand` in response to a
OnClientCommand event.

It is unlikely that you will need to call any of these functions manually.

@module ZH.Server.CommandHandler
@author Dr_Cox1911
@release v0.01
@copyright 2020 **File:** server/1LoadOrder/ZHServerCommands.lua

]]
local ZH = ZH
local CommandHandler = ZH.Server.CommandHandler
--[[- Callback for the "requestSettings" client command.

Sends a server command telling the clients to update their ZH.Settings table with the server's version.

@tparam IsoPlayer player object that sent the command.
@tparam variable args data to be passed onto the command call.

]]
CommandHandler.requestSettings = function(player, args)
    ZH.log(ZH.INFO, "Sending Settings to ".. (player and player:getUsername() or ""))
    sendServerCommand('ZH', 'updateSettings', ZH.Settings)
end