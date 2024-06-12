execute store result score #math.ray.horizontal_rotation eroxified2.internal run data get storage eroxified2:internal math.ray.rotation[0] 1
scoreboard players add #math.ray.horizontal_rotation eroxified2.internal 45
execute if score #math.ray.horizontal_rotation eroxified2.internal matches ..-1 run scoreboard players add #math.ray.horizontal_rotation eroxified2.internal 360
execute if score #math.ray.horizontal_rotation eroxified2.internal matches 360.. run scoreboard players remove #math.ray.horizontal_rotation eroxified2.internal 360
scoreboard players operation #math.ray.horizontal_rotation eroxified2.internal /= #math.const.90 eroxified2.internal

execute if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.u eroxified2.api = #math.ray.box.x.max eroxified2.internal
execute if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.u eroxified2.api -= math.ray.hit.x eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.v eroxified2.api = math.ray.hit.z eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.v eroxified2.api -= #math.ray.box.z.min eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.v eroxified2.api = #math.ray.box.z.max eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 0 run scoreboard players operation math.ray.hit.v eroxified2.api -= math.ray.hit.z eroxified2.api

execute if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.u eroxified2.api = #math.ray.box.z.max eroxified2.internal
execute if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.u eroxified2.api -= math.ray.hit.z eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.v eroxified2.api = #math.ray.box.x.max eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.v eroxified2.api -= math.ray.hit.x eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.v eroxified2.api = math.ray.hit.x eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 1 run scoreboard players operation math.ray.hit.v eroxified2.api -= #math.ray.box.x.min eroxified2.internal

execute if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.u eroxified2.api = math.ray.hit.x eroxified2.api
execute if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.u eroxified2.api -= #math.ray.box.x.min eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.v eroxified2.api = #math.ray.box.z.max eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.v eroxified2.api -= math.ray.hit.z eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.v eroxified2.api = math.ray.hit.z eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 2 run scoreboard players operation math.ray.hit.v eroxified2.api -= #math.ray.box.z.min eroxified2.internal

execute if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.u eroxified2.api = math.ray.hit.z eroxified2.api
execute if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.u eroxified2.api -= #math.ray.box.z.min eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.v eroxified2.api = math.ray.hit.x eroxified2.api
execute if score #math.ray.dy.sign eroxified2.internal matches -1 if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.v eroxified2.api -= #math.ray.box.x.min eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.v eroxified2.api = #math.ray.box.x.max eroxified2.internal
execute if score #math.ray.dy.sign eroxified2.internal matches 1 if score #math.ray.horizontal_rotation eroxified2.internal matches 3 run scoreboard players operation math.ray.hit.v eroxified2.api -= math.ray.hit.x eroxified2.api