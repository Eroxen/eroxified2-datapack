data modify storage eroxified2:internal phead.scan_head set value {}
data modify storage eroxified2:internal phead.scan_head.namespaced_id set from block ~ ~ ~ SkullOwner.Name
execute store success score #different eroxified2.internal run data modify storage eroxified2:internal phead.scan_head.namespaced_id set from storage eroxified2:internal phead.context_internal.namespaced_id
execute if score #different eroxified2.internal matches 1 run return 0

# return if the head already has a phead.block marker in place
scoreboard players set #return eroxified2.internal 0
execute if predicate eroxified2:phead.block/installed run function eroxified2:phead.block/internal/scan_for_exisiting_marker with storage eroxified2:internal phead.scan_head
execute if score #return eroxified2.internal matches 1 run return 0

data modify storage eroxified2:internal phead.scan_head.namespace set from storage eroxified2:internal phead.context_internal.namespace
data modify storage eroxified2:internal phead.scan_head.id set from storage eroxified2:internal phead.context_internal.id

# associate head with used item if the item was not associated already
execute if data storage eroxified2:internal phead.context_internal.itemstack_used{associated:0b} run function eroxified2:phead/internal/associate_used_item

data modify storage eroxified2:api phead.place set from storage eroxified2:internal phead.scan_head


execute unless score #core.load_complete eroxified2.internal matches 1 run function eroxified2:phead/api/cannot_place
execute if score #core.load_complete eroxified2.internal matches 1 run function #eroxified2:phead/scan