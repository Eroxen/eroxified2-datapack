scoreboard objectives add eroxified2.internal dummy
scoreboard objectives add eroxified2.api dummy
scoreboard objectives add eroxified2.config dummy

scoreboard players set #core.load_complete eroxified2.internal 0

function #eroxified2:core/load_modules
function #eroxified2:core/load_datapacks
function eroxified2:core/internal/load/wait_for_player

schedule function eroxified2:core/internal/load/finish 5s