#####################################################################
# phead.block/api/marker/init.mcfunction
# written by Eroxen
#
# Initialises a Marker entity as a phead.block marker.
# This function must be run by a Marker entity.
#
# Storage input:
# - eroxified2:api phead.place: place context
#####################################################################

tag @s add eroxified2.phead.block.marker

data modify storage eroxified2:internal phead.marker_data set value {}
data modify storage eroxified2:internal phead.marker_data.namespaced_id set from storage eroxified2:api phead.place.namespaced_id

data modify entity @s data.eroxified2.phead set from storage eroxified2:internal phead.marker_data