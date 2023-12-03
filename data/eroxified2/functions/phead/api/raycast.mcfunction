#####################################################################
# phead/api/raycast.mcfunction
# written by Eroxen
#
# Gets the clicked position on a player head.
# calls eroxified2:math.ray/api/box/face_uv_rotated_box.
#
# Called as the raycasting entity, at the player head.
#
# Scoreboard output:
# - eroxified2.api:
#   - math.ray.hit: 0 or 1, depending on whether the ray hit
#   - math.ray.hit.x, .y, .z: positions relative to the origin where the ray hit
#   - math.ray.hit.axis: 0 if the hit face is on the x axis, 1 if y, 2 if z
#   - math.ray.hit.face: 2 * hit_axis + (0 if low side, 1 if high side)
#   - math.ray.hit.u, .v: uv within the hit face
#
# Storage output:
# - eroxified2:api math.ray.hit.face: hit face as a word, e.g. "north" for the front face
#####################################################################

execute if predicate eroxified2:phead/rotation/0 run data modify storage eroxified2:internal macro set value {box_x_rotation:0.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/22_ run data modify storage eroxified2:internal macro set value {box_x_rotation:22.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/45 run data modify storage eroxified2:internal macro set value {box_x_rotation:45.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/67_ run data modify storage eroxified2:internal macro set value {box_x_rotation:67.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/90 run data modify storage eroxified2:internal macro set value {box_x_rotation:90.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/112_ run data modify storage eroxified2:internal macro set value {box_x_rotation:112.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/135 run data modify storage eroxified2:internal macro set value {box_x_rotation:135.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/157_ run data modify storage eroxified2:internal macro set value {box_x_rotation:157.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/180 run data modify storage eroxified2:internal macro set value {box_x_rotation:180.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/202_ run data modify storage eroxified2:internal macro set value {box_x_rotation:202.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/225 run data modify storage eroxified2:internal macro set value {box_x_rotation:225.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/247_ run data modify storage eroxified2:internal macro set value {box_x_rotation:247.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/270 run data modify storage eroxified2:internal macro set value {box_x_rotation:270.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/292_ run data modify storage eroxified2:internal macro set value {box_x_rotation:292.5d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/315 run data modify storage eroxified2:internal macro set value {box_x_rotation:315.0d,box_y_rotation:0d}
execute if predicate eroxified2:phead/rotation/337_ run data modify storage eroxified2:internal macro set value {box_x_rotation:337.5d,box_y_rotation:0d}
data merge storage eroxified2:internal {macro:{origin:[0d,0d,0d],from:[-0.25d,-0.25d,-0.25d],to:[0.25d,0.25d,0.25d]}}
execute store result score #temp.x eroxified2.internal run data get block ~ ~ ~ x 1000
execute store result score #temp.y eroxified2.internal run data get block ~ ~ ~ y 1000
execute store result score #temp.z eroxified2.internal run data get block ~ ~ ~ z 1000
scoreboard players add #temp.x eroxified2.internal 500
scoreboard players add #temp.y eroxified2.internal 500
scoreboard players add #temp.z eroxified2.internal 500
execute if predicate eroxified2:phead/offset/c run scoreboard players remove #temp.y eroxified2.internal 250
execute if predicate eroxified2:phead/offset/nx run scoreboard players remove #temp.x eroxified2.internal 250
execute if predicate eroxified2:phead/offset/px run scoreboard players add #temp.x eroxified2.internal 250
execute if predicate eroxified2:phead/offset/nz run scoreboard players remove #temp.z eroxified2.internal 250
execute if predicate eroxified2:phead/offset/pz run scoreboard players add #temp.z eroxified2.internal 250
execute store result storage eroxified2:internal macro.origin[0] double 0.001 run scoreboard players get #temp.x eroxified2.internal
execute store result storage eroxified2:internal macro.origin[1] double 0.001 run scoreboard players get #temp.y eroxified2.internal
execute store result storage eroxified2:internal macro.origin[2] double 0.001 run scoreboard players get #temp.z eroxified2.internal
data modify storage eroxified2:internal macro.rotation set from entity @s Rotation

execute if predicate eroxified2:phead/head at @s anchored eyes positioned ^ ^ ^ run function eroxified2:math.ray/api/box/face_uv_rotated_box with storage eroxified2:internal macro