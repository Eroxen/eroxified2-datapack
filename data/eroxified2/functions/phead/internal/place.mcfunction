advancement revoke @s only eroxified2:phead/place

data modify storage eroxified2:internal phead.context_internal set value {}
execute if predicate eroxified2:phead/head_in_mainhand run data modify storage eroxified2:internal phead.context_internal.itemstack_used set from entity @s SelectedItem
execute if predicate eroxified2:phead/head_in_offhand run data modify storage eroxified2:internal phead.context_internal.itemstack_used set from entity @s Inventory[{Slot:-106b}]
execute unless data storage eroxified2:internal phead.context_internal.itemstack_used.tag.SkullOwner.Name run data remove storage eroxified2:internal phead.context_internal.itemstack_used
execute if data storage eroxified2:internal phead.context_internal.itemstack_used run data modify storage eroxified2:internal phead.context_internal.itemstack_used.associated set value 0b
data modify storage eroxified2:internal phead.context_internal.namespaced_id set from storage eroxified2:internal phead.context_internal.itemstack_used.tag.SkullOwner.Name
execute if data storage eroxified2:internal phead.context_internal.namespaced_id run function eroxified2:phead/internal/split_namespaced_id/start

execute if data storage eroxified2:internal phead.context_internal.namespaced_id at @s rotated as @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run function eroxified2:phead/internal/scan_cube