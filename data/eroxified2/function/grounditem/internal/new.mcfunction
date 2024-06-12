tag @s add eroxified2.grounditem.marked
data modify storage eroxified2:internal grounditem.entity_data set from entity @s {}
function #eroxified2:grounditem/internal/new
execute unless entity @s run return 0

data modify storage eroxified2:api grounditem.entity_data set from storage eroxified2:internal grounditem.entity_data
function #eroxified2:grounditem/new