#####################################################################
# phead/api/run_positioned.mcfunction
# written by Eroxen
#
# Runs a command positioned at the centre and in the direction of a Player Head block.
#
# Macro arguments:
# - command: command to run
#
# Storage output:
# - eroxified2:api phead.positioning:
#   - offset: offset from corner of block to centre of head, e.g. "~0.5 ~0.25 ~0.5"
#   - rotation: rotation the head is facing, e.g. [0f,0f]
#   - x_normal: rotation's x direction, e.g. 0f
#   - z_normal: rotation's z direction, e.g. 1f
#####################################################################

function eroxified2:phead/api/get_positioning
data modify storage eroxified2:internal temp set from storage eroxified2:api phead.positioning
$data modify storage eroxified2:internal temp.command set value "$(command)"
data modify storage eroxified2:internal temp.y_rotation set from storage eroxified2:api phead.positioning.rotation[0]
execute if predicate eroxified2:phead/head run function eroxified2:phead/internal/positioning/run_positioned with storage eroxified2:internal temp