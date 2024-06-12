scoreboard players set #entity.schedule.i.min eroxified2.internal 0
execute store result score #entity.schedule.i.max eroxified2.internal run data get storage eroxified2:internal entity.scheduled_events

scoreboard players operation #entity.schedule.i.dif eroxified2.internal = #entity.schedule.i.max eroxified2.internal
scoreboard players operation #entity.schedule.i.dif eroxified2.internal -= #entity.schedule.i.min eroxified2.internal
scoreboard players operation #entity.schedule.i.middle eroxified2.internal = #entity.schedule.i.dif eroxified2.internal
scoreboard players operation #entity.schedule.i.middle eroxified2.internal /= #math.const.2 eroxified2.internal
scoreboard players operation #entity.schedule.i.middle eroxified2.internal += #entity.schedule.i.min eroxified2.internal
execute store result storage eroxified2:internal entity.schedule.index int 1 run scoreboard players get #entity.schedule.i.middle eroxified2.internal

execute if score #entity.schedule.i.dif eroxified2.internal matches 2.. run function eroxified2:entity/internal/schedule/insert/loop with storage eroxified2:internal entity.schedule
function eroxified2:entity/internal/schedule/insert/last_check with storage eroxified2:internal entity.schedule
function eroxified2:entity/internal/schedule/insert/insert with storage eroxified2:internal entity.schedule

scoreboard players operation #entity.schedule.min_time eroxified2.internal < #entity.schedule.time eroxified2.internal