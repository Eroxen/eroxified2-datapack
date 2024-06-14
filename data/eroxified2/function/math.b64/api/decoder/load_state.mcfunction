#####################################################################
# math.b64/api/encoder/load_state.mcfunction
# written by Eroxen
#
# Restores the encoder from the stored state.
#
# storage input:
# - eroxified2:api math.b64.encoder.state: Encoder state
#####################################################################

function eroxified2:math.b64/api/encoder/init
data modify storage eroxified2:internal math.b64.decoder.buffer set from storage eroxified2:api math.b64.decoder.state.buffer
execute store result score #math.b64.decoder.bits eroxified2.internal run data get storage eroxified2:api math.b64.decoder.state.bits 1
execute store result score #math.b64.decoder.bit_data eroxified2.internal run data get storage eroxified2:api math.b64.decoder.state.bit_data 1
execute store result score #math.b64.decoder.buffer_size eroxified2.internal run data get storage eroxified2:api math.b64.decoder.state.buffer_size 1