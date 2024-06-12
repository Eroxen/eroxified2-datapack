#####################################################################
# entity/api/schedule.mcfunction
# requires modules: [math]
# written by Eroxen
#
# Schedules a command to be run by the executing entity.
#
# Storage input:
# - eroxified2:api entity.schedule:
#   - id: (str) ID of the task, so that it can be accessed later
#   - delay: (int) delay in ticks
#   - command: (str) command to run
#   - (optional) overwrite: (bool) cancels events with the same id for the same entity
#   - (optional) cancel_on_reload: (bool) cancels the event when reloading
#####################################################################

data modify storage eroxified2:internal entity.schedule.item set value {}
data modify storage eroxified2:internal entity.schedule.item.id set from storage eroxified2:api entity.schedule.id
data modify storage eroxified2:internal entity.schedule.item.command set from storage eroxified2:api entity.schedule.command
data modify storage eroxified2:internal entity.schedule.item.cancel_on_reload set from storage eroxified2:api entity.schedule.cancel_on_reload

execute if entity @s[type=player] run function eroxified2:entity/api/player/get_name
execute if entity @s[type=player] run data modify storage eroxified2:internal entity.schedule.item.entity set from storage eroxified2:api entity.player.get_name
execute unless entity @s[type=player] run function eroxified2:entity/api/get_uuid
execute unless entity @s[type=player] run data modify storage eroxified2:internal entity.schedule.item.entity set from storage eroxified2:api entity.get_uuid

execute store result score #entity.schedule.time eroxified2.internal run time query gametime
execute store result score #entity.schedule.delay eroxified2.internal run data get storage eroxified2:api entity.schedule.delay 1
scoreboard players operation #entity.schedule.time eroxified2.internal += #entity.schedule.delay eroxified2.internal
execute store result storage eroxified2:internal entity.schedule.item.time int 1 run scoreboard players get #entity.schedule.time eroxified2.internal

execute if data storage eroxified2:api entity.schedule{overwrite:true} run function eroxified2:entity/internal/schedule/overwrite with storage eroxified2:internal entity.schedule.item

execute if data storage eroxified2:internal entity.scheduled_events[0] run function eroxified2:entity/internal/schedule/insert
execute unless data storage eroxified2:internal entity.scheduled_events[0] run function eroxified2:entity/internal/schedule/init