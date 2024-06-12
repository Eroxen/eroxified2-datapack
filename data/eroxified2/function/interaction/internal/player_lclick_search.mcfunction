data modify storage eroxified2:internal interaction.player_UUID set from entity @s UUID
scoreboard players set #interaction.responder eroxified2.internal 0
execute store result score #interaction.current_time eroxified2.internal run time query gametime

tag @e[type=interaction,tag=eroxified2.interaction.responder,distance=..8] remove eroxified2.interaction.responder
execute as @e[type=interaction,tag=eroxified2.interaction,predicate=eroxified2:interaction/lclicked,distance=..8] at @s run function eroxified2:interaction/internal/verify_lclick

execute if score #interaction.responder eroxified2.internal matches 0 run return 0

execute as @e[type=interaction,tag=eroxified2.interaction.responder,distance=..8,limit=1] at @s run function eroxified2:interaction/internal/get_lclicked