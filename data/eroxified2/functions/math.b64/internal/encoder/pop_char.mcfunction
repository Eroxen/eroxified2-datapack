scoreboard players operation #math.b64.encoder.char eroxified2.internal = #math.b64.encoder.bit_data eroxified2.internal

execute if score #math.b64.encoder.bits eroxified2.internal matches 6 run scoreboard players set #math.temp eroxified2.internal 1
execute if score #math.b64.encoder.bits eroxified2.internal matches 8 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^2 eroxified2.internal
execute if score #math.b64.encoder.bits eroxified2.internal matches 10 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^4 eroxified2.internal
execute if score #math.b64.encoder.bits eroxified2.internal matches 12 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^6 eroxified2.internal

scoreboard players operation #math.b64.encoder.char eroxified2.internal /= #math.temp eroxified2.internal
scoreboard players operation #math.b64.encoder.bit_data eroxified2.internal %= #math.temp eroxified2.internal

execute store result storage eroxified2:internal math.b64.encoder.macro.i int 1 run scoreboard players get #math.b64.encoder.char eroxified2.internal
execute store result storage eroxified2:internal math.b64.encoder.macro.batchi int 1 run scoreboard players get #math.b64.encoder.batch_size eroxified2.internal
function eroxified2:math.b64/internal/encoder/get_char with storage eroxified2:internal math.b64.encoder.macro

scoreboard players add #math.b64.encoder.batch_size eroxified2.internal 1
execute if score #math.b64.encoder.batch_size eroxified2.internal matches 16 run function eroxified2:math.b64/internal/encoder/add_to_buffer/16 with storage eroxified2:internal math.b64.encoder.buffer

scoreboard players remove #math.b64.encoder.bits eroxified2.internal 6