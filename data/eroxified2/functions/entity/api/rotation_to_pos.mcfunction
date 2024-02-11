#####################################################################
# entity/api/player/rotation_to_pos.mcfunction
# written by Eroxen
#
# Gets the position that an entity would have when
# moving the specified distance in the specified
# direction from [0, 0, 0]
#
# Storage input:
# - eroxified2:api entity.rotation_to_pos.rotation: array<float>[2]
# - eroxified2:api entity.rotation_to_pos.distance: float
#
# Storage output:
# - eroxified2:api entity.pos: array<double>[3]
#####################################################################

function eroxified2:entity/internal/confirm_fixed_display
data modify storage eroxified2:internal temp set value {}
data modify storage eroxified2:internal temp.x set from storage eroxified2:api entity.rotation_to_pos.rotation[0]
data modify storage eroxified2:internal temp.y set from storage eroxified2:api entity.rotation_to_pos.rotation[1]
data modify storage eroxified2:internal temp.d set from storage eroxified2:api entity.rotation_to_pos.distance
execute as 7bb13cbd-55c0-e281-ceae-9f7bd756bd0a at @s run function eroxified2:entity/internal/trig/rotation_to_pos with storage eroxified2:internal temp