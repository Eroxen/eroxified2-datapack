#####################################################################
# math.b64/api/decoder/init.mcfunction
# written by Eroxen
#
# Initialises the base64 decoder.
#
# storage input:
# - eroxified2:api math.b64.decoder.input: (list<string>) list of base-64 strings
#####################################################################

data modify storage eroxified2:internal math.b64.decoder set value {buffer:{string:"",list:[]},macro:{c:""}}
data modify storage eroxified2:internal math.b64.decoder.buffer.list set from storage eroxified2:api math.b64.decoder.input
scoreboard players set #math.b64.decoder.buffer_size eroxified2.internal 0
function eroxified2:math.b64/internal/decoder/count_buffer_size
data modify storage eroxified2:internal math.b64.decoder set value {buffer:{string:"",list:[]},macro:{c:""}}
data modify storage eroxified2:internal math.b64.decoder.buffer.list set from storage eroxified2:api math.b64.decoder.input

scoreboard players set #math.b64.decoder.bits eroxified2.internal 0
scoreboard players set #math.b64.decoder.bit_data eroxified2.internal 0