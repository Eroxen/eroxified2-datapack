#####################################################################
# math.b64/api/encoder/add_byte.mcfunction
# written by Eroxen
#
# Adds a byte to the encoder queue.
#
# Scoreboard input:
# - math.b64.encoder.byte eroxified2.api: Number between 0 and 255
#####################################################################

scoreboard players add #math.b64.encoder.bits eroxified2.internal 8
scoreboard players operation #math.b64.encoder.bit_data eroxified2.internal *= #math.const.2^8 eroxified2.internal
scoreboard players operation #math.b64.encoder.bit_data eroxified2.internal += math.b64.encoder.byte eroxified2.api
function eroxified2:math.b64/internal/encoder/pop_char
execute if score #math.b64.encoder.bits eroxified2.internal matches 6.. run function eroxified2:math.b64/internal/encoder/pop_char