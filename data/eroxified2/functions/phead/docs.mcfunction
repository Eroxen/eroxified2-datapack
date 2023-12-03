##########################################
# Function tag #eroxified2:phead/scan
##########################################
# Called at newly placed heads by the player who placed it.
# Context provided in storage eroxified2:api phead.place:
# - namespaced_id: SkullOwner.Name of the placed head
# - namespace: anything that comes before ':' in SkullOwner.Name
# - id: anything that comes after ':' in SkullOwner.Name
# - item: item used to place the head
#
# Player head's placement is detected if the item has
# {eroxified2:{phead:{detect:1b}}} in the NBT tag and
# the head's SkullOwner.Name matches that of the item.
##########################################