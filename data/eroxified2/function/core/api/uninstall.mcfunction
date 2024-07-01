#####################################################################
# core/api/uninstall.mcfunction
# written by Eroxen
#
# Removes all storage and scoreboard from all eroxified2 modules.
#####################################################################

function eroxified2:core/internal/uninstall/uninstall_except_core
data remove storage eroxified2:api core
data remove storage eroxified2:internal core