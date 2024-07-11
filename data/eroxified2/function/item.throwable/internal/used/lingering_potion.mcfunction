scoreboard players reset @s eroxified2.item.used.lingering_potion

data modify storage eroxified2:internal item.throwable.event set value {}
tag @s add eroxified2.item.throwable.thrower
execute as @e[type=minecraft:potion,distance=..8,nbt={Item:{components:{"minecraft:custom_data":{eroxified2:{item:{throwable:{detect:true}}}}}}}] if function eroxified2:item.throwable/internal/confirm_owner run function eroxified2:item.throwable/internal/on_projectile/item
tag @s remove eroxified2.item.throwable.thrower
execute unless data storage eroxified2:internal item.throwable.event.item run return fail

data modify storage eroxified2:api item.throwable.event set from storage eroxified2:internal item.throwable.event.item.components.minecraft:custom_data.eroxified2.item.throwable
data remove storage eroxified2:api item.throwable.event.detect
data modify storage eroxified2:api item.throwable.item set from storage eroxified2:internal item.throwable.event.item

execute if data storage eroxified2:api item.throwable.event{stopsound:true} run stopsound @s * minecraft:entity.lingering_potion.throw
execute if data storage eroxified2:api item.throwable.event{stopsound:true} run advancement revoke @s only eroxified2:item.throwable/stopsound/lingering_potion

execute if data storage eroxified2:api item.throwable.event.run_command run function eroxified2:item.throwable/internal/run_command with storage eroxified2:api item.throwable.event