# run with execute summon marker
# expects: storage eroxified2:internal math.ray.rotation
# macro arguments: x_rotation, y_rotation

data modify storage eroxified2:internal math.ray.pos1 set from entity @s Pos
data modify entity @s Rotation set from storage eroxified2:internal math.ray.rotation
$execute rotated as @s rotated ~-$(x_rotation) ~-$(y_rotation) positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage eroxified2:internal math.ray.delta set from entity @s Pos

execute store result score #math.ray.dx eroxified2.internal run data get storage eroxified2:internal math.ray.delta[0] -1000
execute store result score #math.ray.pos1.x eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[0] 1000
execute store result score #math.ray.dy eroxified2.internal run data get storage eroxified2:internal math.ray.delta[1] 1000
execute store result score #math.ray.pos1.y eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[1] 1000
execute store result score #math.ray.dz eroxified2.internal run data get storage eroxified2:internal math.ray.delta[2] -1000
execute store result score #math.ray.pos1.z eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[2] 1000

execute store success score #math.ray.dx.sign eroxified2.internal if score #math.ray.dx eroxified2.internal matches 0..
execute if score #math.ray.dx.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dx.sign eroxified2.internal -1
execute store success score #math.ray.dy.sign eroxified2.internal if score #math.ray.dy eroxified2.internal matches 0..
execute if score #math.ray.dy.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dy.sign eroxified2.internal -1
execute store success score #math.ray.dz.sign eroxified2.internal if score #math.ray.dz eroxified2.internal matches 0..
execute if score #math.ray.dz.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dz.sign eroxified2.internal -1

execute store result score #math.ray.box.origin.x eroxified2.internal run data get storage eroxified2:internal math.ray.box.origin[0] 1000
execute store result score #math.ray.box.origin.y eroxified2.internal run data get storage eroxified2:internal math.ray.box.origin[1] 1000
execute store result score #math.ray.box.origin.z eroxified2.internal run data get storage eroxified2:internal math.ray.box.origin[2] 1000

scoreboard players operation #math.ray.pos1.x eroxified2.internal -= #math.ray.box.origin.x eroxified2.internal
scoreboard players operation #math.ray.pos1.y eroxified2.internal -= #math.ray.box.origin.y eroxified2.internal
scoreboard players operation #math.ray.pos1.z eroxified2.internal -= #math.ray.box.origin.z eroxified2.internal


### rotate pos1 ###
execute store result score #math.temp eroxified2.internal run data get storage eroxified2:internal math.ray.box.x_rotation 1000
scoreboard players remove #math.temp eroxified2.internal 180000
execute if score #math.temp eroxified2.internal matches ..-1 run scoreboard players add #math.temp eroxified2.internal 360000
execute store result storage eroxified2:internal math.ray.box.x_rotation double 0.001 run scoreboard players get #math.temp eroxified2.internal

execute store result storage eroxified2:internal math.ray.box.rotate_pos1_x double 0.001 run scoreboard players get #math.ray.pos1.x eroxified2.internal
execute store result storage eroxified2:internal math.ray.box.rotate_pos1_y double 0.001 run scoreboard players get #math.ray.pos1.y eroxified2.internal
execute store result storage eroxified2:internal math.ray.box.rotate_pos1_z double 0.001 run scoreboard players get #math.ray.pos1.z eroxified2.internal
function eroxified2:math.ray/internal/rotated_box/rotate_pos1 with storage eroxified2:internal math.ray.box

execute store result score #math.ray.pos1.x eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[0] 1000
execute store result score #math.ray.pos1.y eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[1] 1000
execute store result score #math.ray.pos1.z eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[2] 1000