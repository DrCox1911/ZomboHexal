--[[- ZH - Advanced Zombie Virus Cure

The core ZH table of ZH.

All functions and tables can be accessed via the global table named ZH.
This mod's core philosophy is to place as little as possible in the global
namespace for performance reasons as Zomboid's lua global namespace is already
heavily polluted.
Because of this, you should always pull the ZH table (or it's sub-tables)
into the local namespace.

    local ZH = ZH

## Example
    -- pull tables into local namespace
    local ZH = ZH
    local CureIngredients = ZH.CureIngredients

@module ZH
@release 0.01
@author Dr_Cox1911
@copyright 2020 **File:** shared/1LoadOrder/ZHCore.lua

]]

-- Functions are not listed in this file, they are loaded into it by the other files in the mod.

ZH = {}

--- Modules
-- @section Modules

--- Contains all ZH server-side functions, see: 'ZH.Server'
ZH.Server = {}
ZH.Server.Spawn = {}
ZH.Server.CommandHandler = {}
ZH.Server.Callbacks = {}

--- Contains all ZH client-side functions, see: 'ZH.Client'
ZH.Client = { }
ZH.Client.CommandHandler = {}
ZH.Client.Callbacks = {}
ZH.Client.Menu = {}

-- Contains all ZH common functions, see: 'ZH.Common'
ZH.Common = {}
ZH.Common.IngredientManager = {}
ZH.Common.IngredientManager.AvailableIngredients = {}
ZH.Common.IngredientManager.ChosenIngredients = {}

--- Item type Constants
-- @section ItemTypes
ZH.UNDEFINED = 0
ZH.INGREDIENT = 1
ZH.CURE = 2

--- Current version number
ZH.VERSION = "0.01"
--- Author/Maintainer
ZH.AUTHOR = "Dr_Cox1911"

--- Settings
-- @section Settings

--- table containing all ZH settings
-- these are all defined below in the ZH.SettingsValidator table
ZH.Settings = { }


--- This table handles all the settings to be defined in ZH.Settings, expected
-- value types, default values, min/max (for integers and floats) and any Functions
-- to run when updating this setting.
ZH.SettingsValidator = { }

--- Logging level verbosity.
ZH.LogLevel = 3

-- string names for log levels.
ZH.LogLevelStrings = { [0] = "ERROR", [1] = "WARN", [2] = "INFO", [3] = "DEBUG", [4] = "VERBOSE"}

--[[- Logging Constants.
These are passed to and checked when making calls to 'ZH.log'.
@section Logging
]]

--- integer 0
ZH.ERROR = 0
--- integer 1
ZH.WARN = 1
--- integer 2
ZH.INFO = 2
--- integer 3
ZH.DEBUG = 3
--- integer 4
ZH.VERBOSE = 4


--[[ ZH.SettingsValidator Table

This table handles all the settings to be defined in ZH.Settings, expected
value types, default values, min/max (for integers and floats) and any Functions
to run when updating this setting.

]]

ZH.SettingsValidator = {

    -- LogLevel: This controls how much text ZH prints to the console and log file.
    -- valid options are ZH.ERROR, ZH.WARN, ZH.INFO, ZH.DEBUG, ZH.VERBOSE (default ZH.VERBOSE)
    LogLevel = {type='integer', min=0, max=4, default=ZH.VERBOSE},

