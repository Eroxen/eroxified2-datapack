#####################################################################
# math.b64/api/encoder/init.mcfunction
# written by Eroxen
#
# Initialises the base64 encoder with an empty output.
#####################################################################

data modify storage eroxified2:internal math.b64.encoder set value {buffer:{buffer:""},macro:{i:0,batchi:0}}

scoreboard players set #math.b64.encoder.bits eroxified2.internal 0
scoreboard players set #math.b64.encoder.bit_data eroxified2.internal 0
scoreboard players set #math.b64.encoder.batch_size eroxified2.internal 0