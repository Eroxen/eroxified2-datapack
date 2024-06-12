execute if score #core.load_fault eroxified2.internal matches 0..1 run scoreboard players set #core.load_complete eroxified2.internal 1
execute if score #core.load_fault eroxified2.internal matches 0..1 run function #eroxified2:core/load_packs
execute if score #core.load_fault eroxified2.internal matches 0..1 run function eroxified2:core/internal/load/wait_for_player
execute if score #core.load_fault eroxified2.internal matches 0..1 run function eroxified2:core/internal/tick

execute if score #core.load_fault eroxified2.internal matches 2 run scoreboard players set #core.load_complete eroxified2.internal -1