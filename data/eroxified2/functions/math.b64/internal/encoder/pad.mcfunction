scoreboard players add #math.b64.encoder.bits eroxified2.internal 8
scoreboard players operation #math.b64.encoder.bit_data eroxified2.internal *= #math.const.2^8 eroxified2.internal
function eroxified2:math.b64/internal/encoder/pop_char

execute store result storage eroxified2:internal math.b64.encoder.macro.batchi int 1 run scoreboard players get #math.b64.encoder.batch_size eroxified2.internal
function eroxified2:math.b64/internal/encoder/pad_store with storage eroxified2:internal math.b64.encoder.macro
scoreboard players add #math.b64.encoder.batch_size eroxified2.internal 1