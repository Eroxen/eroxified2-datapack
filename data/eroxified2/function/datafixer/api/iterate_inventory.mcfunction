#####################################################################
# datafixer/api/iterate_inventory.mcfunction
# written by Eroxen
#
# Called by a player in order to update all outdated items
# in their inventory.
#
# Macro arguments:
# - predicate: predicate used to check the "contents" slot of
#     an item display to find the outdated item(s)
# - function: function to run on an item display to update the
#     item in its "contents" slot
# - authority: string of the pack / function that requested the
#     update, only used to tell the player
#####################################################################

data modify storage eroxified2:internal datafixer.inventory set value {}
scoreboard players set #datafixer.updated_count eroxified2.internal 0
$data modify storage eroxified2:internal datafixer.inventory merge value {predicate:'$(predicate)',function:'$(function)'}

execute if entity 8f022366-990b-a89f-3188-78c3e340cc35 run kill 8f022366-990b-a89f-3188-78c3e340cc35
execute at @s run summon item_display ~ ~ ~ {UUID:[I;-1895685274, -1727289185, 831027395, -482292683],Silent:1b,view_range:0f,width:0f,height:0f,Tags:["eroxified2.datafixer.fixed_item_display"],CustomName:'{"text":"eroxified2.datafixer.fixed_item_display"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

execute unless entity 8f022366-990b-a89f-3188-78c3e340cc35 run return fail

execute if items entity @s inventory.0 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.0
execute if items entity @s inventory.0 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.0 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.0 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.1 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.1
execute if items entity @s inventory.1 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.1 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.1 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.2 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.2
execute if items entity @s inventory.2 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.2 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.2 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.3 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.3
execute if items entity @s inventory.3 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.3 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.3 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.4 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.4
execute if items entity @s inventory.4 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.4 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.4 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.5 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.5
execute if items entity @s inventory.5 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.5 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.5 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.6 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.6
execute if items entity @s inventory.6 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.6 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.6 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.7 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.7
execute if items entity @s inventory.7 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.7 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.7 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.8 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.8
execute if items entity @s inventory.8 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.8 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.8 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.9 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.9
execute if items entity @s inventory.9 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.9 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.9 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.10 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.10
execute if items entity @s inventory.10 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.10 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.10 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.11 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.11
execute if items entity @s inventory.11 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.11 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.11 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.12 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.12
execute if items entity @s inventory.12 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.12 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.12 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.13 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.13
execute if items entity @s inventory.13 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.13 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.13 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.14 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.14
execute if items entity @s inventory.14 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.14 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.14 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.15 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.15
execute if items entity @s inventory.15 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.15 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.15 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.16 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.16
execute if items entity @s inventory.16 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.16 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.16 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.17 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.17
execute if items entity @s inventory.17 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.17 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.17 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.18 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.18
execute if items entity @s inventory.18 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.18 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.18 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.19 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.19
execute if items entity @s inventory.19 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.19 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.19 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.20 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.20
execute if items entity @s inventory.20 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.20 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.20 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.21 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.21
execute if items entity @s inventory.21 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.21 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.21 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.22 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.22
execute if items entity @s inventory.22 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.22 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.22 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.23 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.23
execute if items entity @s inventory.23 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.23 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.23 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.24 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.24
execute if items entity @s inventory.24 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.24 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.24 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.25 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.25
execute if items entity @s inventory.25 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.25 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.25 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s inventory.26 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s inventory.26
execute if items entity @s inventory.26 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s inventory.26 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s inventory.26 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.0 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.0
execute if items entity @s hotbar.0 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.0 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.0 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.1 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.1
execute if items entity @s hotbar.1 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.1 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.1 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.2 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.2
execute if items entity @s hotbar.2 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.2 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.2 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.3 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.3
execute if items entity @s hotbar.3 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.3 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.3 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.4 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.4
execute if items entity @s hotbar.4 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.4 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.4 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.5 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.5
execute if items entity @s hotbar.5 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.5 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.5 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.6 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.6
execute if items entity @s hotbar.6 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.6 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.6 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.7 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.7
execute if items entity @s hotbar.7 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.7 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.7 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s hotbar.8 * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s hotbar.8
execute if items entity @s hotbar.8 * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s hotbar.8 * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s hotbar.8 from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

execute if items entity @s weapon.offhand * run item replace entity 8f022366-990b-a89f-3188-78c3e340cc35 contents from entity @s weapon.offhand
execute if items entity @s weapon.offhand * as 8f022366-990b-a89f-3188-78c3e340cc35 run function eroxified2:datafixer/internal/inventory/check_contents with storage eroxified2:internal datafixer.inventory
execute if items entity @s weapon.offhand * if score #datafixer.updated eroxified2.internal matches 1 run item replace entity @s weapon.offhand from entity 8f022366-990b-a89f-3188-78c3e340cc35 contents

kill 8f022366-990b-a89f-3188-78c3e340cc35

$execute if score #datafixer.updated_count eroxified2.internal matches 1.. run tellraw @s {"translate": "eroxified2.datafixer.inventory_updated", "with":[{"text":"$(authority)"},{"score":{"name": "#datafixer.updated_count", "objective": "eroxified2.internal"}}], "fallback": "[%s] %s item stack(s) in your inventory have been updated."}