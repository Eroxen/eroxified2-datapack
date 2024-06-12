scoreboard players set #temp eroxified2.internal 0
advancement revoke @a only eroxified2:interaction/test
advancement grant @a[limit=1] only eroxified2:interaction/test
advancement revoke @a only eroxified2:interaction/test
execute if score #temp eroxified2.internal matches 0 run scoreboard players set interaction.tick eroxified2.config 1

execute if score interaction.tick eroxified2.config matches 1 run schedule function eroxified2:interaction/internal/tick 1t replace