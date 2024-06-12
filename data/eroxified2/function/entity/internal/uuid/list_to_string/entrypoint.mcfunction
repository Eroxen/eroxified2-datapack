#####################################################################
# internal/entrypoint/list_to_string.mcfunction
# written by Eroxen
#
# Converts a UUID in the form of a list of 4 integers to a string.
#
# Storage input :
# - eroxified2:internal entity.uuid.:
#   - UUID : list of 4 integers
#
# Storage output :
# - eroxified2:internal entity.uuid.:
#   - stringified_UUID : string
#####################################################################

data modify storage eroxified2:internal entity.uuid.list_to_string set value {hexes:{}}
execute store result score #entity.uuid.int eroxified2.internal run data get storage eroxified2:internal entity.uuid.UUID[0] 1
function eroxified2:entity/internal/uuid/list_to_string/slice_int
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.0 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.0
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.1 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.1
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.2 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.2
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.3 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.3
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.4 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.4
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.5 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.5
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.6 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.6
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.7 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.7
execute store result score #entity.uuid.int eroxified2.internal run data get storage eroxified2:internal entity.uuid.UUID[1] 1
function eroxified2:entity/internal/uuid/list_to_string/slice_int
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.8 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.0
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.9 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.1
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.10 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.2
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.11 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.3
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.12 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.4
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.13 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.5
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.14 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.6
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.15 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.7
execute store result score #entity.uuid.int eroxified2.internal run data get storage eroxified2:internal entity.uuid.UUID[2] 1
function eroxified2:entity/internal/uuid/list_to_string/slice_int
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.16 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.0
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.17 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.1
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.18 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.2
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.19 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.3
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.20 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.4
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.21 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.5
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.22 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.6
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.23 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.7
execute store result score #entity.uuid.int eroxified2.internal run data get storage eroxified2:internal entity.uuid.UUID[3] 1
function eroxified2:entity/internal/uuid/list_to_string/slice_int
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.24 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.0
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.25 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.1
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.26 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.2
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.27 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.3
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.28 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.4
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.29 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.5
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.30 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.6
data modify storage eroxified2:internal entity.uuid.list_to_string.hexes.31 set from storage eroxified2:internal entity.uuid.list_to_string.sliced_int.7

function eroxified2:entity/internal/uuid/list_to_string/stringify with storage eroxified2:internal entity.uuid.list_to_string.hexes