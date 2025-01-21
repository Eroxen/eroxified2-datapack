function eroxified2:barrelgui/internal/registry/get_definition_of_block
execute unless data storage eroxified2:internal barrelgui.definition run function eroxified2:barrelgui/internal/kick_player
execute unless data storage eroxified2:internal barrelgui.definition run return run tellraw @s {"text":"Barrel GUI \"","color":"red","extra":[{"block":"~ ~ ~","nbt":"components.\"minecraft:custom_data\".eroxified2.barrelgui.name"},{"text":"\" is not defined"}]}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function eroxified2:barrelgui/internal/ticker/spawn