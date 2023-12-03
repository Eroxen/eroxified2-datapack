#####################################################################
# core/api/unittest/macros.mcfunction
# written by Eroxen
#
# Tests whether or not macros are working currently.
#####################################################################

scoreboard players set #core.unittest eroxified2.internal 0
function eroxified2:core/internal/unittest/macros1

execute unless score #core.unittest eroxified2.internal matches 1 run data modify storage eroxified2:internal eroxified2.errors append value {message:'{"text":"Macros are not working. Make sure you\'re using at least Minecraft 1.20.2."}'}

tellraw @s[type=player] {"text":"unittest/macros: ","extra":[{"score":{"name":"#core.unittest","objective":"eroxified2.internal"}}]}