$data modify storage eroxified2:internal entity.uuid.cache append value {list:"$(list)",string:"$(string)"}
execute if data storage eroxified2:internal entity.uuid.cache[256] run data remove storage eroxified2:internal entity.uuid.cache[0]