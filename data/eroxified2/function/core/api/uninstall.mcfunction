#####################################################################
# core/api/uninstall.mcfunction
# written by Eroxen
#
# Removes all storage and scoreboard from all eroxified2 modules.
#####################################################################

scoreboard objectives remove eroxified2.internal
scoreboard objectives remove eroxified2.api
scoreboard objectives remove eroxified2.config
scoreboard objectives remove eroxified2.leave_game

data remove storage eroxified2:api core
data remove storage eroxified2:internal core

data remove storage eroxified2:api pack_signature

data remove storage eroxified2:internal temp
data remove storage eroxified2:internal macro
data remove storage eroxified2:internal eroxified2

function #eroxified2:core/unload_modules