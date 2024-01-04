data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0}

execute unless score #entity.uuid.int eroxified2.internal matches ..-1 run function eroxified2:entity/internal/uuid/list_to_string/positive_int
execute if score #entity.uuid.int eroxified2.internal matches ..-1 run function eroxified2:entity/internal/uuid/list_to_string/negative_int
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.0 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^28 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^24 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.1 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^24 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^20 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.2 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^20 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^16 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.3 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^16 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^12 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.4 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^12 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^8 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.5 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^8 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal /= #math.const.2^4 eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.6 set from storage eroxified2:internal entity.uuid.list_to_string.hex

scoreboard players operation #entity.uuid.int eroxified2.internal %= #math.const.2^4 eroxified2.internal
scoreboard players operation #entity.uuid.temp eroxified2.internal = #entity.uuid.int eroxified2.internal
function eroxified2:entity/internal/uuid/list_to_string/hexify
data modify storage eroxified2:internal entity.uuid.list_to_string.sliced_int.7 set from storage eroxified2:internal entity.uuid.list_to_string.hex
