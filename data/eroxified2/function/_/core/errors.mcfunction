execute store result score #core.n_warnings eroxified2.internal run data get storage eroxified2:internal eroxified2.warnings
execute store result score #core.n_errors eroxified2.internal run data get storage eroxified2:internal eroxified2.errors

tellraw @s {"text":"--------------------------------------------------","color":"light_purple"}
tellraw @s[type=player] {"text":"","extra":[{"score":{"name":"#core.n_warnings","objective":"eroxified2.internal"}},{"text":" warnings, "},{"score":{"name":"#core.n_errors","objective":"eroxified2.internal"}},{"text":" errors"}]}

execute if data storage eroxified2:internal eroxified2.warnings[0] run tellraw @s {"storage":"eroxified2:internal","nbt":"eroxified2.warnings[].message","separator":"\n","color":"yellow","interpret":true}
execute if data storage eroxified2:internal eroxified2.errors[0] run tellraw @s {"storage":"eroxified2:internal","nbt":"eroxified2.errors[].message","separator":"\n","color":"red","interpret":true}
tellraw @s {"text":"--------------------------------------------------","color":"light_purple"}