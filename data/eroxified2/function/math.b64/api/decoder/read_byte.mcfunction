#####################################################################
# math.b64/api/decoder/read_byte.mcfunction
# written by Eroxen
#
# Reads a byte from the decoder queue.
#
# Scoreboard output:
# - math.b64.decoder.byte eroxified2.api: Number between 0 and 255
# - math.b64.decoder.eof eroxified2.api: 1 if the queue is empty, 0 otherwise
#####################################################################

scoreboard players set math.b64.decoder.eof eroxified2.api 0
function eroxified2:math.b64/internal/decoder/next_char
#tellraw @a ["",{"score":{"name":"math.b64.decoder.eof","objective": "eroxified2.api"}},{"text":" "},{"score":{"name":"math.b64.decoder.byte","objective": "eroxified2.api"}}]