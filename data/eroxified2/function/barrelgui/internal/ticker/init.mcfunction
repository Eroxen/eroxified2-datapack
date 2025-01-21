data modify storage eroxified2:internal barrelgui.ticker_data set value {}
data modify storage eroxified2:internal barrelgui.ticker_data.Items set from block ~ ~ ~ Items
data modify storage eroxified2:internal barrelgui.ticker_data.Items_prev set from storage eroxified2:internal barrelgui.ticker_data.Items

data modify entity @s data set from storage eroxified2:internal barrelgui.ticker_data