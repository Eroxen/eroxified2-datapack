#####################################################################
# playerid/api/get_macro_object.mcfunction
# written by Eroxen
#
# Initialises an object in data storage with the
# executing player's ID, which can be used in a macro.
#
# Storage output:
# - eroxified2:api playerid.macro: object
#   - id: integer
#####################################################################

data modify storage eroxified2:api playerid.macro set value {}
execute store result storage eroxified2:api playerid.macro.id int 1 run scoreboard players get @s eroxified2.playerid