advancement revoke @s only eroxified2:phead/place

data modify storage eroxified2:internal phead.context_internal set value {}
execute if predicate eroxified2:phead/head_in_mainhand run data modify storage eroxified2:internal phead.context_internal.itemstack_used set from entity @s SelectedItem
execute if predicate eroxified2:phead/head_in_offhand run data modify storage eroxified2:internal phead.context_internal.itemstack_used set from entity @s Inventory[{Slot:-106b}]
execute unless data storage eroxified2:internal phead.context_internal.itemstack_used.components.minecraft:custom_data.eroxified2.phead.id run data remove storage eroxified2:internal phead.context_internal.itemstack_used
data modify storage eroxified2:internal phead.context_internal.id set from storage eroxified2:internal phead.context_internal.itemstack_used.components.minecraft:custom_data.eroxified2.phead.id
execute if data storage eroxified2:internal phead.context_internal.id at @s rotated as @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run function eroxified2:phead/internal/scan_cube