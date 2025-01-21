#####################################################################
# barrelgui/api/init.mcfunction
# written by Eroxen
#
# Called at the block position of a Barrel.
# Initialises the Barrel to have a GUI.
#
# Macro arguments:
# - name: namespaced ID of the GUI definition
#####################################################################

execute unless block ~ ~ ~ barrel run return fail
$data modify block ~ ~ ~ components."minecraft:custom_data".eroxified2.barrelgui.name set value "$(name)"