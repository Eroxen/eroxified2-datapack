#####################################################################
# math.ray/api/box/intersect_rotated_box.mcfunction
# written by Eroxen
#
# Calculates the intersection between a ray starting at the
# position this function is run and a known rotated bounding box.
#
# Arguments:
# $(rotation): rotation of the ray
# $(box_x_rotation): x rotation of the bounding box, nonnegative number
# $(box_y_rotation): y rotation of the bounding box, nonnegative number
# $(origin): origin of the box, array of 3 doubles
# $(from): lower corner of box, offset from origin, array of 3 doubles
# $(to): upper corner of box, offset from origin, array of 3 doubles
#
# Scoreboard output:
# - eroxified2.api:
#   - math.ray.hit: 0 or 1, depending on whether the ray hit
#   - math.ray.hit.x, .y, .z: positions relative to the origin where the ray hit
#   - math.ray.hit.axis: 0 if the hit face is on the x axis, 1 if y, 2 if z
#   - math.ray.hit.face: 2 * hit_axis + (0 if low side, 1 if high side)
#
# Storage output:
# - eroxified2:api math.ray.hit.face: hit face as a word, e.g. "south"
#####################################################################

scoreboard players set math.ray.hit eroxified2.api 0 
scoreboard players set math.ray.hit.axis eroxified2.api -1
scoreboard players set math.ray.hit.face eroxified2.api -1
$data modify storage eroxified2:internal math.ray set value {box:{from:$(from),to:$(to),origin:$(origin),x_rotation:$(box_x_rotation),y_rotation:$(box_y_rotation)},rotation:$(rotation)}

execute store result storage eroxified2:internal math.ray.box.x_rotation float 0.001 run data get storage eroxified2:internal math.ray.box.x_rotation -1000
execute store result storage eroxified2:internal math.ray.box.y_rotation float 0.001 run data get storage eroxified2:internal math.ray.box.y_rotation -1000
execute summon marker run function eroxified2:math.ray/internal/rotated_box/start_ray with storage eroxified2:internal math.ray.box


execute store result score #math.ray.box.x.min eroxified2.internal run data get storage eroxified2:internal math.ray.box.from[0] 1000
execute store result score #math.ray.box.x.max eroxified2.internal run data get storage eroxified2:internal math.ray.box.to[0] 1000
execute store result score #math.ray.box.y.min eroxified2.internal run data get storage eroxified2:internal math.ray.box.from[1] 1000
execute store result score #math.ray.box.y.max eroxified2.internal run data get storage eroxified2:internal math.ray.box.to[1] 1000
execute store result score #math.ray.box.z.min eroxified2.internal run data get storage eroxified2:internal math.ray.box.from[2] 1000
execute store result score #math.ray.box.z.max eroxified2.internal run data get storage eroxified2:internal math.ray.box.to[2] 1000

execute if score #math.ray.dx.sign eroxified2.internal matches 1 run scoreboard players operation #math.ray.box.x eroxified2.internal = #math.ray.box.x.min eroxified2.internal
execute if score #math.ray.dx.sign eroxified2.internal matches -1 run scoreboard players operation #math.ray.box.x eroxified2.internal = #math.ray.box.x.max eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches 1 run scoreboard players operation #math.ray.box.y eroxified2.internal = #math.ray.box.y.min eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches -1 run scoreboard players operation #math.ray.box.y eroxified2.internal = #math.ray.box.y.max eroxified2.internal
execute if score #math.ray.dz.sign eroxified2.internal matches 1 run scoreboard players operation #math.ray.box.z eroxified2.internal = #math.ray.box.z.min eroxified2.internal
execute if score #math.ray.dz.sign eroxified2.internal matches -1 run scoreboard players operation #math.ray.box.z eroxified2.internal = #math.ray.box.z.max eroxified2.internal


### calculate intersection with x face ###
scoreboard players operation #math.ray.box.x.perp eroxified2.internal = #math.ray.box.x eroxified2.internal
scoreboard players operation #math.ray.box.x.perp eroxified2.internal += #math.ray.pos1.x eroxified2.internal
scoreboard players operation #math.ray.box.x.perp eroxified2.internal *= #math.const.-1 eroxified2.internal

scoreboard players operation #math.ray.box.x.dist eroxified2.internal = #math.ray.box.x.perp eroxified2.internal
scoreboard players operation #math.ray.box.x.dist eroxified2.internal *= #math.const.-1000 eroxified2.internal
scoreboard players operation #math.ray.box.x.dist eroxified2.internal /= #math.ray.dx eroxified2.internal

scoreboard players operation #math.ray.box.x.y eroxified2.internal = #math.ray.box.x.perp eroxified2.internal
scoreboard players operation #math.ray.box.x.y eroxified2.internal *= #math.ray.dy eroxified2.internal
scoreboard players operation #math.ray.box.x.y eroxified2.internal /= #math.ray.dx eroxified2.internal
scoreboard players operation #math.ray.box.x.y eroxified2.internal += #math.ray.pos1.y eroxified2.internal

scoreboard players operation #math.ray.box.x.z eroxified2.internal = #math.ray.box.x.perp eroxified2.internal
scoreboard players operation #math.ray.box.x.z eroxified2.internal *= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.x.z eroxified2.internal /= #math.ray.dx eroxified2.internal
scoreboard players operation #math.ray.box.x.z eroxified2.internal += #math.ray.pos1.z eroxified2.internal

execute if score #math.ray.box.x.dist eroxified2.internal matches 0.. if score #math.ray.box.x.y eroxified2.internal >= #math.ray.box.y.min eroxified2.internal if score #math.ray.box.x.y eroxified2.internal <= #math.ray.box.y.max eroxified2.internal if score #math.ray.box.x.z eroxified2.internal >= #math.ray.box.z.min eroxified2.internal if score #math.ray.box.x.z eroxified2.internal <= #math.ray.box.z.max eroxified2.internal run function eroxified2:math.ray/internal/aabb/hit_x
execute if score math.ray.hit eroxified2.api matches 1 run return 1


### calculate intersection with y face ###
scoreboard players operation #math.ray.box.y.perp eroxified2.internal = #math.ray.box.y eroxified2.internal
scoreboard players operation #math.ray.box.y.perp eroxified2.internal += #math.ray.pos1.y eroxified2.internal
scoreboard players operation #math.ray.box.y.perp eroxified2.internal *= #math.const.-1 eroxified2.internal

scoreboard players operation #math.ray.box.y.dist eroxified2.internal = #math.ray.box.y.perp eroxified2.internal
scoreboard players operation #math.ray.box.y.dist eroxified2.internal *= #math.const.-1000 eroxified2.internal
scoreboard players operation #math.ray.box.y.dist eroxified2.internal /= #math.ray.dy eroxified2.internal

scoreboard players operation #math.ray.box.y.x eroxified2.internal = #math.ray.box.y.perp eroxified2.internal
scoreboard players operation #math.ray.box.y.x eroxified2.internal *= #math.ray.dx eroxified2.internal
scoreboard players operation #math.ray.box.y.x eroxified2.internal /= #math.ray.dy eroxified2.internal
scoreboard players operation #math.ray.box.y.x eroxified2.internal += #math.ray.pos1.x eroxified2.internal

scoreboard players operation #math.ray.box.y.z eroxified2.internal = #math.ray.box.y.perp eroxified2.internal
scoreboard players operation #math.ray.box.y.z eroxified2.internal *= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.y.z eroxified2.internal /= #math.ray.dy eroxified2.internal
scoreboard players operation #math.ray.box.y.z eroxified2.internal += #math.ray.pos1.z eroxified2.internal

execute if score #math.ray.box.y.dist eroxified2.internal matches 0.. if score #math.ray.box.y.x eroxified2.internal >= #math.ray.box.x.min eroxified2.internal if score #math.ray.box.y.x eroxified2.internal <= #math.ray.box.x.max eroxified2.internal if score #math.ray.box.y.z eroxified2.internal >= #math.ray.box.z.min eroxified2.internal if score #math.ray.box.y.z eroxified2.internal <= #math.ray.box.z.max eroxified2.internal run function eroxified2:math.ray/internal/aabb/hit_y
execute if score math.ray.hit eroxified2.api matches 1 run return 1


### calculate intersection with z face ###
scoreboard players operation #math.ray.box.z.perp eroxified2.internal = #math.ray.box.z eroxified2.internal
scoreboard players operation #math.ray.box.z.perp eroxified2.internal += #math.ray.pos1.z eroxified2.internal
scoreboard players operation #math.ray.box.z.perp eroxified2.internal *= #math.const.-1 eroxified2.internal


scoreboard players operation #math.ray.box.z.dist eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.dist eroxified2.internal *= #math.const.-1000 eroxified2.internal
scoreboard players operation #math.ray.box.z.dist eroxified2.internal /= #math.ray.dz eroxified2.internal

scoreboard players operation #math.ray.box.z.x eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal *= #math.ray.dx eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal /= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal += #math.ray.pos1.x eroxified2.internal

scoreboard players operation #math.ray.box.z.y eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal *= #math.ray.dy eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal /= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal += #math.ray.pos1.y eroxified2.internal

execute if score #math.ray.box.z.dist eroxified2.internal matches 0.. if score #math.ray.box.z.x eroxified2.internal >= #math.ray.box.x.min eroxified2.internal if score #math.ray.box.z.x eroxified2.internal <= #math.ray.box.x.max eroxified2.internal if score #math.ray.box.z.y eroxified2.internal >= #math.ray.box.y.min eroxified2.internal if score #math.ray.box.z.y eroxified2.internal <= #math.ray.box.y.max eroxified2.internal run function eroxified2:math.ray/internal/aabb/hit_z
execute if score math.ray.hit eroxified2.api matches 1 run return 1
