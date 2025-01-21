#####################################################################
# barrelgui/api/register.mcfunction
# written by Eroxen
#
# Registers a new barrel GUI definition.
#
# Macro arguments:
# - name: namespaced ID of the GUI definition
# - data: properties of the barrel GUI, with fields:
#   - (bool) private: locks the barrel once a player has opened it
#####################################################################

$data modify storage eroxified2:internal barrelgui.registry."$(name)" set value $(data)