data modify storage eroxified2:internal math.b64.decoder.buffer.string set from storage eroxified2:internal math.b64.decoder.buffer.list[0]
data remove storage eroxified2:internal math.b64.decoder.buffer.list[0]
execute store result score #math.temp eroxified2.internal run data get storage eroxified2:internal math.b64.decoder.buffer.string
scoreboard players operation #math.b64.decoder.buffer_size eroxified2.internal += #math.temp eroxified2.internal
execute if data storage eroxified2:internal math.b64.decoder.buffer.list[0] run return run function eroxified2:math.b64/internal/decoder/count_buffer_size

scoreboard players set #math.temp eroxified2.internal 3
scoreboard players operation #math.b64.decoder.buffer_size eroxified2.internal *= #math.temp eroxified2.internal
scoreboard players set #math.temp eroxified2.internal 4
scoreboard players operation #math.b64.decoder.buffer_size eroxified2.internal /= #math.temp eroxified2.internal
data modify storage eroxified2:internal math.b64.decoder.buffer.string_last2 set string storage eroxified2:internal math.b64.decoder.buffer.string -2
data modify storage eroxified2:internal math.b64.decoder.buffer.string_last1 set string storage eroxified2:internal math.b64.decoder.buffer.string -1
execute if data storage eroxified2:internal math.b64.decoder.buffer{string_last2:"=="} run return run scoreboard players remove #math.b64.decoder.buffer_size eroxified2.internal 2
execute if data storage eroxified2:internal math.b64.decoder.buffer{string_last1:"="} run return run scoreboard players remove #math.b64.decoder.buffer_size eroxified2.internal 1