advancement revoke @s only eroxified2:core/reload_or_join
execute if score #core.load_complete eroxified2.internal matches 0 run return 0


advancement revoke @s from eroxified2:core/root
function eroxified2:core/internal/load/grant_advancements


execute if score #core.load_complete eroxified2.internal matches 1 run function #eroxified2:core/player_joined


scoreboard players set @s eroxified2.leave_game 42