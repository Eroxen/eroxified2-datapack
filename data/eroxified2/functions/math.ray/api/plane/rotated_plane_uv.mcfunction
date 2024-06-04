#####################################################################
# math.ray/api/plane/rotated_plane_uv.mcfunction
# written by Eroxen
#
# Calculates the uv on the plane where the specified ray intersects.
#
# Arguments:
# $(rotation): rotation of the ray
# $(origin): origin of the plane, array of 3 doubles
# $(plane_x_rotation): x rotation of the plane, float
# $(plane_y_rotation): y rotation of the plane, float
# $(offset): offset of the plane from the origin in the plane_rotation direction in blocks
#
# Scoreboard output:
# - eroxified2.api:
#   - math.ray.origin_occupancy: 0 or 1, whether the ray originated inside the surface
#   - math.ray.hit: 0 or 1, depending on whether the ray hit
#   - math.ray.hit.u, .v: uv within the hit face
#####################################################################


scoreboard players set math.ray.hit eroxified2.api 0
$data modify storage eroxified2:internal math.ray set value {box:{origin:$(origin),x_rotation:$(plane_x_rotation),y_rotation:$(plane_y_rotation),offset:$(offset)},rotation:$(rotation)}

execute store result storage eroxified2:internal math.ray.box.x_rotation float 0.001 run data get storage eroxified2:internal math.ray.box.x_rotation -1000
execute store result storage eroxified2:internal math.ray.box.y_rotation float 0.001 run data get storage eroxified2:internal math.ray.box.y_rotation -1000
execute summon marker run function eroxified2:math.ray/internal/rotated_box/start_ray with storage eroxified2:internal math.ray.box

### calculate intersection with z face ###
execute store result score #math.ray.box.z.perp eroxified2.internal run data get storage eroxified2:internal math.ray.box.offset -1000
scoreboard players operation #math.ray.box.z.perp eroxified2.internal += #math.ray.pos1.z eroxified2.internal
scoreboard players operation #math.ray.box.z.dist eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.dist eroxified2.internal *= #math.const.1000 eroxified2.internal
scoreboard players operation #math.ray.box.z.dist eroxified2.internal /= #math.ray.dz eroxified2.internal

scoreboard players operation #math.ray.box.z.x eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal *= #math.ray.dx eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal *= #math.const.-1 eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal /= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.z.x eroxified2.internal += #math.ray.pos1.x eroxified2.internal

scoreboard players operation #math.ray.box.z.y eroxified2.internal = #math.ray.box.z.perp eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal *= #math.ray.dy eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal /= #math.ray.dz eroxified2.internal
scoreboard players operation #math.ray.box.z.y eroxified2.internal += #math.ray.pos1.y eroxified2.internal

execute if score #math.ray.box.z.dist eroxified2.internal matches 0.. run scoreboard players set math.ray.hit eroxified2.api 1
scoreboard players operation math.ray.hit.u eroxified2.api = #math.ray.box.z.x eroxified2.internal
scoreboard players operation math.ray.hit.v eroxified2.api = #math.ray.box.z.y eroxified2.internal

execute store success score math.ray.origin_occupancy eroxified2.api if score #math.ray.box.z.perp eroxified2.internal matches ..-1