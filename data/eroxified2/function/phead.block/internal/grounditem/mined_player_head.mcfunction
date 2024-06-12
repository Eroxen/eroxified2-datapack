data modify storage eroxified2:internal phead.context_internal set value {}
data modify storage eroxified2:internal phead.context_internal.namespaced_id set from storage eroxified2:internal grounditem.entity_data.Item.tag.SkullOwner.Name
function eroxified2:phead/internal/split_namespaced_id/start

data modify storage eroxified2:api phead.mined set from storage eroxified2:internal phead.context_internal
data modify storage eroxified2:api phead.mined.item set from storage eroxified2:internal grounditem.entity_data.Item

function eroxified2:phead.block/internal/grounditem/find_marker with storage eroxified2:api phead.mined
execute unless predicate eroxified2:phead/head align xyz as @e[type=marker,dx=0,dy=0,dz=0,tag=eroxified2.phead.block.marker] at @s run function eroxified2:phead.block/api/marker/remove

execute if data storage eroxified2:api phead.mined.replace_from_loot_table summon item_display run function eroxified2:phead.block/internal/grounditem/replace_from_loot_table with storage eroxified2:api phead.mined
execute if data storage eroxified2:api phead.mined.replace_item run data modify entity @s Item set from storage eroxified2:api phead.mined.replace_item
execute if data storage eroxified2:api phead.mined.modify_item run data modify entity @s Item merge from storage eroxified2:api phead.mined.modify_item
execute if data storage eroxified2:api phead.mined.kill_item run kill @s