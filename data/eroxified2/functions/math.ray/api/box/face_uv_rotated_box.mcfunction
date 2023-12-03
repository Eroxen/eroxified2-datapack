#####################################################################
# math.ray/api/box/face_uv_rotated_box.mcfunction
# written by Eroxen
#
# Calculates the uv on the face where the ray hit
# a known rotated bounding box.
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
#   - math.ray.hit.u, .v: uv within the hit face
#
# Storage output:
# - eroxified2:api math.ray.hit.face: hit face as a word, e.g. "south"
#####################################################################

$function eroxified2:math.ray/api/box/intersect_rotated_box {from:$(from),to:$(to),origin:$(origin),rotation:$(rotation),box_x_rotation:$(box_x_rotation),box_y_rotation:$(box_y_rotation)}
execute if score math.ray.hit eroxified2.api matches 0 run return 0

execute if score math.ray.hit.axis eroxified2.api matches 0 run function eroxified2:math.ray/internal/aabb/face_uv_x
execute if score math.ray.hit.axis eroxified2.api matches 1 run function eroxified2:math.ray/internal/aabb/face_uv_y
execute if score math.ray.hit.axis eroxified2.api matches 2 run function eroxified2:math.ray/internal/aabb/face_uv_z