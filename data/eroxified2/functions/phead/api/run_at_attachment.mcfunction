#####################################################################
# phead/api/run_at_attachment.mcfunction
# written by Eroxen
#
# Runs a command at the centre of the block the player
# head is attached to, facing the player head.
#
# Storage input:
# - eroxified2:api phead.run_at_attachement: (string) command to run
#####################################################################

execute if block ~ ~ ~ minecraft:player_head align xyz positioned ~0.5 ~-0.5 ~0.5 facing ~ ~1 ~ run function eroxified2:phead/internal/run_at_attachment with storage eroxified2:api phead
execute if block ~ ~ ~ minecraft:player_wall_head[facing=north] align xyz positioned ~0.5 ~0.5 ~1.5 facing ~ ~ ~-1 run function eroxified2:phead/internal/run_at_attachment with storage eroxified2:api phead
execute if block ~ ~ ~ minecraft:player_wall_head[facing=south] align xyz positioned ~0.5 ~0.5 ~-0.5 facing ~ ~ ~1 run function eroxified2:phead/internal/run_at_attachment with storage eroxified2:api phead
execute if block ~ ~ ~ minecraft:player_wall_head[facing=west] align xyz positioned ~1.5 ~0.5 ~0.5 facing ~-1 ~ ~ run function eroxified2:phead/internal/run_at_attachment with storage eroxified2:api phead
execute if block ~ ~ ~ minecraft:player_wall_head[facing=east] align xyz positioned ~-0.5 ~0.5 ~0.5 facing ~1 ~ ~ run function eroxified2:phead/internal/run_at_attachment with storage eroxified2:api phead