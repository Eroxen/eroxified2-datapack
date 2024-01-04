#####################################################################
# math.b64/api/encoder/save_state.mcfunction
# written by Eroxen
#
# Saves the encoder state to NBT so that it can be continued later.
#
# storage output:
# - eroxified2:api math.b64.encoder.state: Encoder state
#####################################################################

data modify storage eroxified2:api math.b64.encoder.state set value {}
data modify storage eroxified2:api math.b64.encoder.state.buffer set from storage eroxified2:internal math.b64.encoder.buffer
execute store result storage eroxified2:api math.b64.encoder.state.bits int 1 run scoreboard players get #math.b64.encoder.bits eroxified2.internal
execute store result storage eroxified2:api math.b64.encoder.state.bit_data int 1 run scoreboard players get #math.b64.encoder.bit_data eroxified2.internal
execute store result storage eroxified2:api math.b64.encoder.state.batch_size int 1 run scoreboard players get #math.b64.encoder.batch_size eroxified2.internal