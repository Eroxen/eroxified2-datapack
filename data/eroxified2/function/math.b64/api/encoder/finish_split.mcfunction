#####################################################################
# math.b64/api/encoder/finish_split.mcfunction
# written by Eroxen
#
# Finishes the encoding task and returns the encoded string
# as a list of substrings of a given maximum length.
#
# Scoreboard input:
# - math.b64.encoder.split eroxified2.api: Maximum substring length
#
# Storage output:
# - eroxified2:api math.b64.encoder.output: List of substrings
#####################################################################

function eroxified2:math.b64/api/encoder/finish
data modify storage eroxified2:api math.b64.encoder.output set value []
data modify storage eroxified2:internal math.b64.encoder.macro set value {i:0}
execute store result storage eroxified2:internal math.b64.encoder.macro.i int 1 run scoreboard players get math.b64.encoder.split eroxified2.api
execute store result score #math.b64.encoder.i eroxified2.internal run data get storage eroxified2:internal math.b64.encoder.buffer.buffer
execute if score math.b64.encoder.split eroxified2.api matches 1.. if score #math.b64.encoder.i eroxified2.internal >= math.b64.encoder.split eroxified2.api run function eroxified2:math.b64/internal/encoder/split_output with storage eroxified2:internal math.b64.encoder.macro

execute if score #math.b64.encoder.i eroxified2.internal matches 1.. run data modify storage eroxified2:api math.b64.encoder.output append from storage eroxified2:internal math.b64.encoder.buffer.buffer