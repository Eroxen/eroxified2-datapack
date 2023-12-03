#####################################################################
# core/api/version/list_to_string.mcfunction
# written by Eroxen
#
# Converts a version in list format (e.g. [1,3,12])
# to a string (e.g. "1.3.12")
#
# Storage input:
# - eroxified2:api core.version.list: list
#
# Storage output:
# - eroxified2:api core.version.string: string
#####################################################################

data modify storage eroxified2:internal temp set value {}
data modify storage eroxified2:internal temp.a set from storage eroxified2:api core.version.list[0]
data modify storage eroxified2:internal temp.b set from storage eroxified2:api core.version.list[1]
data modify storage eroxified2:internal temp.c set from storage eroxified2:api core.version.list[2]
function eroxified2:core/internal/version/list_to_string with storage eroxified2:internal temp