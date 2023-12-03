execute store result score #phead.colon_index eroxified2.internal run function eroxified2:phead/internal/split_namespaced_id/return_colon_index

data modify storage eroxified2:internal temp set value {a:0,b:0}
execute store result storage eroxified2:internal temp.a int 1 run scoreboard players get #phead.colon_index eroxified2.internal
scoreboard players add #phead.colon_index eroxified2.internal 1
execute store result storage eroxified2:internal temp.b int 1 run scoreboard players get #phead.colon_index eroxified2.internal

function eroxified2:phead/internal/split_namespaced_id/split with storage eroxified2:internal temp