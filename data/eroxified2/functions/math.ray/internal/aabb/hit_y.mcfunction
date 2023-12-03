scoreboard players set math.ray.hit eroxified2.api 1
scoreboard players set math.ray.hit.axis eroxified2.api 1
execute if score #math.ray.dy.sign eroxified2.internal matches 1 run scoreboard players set math.ray.hit.face eroxified2.api 2
execute if score #math.ray.dy.sign eroxified2.internal matches 1 run data modify storage eroxified2:api math.ray.hit.face set value "down"
execute if score #math.ray.dy.sign eroxified2.internal matches -1 run scoreboard players set math.ray.hit.face eroxified2.api 3
execute if score #math.ray.dy.sign eroxified2.internal matches -1 run data modify storage eroxified2:api math.ray.hit.face set value "up"

scoreboard players operation math.ray.hit.x eroxified2.api = #math.ray.box.y.x eroxified2.internal
scoreboard players operation math.ray.hit.y eroxified2.api = #math.ray.box.y eroxified2.internal
scoreboard players operation math.ray.hit.z eroxified2.api = #math.ray.box.y.z eroxified2.internal