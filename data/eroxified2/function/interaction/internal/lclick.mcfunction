advancement revoke @s only eroxified2:interaction/lclick

execute if score interaction.tick eroxified2.config matches 1 run return 0

execute at @s anchored eyes positioned ^ ^ ^4 run function eroxified2:interaction/internal/player_lclick_search