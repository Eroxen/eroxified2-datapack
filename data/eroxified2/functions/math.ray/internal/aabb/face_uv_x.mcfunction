scoreboard players operation math.ray.hit.v eroxified2.api = math.ray.hit.y eroxified2.api
scoreboard players operation math.ray.hit.v eroxified2.api -= #math.ray.box.y.min eroxified2.internal

execute if score #math.ray.dx.sign eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.u eroxified2.api = math.ray.hit.z eroxified2.api
execute if score #math.ray.dx.sign eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.u eroxified2.api -= #math.ray.box.z.min eroxified2.internal

execute if score #math.ray.dx.sign eroxified2.internal matches -1 run scoreboard players operation math.ray.hit.u eroxified2.api = #math.ray.box.z.max eroxified2.internal
execute if score #math.ray.dx.sign eroxified2.internal matches -1 run scoreboard players operation math.ray.hit.u eroxified2.api -= math.ray.hit.z eroxified2.api