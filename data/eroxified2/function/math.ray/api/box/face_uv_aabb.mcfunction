#####################################################################
# math.ray/api/box/face_uv_aabb.mcfunction
# written by Eroxen
#
# Calculates the uv on the face where the ray hit
# a known axis-aligned bounding box.
#
# Arguments:
# $(rotation): rotation of the ray
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
#   - math.ray.hit.u, .v: uv within the hit face
#
# Storage output:
# - eroxified2:api math.ray.hit.face: hit face as a word, e.g. "south"
#####################################################################

$function eroxified2:math.ray/api/box/intersect_aabb {from:$(from),to:$(to),origin:$(origin),rotation:$(rotation)}
execute if score math.ray.hit eroxified2.api matches 0 run return 0

# tellraw @a [{"score":{"name":"math.ray.hit.x","objective":"eroxified2.api"}},{"text":" "},{"score":{"name":"math.ray.hit.y","objective":"eroxified2.api"}},{"text":" "},{"score":{"name":"math.ray.hit.z","objective":"eroxified2.api"}}]
scoreboard players operation #math.ray.dx.sign eroxified2.internal *= #math.const.-1 eroxified2.internal
scoreboard players operation #math.ray.dy.sign eroxified2.internal *= #math.const.-1 eroxified2.internal
scoreboard players operation #math.ray.dz.sign eroxified2.internal *= #math.const.-1 eroxified2.internal

execute if score math.ray.hit.axis eroxified2.api matches 0 run function eroxified2:math.ray/internal/aabb/face_uv_x
execute if score math.ray.hit.axis eroxified2.api matches 1 run function eroxified2:math.ray/internal/aabb/face_uv_y
execute if score math.ray.hit.axis eroxified2.api matches 2 run function eroxified2:math.ray/internal/aabb/face_uv_z