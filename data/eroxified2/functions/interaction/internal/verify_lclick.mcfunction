scoreboard players set #interaction.verified eroxified2.internal 0

execute store result score #interaction.click_time eroxified2.internal run data get entity @s attack.timestamp 1
scoreboard players operation #interaction.click_time eroxified2.internal -= #interaction.current_time eroxified2.internal

data modify storage eroxified2:internal temp set from storage eroxified2:internal interaction.player_UUID
execute store success score #different eroxified2.internal run data modify storage eroxified2:internal temp set from entity @s attack.player

execute if score #interaction.click_time eroxified2.internal matches -2..0 if score #different eroxified2.internal matches 0 run scoreboard players set #interaction.verified eroxified2.internal 1
execute if score #interaction.click_time eroxified2.internal matches ..-3 run data remove entity @s attack

execute if score #interaction.verified eroxified2.internal matches 1 if score #interaction.responder eroxified2.internal matches 0 run tag @s add eroxified2.interaction.responder
execute if score #interaction.verified eroxified2.internal matches 1 run scoreboard players set #interaction.responder eroxified2.internal 1