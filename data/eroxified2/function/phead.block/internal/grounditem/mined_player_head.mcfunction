data modify storage eroxified2:internal phead.context_internal set value {}

execute align xyz as @n[type=marker,dx=0,dy=0,dz=0,tag=eroxified2.phead.block.marker] at @s run function eroxified2:phead.block/internal/grounditem/mined_as_marker
execute unless data storage eroxified2:internal phead.context_internal.id run return 0

execute if data storage eroxified2:api phead.mined.replace_from_loot_table summon item_display run function eroxified2:phead.block/internal/grounditem/replace_from_loot_table with storage eroxified2:api phead.mined
execute if data storage eroxified2:api phead.mined.replace_item run data modify entity @s Item set from storage eroxified2:api phead.mined.replace_item
execute if data storage eroxified2:api phead.mined.modify_item run function eroxified2:phead.block/internal/grounditem/modify with storage eroxified2:api phead.mined
execute if data storage eroxified2:api phead.mined.kill_item run kill @s