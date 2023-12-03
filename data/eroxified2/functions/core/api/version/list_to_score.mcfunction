#####################################################################
# core/api/version/list_to_score.mcfunction
# written by Eroxen
#
# Converts a version in list format (e.g. [1,3,12])
# to a scoreboard value (e.g. 1003012)
#
# Storage input:
# - eroxified2:api core.version.list: list
#
# Scoreboard output:
# - eroxified2.api core.version
#####################################################################

execute store result score core.version eroxified2.api run data get storage eroxified2:api core.version.list[0]
scoreboard players set #temp eroxified2.internal 1000
scoreboard players operation core.version eroxified2.api *= #temp eroxified2.internal
execute store result score #temp eroxified2.internal run data get storage eroxified2:api core.version.list[1]
scoreboard players operation core.version eroxified2.api += #temp eroxified2.internal
scoreboard players set #temp eroxified2.internal 1000
scoreboard players operation core.version eroxified2.api *= #temp eroxified2.internal
execute store result score #temp eroxified2.internal run data get storage eroxified2:api core.version.list[2]
scoreboard players operation core.version eroxified2.api += #temp eroxified2.internal