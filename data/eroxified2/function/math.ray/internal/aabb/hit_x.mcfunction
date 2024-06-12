scoreboard players set math.ray.hit eroxified2.api 1
scoreboard players set math.ray.hit.axis eroxified2.api 0
execute if score #math.ray.dx.sign eroxified2.internal matches 1 run scoreboard players set math.ray.hit.face eroxified2.api 0
execute if score #math.ray.dx.sign eroxified2.internal matches 1 run data modify storage eroxified2:api math.ray.hit.face set value "west"
execute if score #math.ray.dx.sign eroxified2.internal matches -1 run scoreboard players set math.ray.hit.face eroxified2.api 1
execute if score #math.ray.dx.sign eroxified2.internal matches -1 run data modify storage eroxified2:api math.ray.hit.face set value "east"

scoreboard players operation math.ray.hit.x eroxified2.api = #math.ray.box.x eroxified2.internal
scoreboard players operation math.ray.hit.y eroxified2.api = #math.ray.box.x.y eroxified2.internal
scoreboard players operation math.ray.hit.z eroxified2.api = #math.ray.box.x.z eroxified2.internal