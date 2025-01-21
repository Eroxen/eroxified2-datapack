execute if block ~ ~ ~ barrel[open=false] run return run function eroxified2:barrelgui/internal/ticker/barrel_closed
execute unless block ~ ~ ~ barrel run return run function eroxified2:barrelgui/internal/ticker/barrel_broken

execute store success score #barrelgui.items_changed eroxified2.internal run data modify entity @s data.Items set from block ~ ~ ~ Items
execute if score #barrelgui.items_changed eroxified2.internal matches 1 run function eroxified2:barrelgui/internal/ticker/items_changed