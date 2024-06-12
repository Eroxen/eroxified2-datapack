#####################################################################
# phead/api/get_positioning.mcfunction
# written by Eroxen
#
# Looks at a Player Head block at the execution location and
# computes the offset and rotation of the head.
#
# Storage output:
# - eroxified2:api phead.positioning:
#   - offset: offset from corner of block to centre of head, e.g. "~0.5 ~0.25 ~0.5"
#   - rotation: rotation the head is facing, e.g. [0f,0f]
#   - x_normal: rotation's x direction, e.g. 0f
#   - z_normal: rotation's z direction, e.g. 1f
#####################################################################

execute if predicate eroxified2:phead/rotation/0 run data modify storage eroxified2:api phead.positioning set value {rotation:[0.0f,0.0f],x_normal:-0.0000f,z_normal:1.0000f}
execute if predicate eroxified2:phead/rotation/22_ run data modify storage eroxified2:api phead.positioning set value {rotation:[22.5f,0.0f],x_normal:-0.3827f,z_normal:0.9239f}
execute if predicate eroxified2:phead/rotation/45 run data modify storage eroxified2:api phead.positioning set value {rotation:[45.0f,0.0f],x_normal:-0.7071f,z_normal:0.7071f}
execute if predicate eroxified2:phead/rotation/67_ run data modify storage eroxified2:api phead.positioning set value {rotation:[67.5f,0.0f],x_normal:-0.9239f,z_normal:0.3827f}
execute if predicate eroxified2:phead/rotation/90 run data modify storage eroxified2:api phead.positioning set value {rotation:[90.0f,0.0f],x_normal:-1.0000f,z_normal:0.0000f}
execute if predicate eroxified2:phead/rotation/112_ run data modify storage eroxified2:api phead.positioning set value {rotation:[112.5f,0.0f],x_normal:-0.9239f,z_normal:-0.3827f}
execute if predicate eroxified2:phead/rotation/135 run data modify storage eroxified2:api phead.positioning set value {rotation:[135.0f,0.0f],x_normal:-0.7071f,z_normal:-0.7071f}
execute if predicate eroxified2:phead/rotation/157_ run data modify storage eroxified2:api phead.positioning set value {rotation:[157.5f,0.0f],x_normal:-0.3827f,z_normal:-0.9239f}
execute if predicate eroxified2:phead/rotation/180 run data modify storage eroxified2:api phead.positioning set value {rotation:[180.0f,0.0f],x_normal:-0.0000f,z_normal:-1.0000f}
execute if predicate eroxified2:phead/rotation/202_ run data modify storage eroxified2:api phead.positioning set value {rotation:[-157.5f,0.0f],x_normal:0.3827f,z_normal:-0.9239f}
execute if predicate eroxified2:phead/rotation/225 run data modify storage eroxified2:api phead.positioning set value {rotation:[-135.0f,0.0f],x_normal:0.7071f,z_normal:-0.7071f}
execute if predicate eroxified2:phead/rotation/247_ run data modify storage eroxified2:api phead.positioning set value {rotation:[-112.5f,0.0f],x_normal:0.9239f,z_normal:-0.3827f}
execute if predicate eroxified2:phead/rotation/270 run data modify storage eroxified2:api phead.positioning set value {rotation:[-90.0f,0.0f],x_normal:1.0000f,z_normal:0.0000f}
execute if predicate eroxified2:phead/rotation/292_ run data modify storage eroxified2:api phead.positioning set value {rotation:[-67.5f,0.0f],x_normal:0.9239f,z_normal:0.3827f}
execute if predicate eroxified2:phead/rotation/315 run data modify storage eroxified2:api phead.positioning set value {rotation:[-45.0f,0.0f],x_normal:0.7071f,z_normal:0.7071f}
execute if predicate eroxified2:phead/rotation/337_ run data modify storage eroxified2:api phead.positioning set value {rotation:[-22.5f,0.0f],x_normal:0.3827f,z_normal:0.9239f}
execute if predicate eroxified2:phead/offset/c run data modify storage eroxified2:api phead.positioning.offset set value "~0.5 ~0.25 ~0.5"
execute if predicate eroxified2:phead/offset/nx run data modify storage eroxified2:api phead.positioning.offset set value "~0.25 ~0.5 ~0.5"
execute if predicate eroxified2:phead/offset/px run data modify storage eroxified2:api phead.positioning.offset set value "~0.75 ~0.5 ~0.5"
execute if predicate eroxified2:phead/offset/nz run data modify storage eroxified2:api phead.positioning.offset set value "~0.5 ~0.5 ~0.25"
execute if predicate eroxified2:phead/offset/pz run data modify storage eroxified2:api phead.positioning.offset set value "~0.5 ~0.5 ~0.75"
execute unless predicate eroxified2:phead/head run data remove storage eroxified2:api phead.positioning