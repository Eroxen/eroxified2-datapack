data modify storage eroxified2:internal barrelgui.kick_player set value {facing:"north",data:{}}
execute if block ~ ~ ~ barrel[facing=east] run data modify storage eroxified2:internal barrelgui.kick_player.facing set value "east"
execute if block ~ ~ ~ barrel[facing=south] run data modify storage eroxified2:internal barrelgui.kick_player.facing set value "south"
execute if block ~ ~ ~ barrel[facing=west] run data modify storage eroxified2:internal barrelgui.kick_player.facing set value "west"
execute if block ~ ~ ~ barrel[facing=up] run data modify storage eroxified2:internal barrelgui.kick_player.facing set value "up"
execute if block ~ ~ ~ barrel[facing=down] run data modify storage eroxified2:internal barrelgui.kick_player.facing set value "down"
data modify storage eroxified2:internal barrelgui.kick_player.data set from block ~ ~ ~ {}

setblock ~ ~ ~ barrier
function eroxified2:barrelgui/internal/kick_player_macro with storage eroxified2:internal barrelgui.kick_player