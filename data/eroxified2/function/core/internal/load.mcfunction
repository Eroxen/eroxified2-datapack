scoreboard objectives add eroxified2.internal dummy
scoreboard objectives add eroxified2.api dummy
scoreboard objectives add eroxified2.config dummy
scoreboard objectives add eroxified2.leave_game minecraft.custom:minecraft.leave_game

scoreboard players reset @a eroxified2.leave_game
scoreboard players set #core.load_fault eroxified2.internal 0
scoreboard players set #core.load_complete eroxified2.internal 0

data modify storage eroxified2:internal eroxified2 set value {version:{},installed_packs:[],errors:[],warnings:[]}
# get the currently installed Eroxified2 version
function eroxified2:core/signature
data modify storage eroxified2:internal eroxified2.version.list set from storage eroxified2:api pack_signature.version
data modify storage eroxified2:api core.version.list set from storage eroxified2:api pack_signature.version
function eroxified2:core/api/version/list_to_score
function eroxified2:core/api/version/list_to_string
execute store result storage eroxified2:internal eroxified2.version.int int 1 run scoreboard players get core.version eroxified2.api
data modify storage eroxified2:internal eroxified2.version.string set from storage eroxified2:api core.version.string
scoreboard players operation #eroxified2.installed_version eroxified2.internal = core.version eroxified2.api
scoreboard players operation #eroxified2.max_version eroxified2.internal = core.version eroxified2.api

function #eroxified2:core/load_modules
function #eroxified2:core/preload_packs

# error / compat checking
function #eroxified2:core/unittests


execute if data storage eroxified2:internal eroxified2.warnings[0] run scoreboard players set #core.load_fault eroxified2.internal 1
execute if data storage eroxified2:internal eroxified2.errors[0] run scoreboard players set #core.load_fault eroxified2.internal 2
function eroxified2:core/internal/load/finish