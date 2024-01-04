#####################################################################
# entity/api/player/get_name.mcfunction
# written by Eroxen
#
# Gets the executing player's name.
#
# Storage output:
# - eroxified2:api entity.player.get_name: name
#####################################################################

function eroxified2:entity/internal/confirm_fixed_display
loot replace entity 7bb13cbd-55c0-e281-ceae-9f7bd756bd0a container.0 loot eroxified2:entity/player/get_name
data modify storage eroxified2:api entity.player.get_name set from entity 7bb13cbd-55c0-e281-ceae-9f7bd756bd0a item.tag.SkullOwner.Name