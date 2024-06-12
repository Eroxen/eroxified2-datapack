$execute store result score #entity.schedule.i.time eroxified2.internal run data get storage eroxified2:internal entity.scheduled_events[$(index)].time

execute if score #entity.schedule.time eroxified2.internal > #entity.schedule.i.time eroxified2.internal run scoreboard players add #entity.schedule.i.middle eroxified2.internal 1
execute store result storage eroxified2:internal entity.schedule.index int 1 run scoreboard players get #entity.schedule.i.middle eroxified2.internal