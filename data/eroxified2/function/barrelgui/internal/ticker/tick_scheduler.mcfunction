execute as @e[type=marker,tag=eroxified2.barrelgui.ticker] at @s run function eroxified2:barrelgui/internal/ticker/tick

execute if entity @e[type=marker,tag=eroxified2.barrelgui.ticker] run schedule function eroxified2:barrelgui/internal/ticker/tick_scheduler 1t replace