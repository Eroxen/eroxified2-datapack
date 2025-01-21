summon marker ~ ~ ~ {Tags:["eroxified2.barrelgui.ticker"]}
function eroxified2:barrelgui/internal/trigger/call_init_func with storage eroxified2:internal barrelgui.definition
execute as @n[type=marker,tag=eroxified2.barrelgui.ticker,distance=..0.1] run function eroxified2:barrelgui/internal/ticker/init


function eroxified2:barrelgui/internal/ticker/tick_scheduler