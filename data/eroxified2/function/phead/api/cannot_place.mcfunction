#####################################################################
# phead/api/cannot_place.mcfunction
# written by Eroxen
#
# Ran when a player head gets scanned by the #eroxified2:phead/scan
# function tag, but placement is invalid.
#
# Breaks the player head and returns the item to the player's
# inventory.
#####################################################################

setblock ~ ~ ~ air

execute if entity @s[gamemode=creative] run return 0

execute store result score #item.count eroxified2.internal run data get storage eroxified2:internal phead.context_internal.itemstack_used.Count
scoreboard players remove #item.count eroxified2.internal 1
execute if score #item.count eroxified2.internal matches 0 run scoreboard players set #item.count eroxified2.internal 2

execute unless data storage eroxified2:internal phead.context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.mainhand eroxified2:item/count
execute if data storage eroxified2:internal phead.context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.offhand eroxified2:item/count

execute store result score #item.count eroxified2.internal run data get storage eroxified2:internal phead.context_internal.itemstack_used.Count

execute unless data storage eroxified2:internal phead.context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.mainhand eroxified2:item/count
execute if data storage eroxified2:internal phead.context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.offhand eroxified2:item/count