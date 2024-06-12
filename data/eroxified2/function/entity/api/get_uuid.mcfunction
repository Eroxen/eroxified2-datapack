#####################################################################
# entity/api/get_uuid.mcfunction
# written by Eroxen
#
# Gets the executing entity's uuid in string form.
#
# Storage output:
# - eroxified2:api entity.get_uuid: uuid
#####################################################################

function eroxified2:entity/internal/uuid/from_cache with entity @s
execute if data storage eroxified2:internal entity.uuid.cache_item run data modify storage eroxified2:api entity.get_uuid set from storage eroxified2:internal entity.uuid.cache_item
execute unless data storage eroxified2:internal entity.uuid.cache_item run function eroxified2:entity/internal/uuid/cache_miss