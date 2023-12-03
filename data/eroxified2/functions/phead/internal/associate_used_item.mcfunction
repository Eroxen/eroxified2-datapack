# mark the used itemstack as associated, so the same data cannot be applied twice
# if multiple heads with the same name are somehow present
data modify storage eroxified2:internal phead.context_internal.itemstack_used.associated set value 1b

data modify storage eroxified2:internal phead.scan_head.item set value {Count:1b,id:"minecraft:player_head"}
data modify storage eroxified2:internal phead.scan_head.item.tag set from storage eroxified2:internal phead.context_internal.itemstack_used.tag