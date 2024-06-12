scoreboard players set math.ray.hit eroxified2.api 1
scoreboard players set math.ray.hit.axis eroxified2.api 2
execute if score #math.ray.dz.sign eroxified2.internal matches 1 run scoreboard players set math.ray.hit.face eroxified2.api 4
execute if score #math.ray.dz.sign eroxified2.internal matches 1 run data modify storage eroxified2:api math.ray.hit.face set value "north"
execute if score #math.ray.dz.sign eroxified2.internal matches -1 run scoreboard players set math.ray.hit.face eroxified2.api 5
execute if score #math.ray.dz.sign eroxified2.internal matches -1 run data modify storage eroxified2:api math.ray.hit.face set value "south"

scoreboard players operation math.ray.hit.x eroxified2.api = #math.ray.box.z.x eroxified2.internal
scoreboard players operation math.ray.hit.y eroxified2.api = #math.ray.box.z.y eroxified2.internal
scoreboard players operation math.ray.hit.z eroxified2.api = #math.ray.box.z eroxified2.internal