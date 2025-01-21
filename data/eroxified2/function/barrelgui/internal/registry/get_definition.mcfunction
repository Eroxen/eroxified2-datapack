data remove storage eroxified2:internal barrelgui.definition
$data modify storage eroxified2:internal barrelgui.definition set from storage eroxified2:internal barrelgui.registry."$(name)"
$execute if data storage eroxified2:internal barrelgui.definition run data modify storage eroxified2:internal barrelgui.definition.name set value "$(name)"