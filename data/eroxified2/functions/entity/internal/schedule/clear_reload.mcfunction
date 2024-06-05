data remove storage eroxified2:internal entity.scheduled_events[{cancel_on_reload:1b}]

execute unless data storage eroxified2:internal entity.scheduled_events[0] run function eroxified2:entity/internal/schedule/clear
execute if data storage eroxified2:internal entity.scheduled_events[0] run function eroxified2:entity/internal/schedule/continue