#####################################################################
# entity/api/player/pos_to_rotation.mcfunction
# written by Eroxen
#
# Gets the rotation that an entity would have when
# looking at the specified position from [0, 0, 0]
#
# Storage input:
# - eroxified2:api entity.pos: array<double>[3]
#
# Storage output:
# - eroxified2:api entity.rotation: array<float>[2]
#####################################################################

function eroxified2:entity/internal/confirm_fixed_display
data modify storage eroxified2:internal temp set value {}
data modify storage eroxified2:internal temp.x set from storage eroxified2:api entity.pos[0]
data modify storage eroxified2:internal temp.y set from storage eroxified2:api entity.pos[1]
data modify storage eroxified2:internal temp.z set from storage eroxified2:api entity.pos[2]
execute as 7bb13cbd-55c0-e281-ceae-9f7bd756bd0a at @s run function eroxified2:entity/internal/trig/pos_to_rotation with storage eroxified2:internal temp