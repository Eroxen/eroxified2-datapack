#####################################################################
# item/api/swap_hands.mcfunction
# written by Eroxen
#
# Swaps the items in the executing player's main and offhand.
#####################################################################

execute if items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run return run function eroxified2:item/internal/swap_hands/mto
execute if items entity @s weapon.offhand * unless items entity @s weapon.mainhand * run return run function eroxified2:item/internal/swap_hands/otm

function eroxified2:item/internal/confirm_fixed_display
item replace entity c42ef04c-96e3-8584-c73e-e609c08979e4 contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity c42ef04c-96e3-8584-c73e-e609c08979e4 contents