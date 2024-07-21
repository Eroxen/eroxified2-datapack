data modify storage eroxified2:internal phead.scan_head set value {}
data modify storage eroxified2:internal phead.scan_head.block_components set from block ~ ~ ~ components
data modify storage eroxified2:internal phead.scan_head merge from storage eroxified2:internal phead.scan_head.block_components.minecraft:custom_data.eroxified2.phead
execute store success score #different eroxified2.internal run data modify storage eroxified2:internal phead.scan_head.id set from storage eroxified2:internal phead.context_internal.id
execute if score #different eroxified2.internal matches 1 run return 0

# return if the head already has a phead.block marker in place
scoreboard players set #return eroxified2.internal 0
function #eroxified2:phead/internal/place/early_return
execute if score #return eroxified2.internal matches 1 run return 0

data modify storage eroxified2:api phead.place set from storage eroxified2:internal phead.scan_head
execute unless score #core.load_complete eroxified2.internal matches 1 run return run function eroxified2:phead/api/cannot_place
execute if data storage eroxified2:internal phead.scan_head.place.function run function eroxified2:phead/internal/run_function with storage eroxified2:internal phead.scan_head.place