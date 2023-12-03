#####################################################################
# core/api/submit_signature.mcfunction
# written by Eroxen
#
# Called by other datapacks when loading. Lets Eroxified2 know about
# the pack's existence.
#
# Storage input:
# - eroxified2:api pack_signature: signature
#####################################################################

data modify storage eroxified2:internal core.register_pack set value {version:{}}

data modify storage eroxified2:internal core.register_pack.version.list set from storage eroxified2:api pack_signature.version
data modify storage eroxified2:api core.version.list set from storage eroxified2:api pack_signature.version
function eroxified2:core/api/version/list_to_score
function eroxified2:core/api/version/list_to_string
execute store result storage eroxified2:internal core.register_pack.version.int int 1 run scoreboard players get core.version eroxified2.api
data modify storage eroxified2:internal core.register_pack.version.string set from storage eroxified2:api core.version.string

data modify storage eroxified2:internal core.register_pack.id set from storage eroxified2:api pack_signature.id
data modify storage eroxified2:internal core.register_pack.name set from storage eroxified2:api pack_signature.name

execute if data storage eroxified2:api pack_signature.included_eroxified2_version run data modify storage eroxified2:api core.version.list set from storage eroxified2:api pack_signature.included_eroxified2_version
execute if data storage eroxified2:api pack_signature.included_eroxified2_version run function eroxified2:core/api/version/list_to_score
execute if data storage eroxified2:api pack_signature.included_eroxified2_version if score core.version eroxified2.api > #eroxified2.max_version eroxified2.internal run function eroxified2:core/internal/load/find_higher_version

data modify storage eroxified2:internal eroxified2.installed_packs append from storage eroxified2:internal core.register_pack