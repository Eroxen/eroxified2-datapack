data modify storage eroxified2:internal entity.uuid.UUID set from entity @s UUID
function eroxified2:entity/internal/uuid/list_to_string/entrypoint
data modify storage eroxified2:api entity.get_uuid set from storage eroxified2:internal entity.uuid.stringified_UUID
data modify storage eroxified2:internal entity.uuid.cache_item set value {}
data modify storage eroxified2:internal entity.uuid.cache_item.list set from storage eroxified2:internal entity.uuid.UUID
data modify storage eroxified2:internal entity.uuid.cache_item.string set from storage eroxified2:internal entity.uuid.stringified_UUID
function eroxified2:entity/internal/uuid/to_cache with storage eroxified2:internal entity.uuid.cache_item