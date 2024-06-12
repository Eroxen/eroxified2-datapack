#####################################################################
# item/api/refresh_mainhand.mcfunction
# written by Eroxen
#
# Sets the player's mainhand item count to the count it is right now.
# Used after item_used advancements, which trigger before the item is
# decremented, to prevent the item from being used up.
#####################################################################
execute store result score #item.count.original eroxified2.internal run data get entity @s SelectedItem.Count 1
scoreboard players operation #item.count eroxified2.internal = #item.count.original eroxified2.internal
scoreboard players remove #item.count eroxified2.internal 1
execute if score #item.count eroxified2.internal matches 0 run scoreboard players set #item.count eroxified2.internal 1
item modify entity @s weapon.mainhand eroxified2:item/count
scoreboard players operation #item.count eroxified2.internal = #item.count.original eroxified2.internal
item modify entity @s weapon.mainhand eroxified2:item/count