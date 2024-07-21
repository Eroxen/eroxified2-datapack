data modify storage eroxified2:internal eroxified2.temp_error set value {pack_id:"",required_version:""}
function eroxified2:core/api/version/list_to_string
data modify storage eroxified2:internal eroxified2.temp_error.required_version set from storage eroxified2:api core.version.string
data modify storage eroxified2:internal eroxified2.temp_error.pack_id set from storage eroxified2:internal core.register_pack.id
function eroxified2:core/internal/load/outdated_eroxified2_version_macro with storage eroxified2:internal eroxified2.temp_error