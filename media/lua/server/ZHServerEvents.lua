--[[- All server-side calls to Events.*.Add() are defined within this file.

This file contains no functions. See `ZH.Server.Callbacks`

@script ZHServerEvents.lua
@author Dr_Cox1911
@release 0.01
@copyright 2018 **File:** server/ZHServerEvents.lua

]]
local Callbacks = ZH.Server.Callbacks
Events.OnFillContainer.Add(Callbacks.onFillContainer)
Events.OnClientCommand.Add(Callbacks.clientCommand)