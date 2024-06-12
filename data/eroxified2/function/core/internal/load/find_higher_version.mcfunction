data modify storage eroxified2:internal eroxified2.temp_error set value {id:"higher_eroxified2_version",message:'{"text":"Eroxified2 v","extra":[{"storage":"eroxified2:internal","nbt":"eroxified2.version.string"},{"text":" is installed, but a higher version (v"},{"storage":"eroxified2:internal","nbt":"eroxified2.warnings[{id:\\"higher_eroxified2_version\\"}].eroxified2_version"},{"text":") is available inside of the pack \\""},{"storage":"eroxified2:internal","nbt":"eroxified2.warnings[{id:\\"higher_eroxified2_version\\"}].signature.name"},{"text":"\\" ("},{"storage":"eroxified2:internal","nbt":"eroxified2.warnings[{id:\\"higher_eroxified2_version\\"}].signature.id"},{"text":")! To use its included version of Eroxified2, run:\\n"},{"text":" /datapack disable <file>\\n /datapack enable <file> last","color":"white"}]}'}

data modify storage eroxified2:internal eroxified2.temp_error.signature set from storage eroxified2:internal core.register_pack
function eroxified2:core/api/version/list_to_string
data modify storage eroxified2:internal eroxified2.temp_error.eroxified2_version set from storage eroxified2:api core.version.string

execute if data storage eroxified2:internal eroxified2.warnings[{id:"higher_eroxified2_version"}] run data modify storage eroxified2:internal eroxified2.warnings[{id:"higher_eroxified2_version"}] set from storage eroxified2:internal eroxified2.temp_error
execute unless data storage eroxified2:internal eroxified2.warnings[{id:"higher_eroxified2_version"}] run data modify storage eroxified2:internal eroxified2.warnings append from storage eroxified2:internal eroxified2.temp_error

scoreboard players operation #eroxified2.max_version eroxified2.internal = core.version eroxified2.api
data remove storage eroxified2:internal eroxified2.temp_error