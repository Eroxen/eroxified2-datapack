#####################################################################
# core/api/disble_signature.mcfunction
# written by Eroxen
#
# Disables the datapack described by the signature,
# and uninstalls eroxified2 in the correct order.
#
# Storage input:
# - eroxified2:api pack_signature: signature
#####################################################################

data modify storage eroxified2:api core.version.list set from storage eroxified2:api pack_signature.version
function eroxified2:core/api/version/list_to_string
data modify storage eroxified2:internal core.disable_pack set value {}
data modify storage eroxified2:internal core.disable_pack.version set from storage eroxified2:api core.version.string
data modify storage eroxified2:internal core.disable_pack.id set from storage eroxified2:api pack_signature.id

function eroxified2:core/internal/uninstall/uninstall_except_core
function eroxified2:core/internal/uninstall/disable_pack with storage eroxified2:internal core.disable_pack
data remove storage eroxified2:api core
data remove storage eroxified2:internal core