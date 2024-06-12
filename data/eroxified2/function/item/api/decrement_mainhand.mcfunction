#####################################################################
# item/api/decrement_mainhand.mcfunction
# written by Eroxen
#
# Removes one item from the itemstack in the executing player's mainhand.
#####################################################################

execute store result score #item.count eroxified2.internal run data get entity @s SelectedItem.count 1
scoreboard players remove #item.count eroxified2.internal 1
item modify entity @s weapon.mainhand eroxified2:item/count