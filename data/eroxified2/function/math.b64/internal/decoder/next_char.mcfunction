execute if data storage eroxified2:internal math.b64.decoder.buffer{string:""} if data storage eroxified2:internal math.b64.decoder.buffer.list[0] run function eroxified2:math.b64/internal/decoder/next_string
execute if data storage eroxified2:internal math.b64.decoder.buffer{string:""} run return run function eroxified2:math.b64/internal/decoder/eof
data modify storage eroxified2:internal math.b64.decoder.macro.c set string storage eroxified2:internal math.b64.decoder.buffer.string 0 1
data modify storage eroxified2:internal math.b64.decoder.buffer.string set string storage eroxified2:internal math.b64.decoder.buffer.string 1

scoreboard players set #math.b64.decoder.char_value eroxified2.internal -1
function eroxified2:math.b64/internal/decoder/get_char_value with storage eroxified2:internal math.b64.decoder.macro
execute if score #math.b64.decoder.char_value eroxified2.internal matches -1 run return run function eroxified2:math.b64/internal/decoder/next_char
execute if score #math.b64.decoder.char_value eroxified2.internal matches -2 run return run function eroxified2:math.b64/internal/decoder/eof

scoreboard players add #math.b64.decoder.bits eroxified2.internal 6
scoreboard players operation #math.b64.decoder.bit_data eroxified2.internal *= #math.const.2^6 eroxified2.internal
scoreboard players operation #math.b64.decoder.bit_data eroxified2.internal += #math.b64.decoder.char_value eroxified2.internal
execute unless score #math.b64.decoder.bits eroxified2.internal matches 8.. run return run function eroxified2:math.b64/internal/decoder/next_char

scoreboard players remove #math.b64.decoder.bits eroxified2.internal 8

scoreboard players operation math.b64.decoder.byte eroxified2.api = #math.b64.decoder.bit_data eroxified2.internal
execute if score #math.b64.decoder.bits eroxified2.internal matches 0 run scoreboard players set #math.temp eroxified2.internal 1
execute if score #math.b64.decoder.bits eroxified2.internal matches 2 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^2 eroxified2.internal
execute if score #math.b64.decoder.bits eroxified2.internal matches 4 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^4 eroxified2.internal
execute if score #math.b64.decoder.bits eroxified2.internal matches 6 run scoreboard players operation #math.temp eroxified2.internal = #math.const.2^6 eroxified2.internal
scoreboard players operation math.b64.decoder.byte eroxified2.api /= #math.temp eroxified2.internal
scoreboard players operation #math.b64.decoder.bit_data eroxified2.internal %= #math.temp eroxified2.internal
scoreboard players remove #math.b64.decoder.buffer_size eroxified2.internal 1
