#####################################################################
# math.b64/api/decoder/get_buffer_size.mcfunction
# written by Eroxen
#
# Gets an estimate upper bound of the size of the remaining buffer.
#
# Scoreboard output:
# - math.b64.decoder.buffer_size eroxified2.api: Number of remaining bytes
#####################################################################

scoreboard players operation math.b64.decoder.buffer_size eroxified2.api = #math.b64.decoder.buffer_size eroxified2.internal