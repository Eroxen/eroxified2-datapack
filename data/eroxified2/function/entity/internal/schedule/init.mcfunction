data modify storage eroxified2:internal entity.scheduled_events set value []
scoreboard players operation #entity.schedule.min_time eroxified2.internal = #entity.schedule.time eroxified2.internal
data modify storage eroxified2:internal entity.scheduled_events append from storage eroxified2:internal entity.schedule.item
scoreboard players set #entity.scheduled_events eroxified2.internal 1