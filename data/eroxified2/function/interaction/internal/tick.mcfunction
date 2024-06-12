execute if score interaction.tick eroxified2.config matches 1 run schedule function eroxified2:interaction/internal/tick 1t replace


execute as @a at @s anchored eyes positioned ^ ^ ^4 if entity @e[type=interaction,tag=eroxified2.interaction,distance=..8,predicate=eroxified2:interaction/any_clicked,limit=1] run function eroxified2:interaction/internal/found_any_clicked