data modify storage eroxified2:internal phead.context_internal.id set from entity @s data.eroxified2.phead.id

data modify storage eroxified2:api phead.mined set from storage eroxified2:internal phead.context_internal
data modify storage eroxified2:api phead.mined.item set from storage eroxified2:internal grounditem.entity_data.Item

function #eroxified2:phead/mined

execute unless predicate eroxified2:phead/custom_head run function eroxified2:phead.block/api/marker/remove