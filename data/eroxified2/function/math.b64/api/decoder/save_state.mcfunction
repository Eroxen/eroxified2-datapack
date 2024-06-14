#####################################################################
# math.b64/api/decoder/save_state.mcfunction
# written by Eroxen
#
# Saves the decoder state to NBT so that it can be continued later.
#
# storage output:
# - eroxified2:api math.b64.decoder.state: Decoder state
#####################################################################

data modify storage eroxified2:api math.b64.decoder.state set value {}
data modify storage eroxified2:api math.b64.decoder.state.buffer set from storage eroxified2:internal math.b64.decoder.buffer
execute store result storage eroxified2:api math.b64.decoder.state.bits int 1 run scoreboard players get #math.b64.decoder.bits eroxified2.internal
execute store result storage eroxified2:api math.b64.decoder.state.bit_data int 1 run scoreboard players get #math.b64.decoder.bit_data eroxified2.internal
execute store result storage eroxified2:api math.b64.decoder.state.buffer_size int 1 run scoreboard players get #math.b64.decoder.buffer_size eroxified2.internal