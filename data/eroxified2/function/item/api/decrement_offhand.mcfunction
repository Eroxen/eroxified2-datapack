#####################################################################
# item/api/decrement_offhand.mcfunction
# written by Eroxen
#
# Removes one item from the itemstack in the executing player's offhand.
#####################################################################

execute store result score #item.count eroxified2.internal run data get entity @s Inventory[{Slot:-106b}].count 1
scoreboard players remove #item.count eroxified2.internal 1
item modify entity @s weapon.offhand eroxified2:item/count