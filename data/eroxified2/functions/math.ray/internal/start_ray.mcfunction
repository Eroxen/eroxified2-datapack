# run with execute summon marker
# expects: storage eroxified2:internal math.ray.rotation

data modify storage eroxified2:internal math.ray.pos1 set from entity @s Pos
data modify entity @s Rotation set from storage eroxified2:internal math.ray.rotation
execute rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage eroxified2:internal math.ray.delta set from entity @s Pos
kill @s

execute store result score #math.ray.dx eroxified2.internal run data get storage eroxified2:internal math.ray.delta[0] 1000
execute store result score #math.ray.pos1.x eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[0] 1000
execute store result score #math.ray.dy eroxified2.internal run data get storage eroxified2:internal math.ray.delta[1] 1000
execute store result score #math.ray.pos1.y eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[1] 1000
execute store result score #math.ray.dz eroxified2.internal run data get storage eroxified2:internal math.ray.delta[2] 1000
execute store result score #math.ray.pos1.z eroxified2.internal run data get storage eroxified2:internal math.ray.pos1[2] 1000

execute store success score #math.ray.dx.sign eroxified2.internal if score #math.ray.dx eroxified2.internal matches 0..
execute if score #math.ray.dx.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dx.sign eroxified2.internal -1
execute store success score #math.ray.dy.sign eroxified2.internal if score #math.ray.dy eroxified2.internal matches 0..
execute if score #math.ray.dy.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dy.sign eroxified2.internal -1
execute store success score #math.ray.dz.sign eroxified2.internal if score #math.ray.dz eroxified2.internal matches 0..
execute if score #math.ray.dz.sign eroxified2.internal matches 0 run scoreboard players set #math.ray.dz.sign eroxified2.internal -1