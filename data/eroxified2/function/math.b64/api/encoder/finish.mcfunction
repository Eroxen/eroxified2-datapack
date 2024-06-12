#####################################################################
# math.b64/api/encoder/finish.mcfunction
# written by Eroxen
#
# Finishes the encoding task and returns the encoded string.
#
# Storage output:
# - eroxified2:api math.b64.encoder.output: String
#####################################################################

execute if score #math.b64.encoder.bits eroxified2.internal matches 1.. run function eroxified2:math.b64/internal/encoder/pad

execute store result storage eroxified2:internal math.b64.encoder.macro.batchi int 1 run scoreboard players get #math.b64.encoder.batch_size eroxified2.internal
execute if score #math.b64.encoder.batch_size eroxified2.internal matches 1.. run function eroxified2:math.b64/internal/encoder/empty_buffer with storage eroxified2:internal math.b64.encoder.macro

data modify storage eroxified2:api math.b64.encoder.output set from storage eroxified2:internal math.b64.encoder.buffer.buffer