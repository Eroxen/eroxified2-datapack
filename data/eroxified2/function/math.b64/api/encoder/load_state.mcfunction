#####################################################################
# math.b64/api/decoder/load_state.mcfunction
# written by Eroxen
#
# Restores the decoder from the stored state.
#
# storage input:
# - eroxified2:api math.b64.decoder.state: Decoder state
#####################################################################

function eroxified2:math.b64/api/decoder/init
data modify storage eroxified2:internal math.b64.encoder.buffer set from storage eroxified2:api math.b64.encoder.state.buffer
execute store result score #math.b64.encoder.bits eroxified2.internal run data get storage eroxified2:api math.b64.encoder.state.bits 1
execute store result score #math.b64.encoder.bit_data eroxified2.internal run data get storage eroxified2:api math.b64.encoder.state.bit_data 1
execute store result score #math.b64.encoder.batch_size eroxified2.internal run data get storage eroxified2:api math.b64.encoder.state.batch_size 1