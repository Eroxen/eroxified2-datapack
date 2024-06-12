advancement grant @s only eroxified2:core/root
advancement grant @s from eroxified2:core/links

execute if score #core.load_fault eroxified2.internal matches 0 run advancement grant @s only eroxified2:core/success
execute if score #core.load_fault eroxified2.internal matches 1 run advancement grant @s only eroxified2:core/warning
execute if score #core.load_fault eroxified2.internal matches 2 run advancement grant @s only eroxified2:core/error