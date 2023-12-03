#####################################################################
# phead.block/api/kill_stack.mcfunction
# written by Eroxen
#
# Kills the entire stack of the executing entity and all its passengers,
# all its passenger's passengers, etc.
#####################################################################

execute on passengers run function eroxified2:entity/api/kill_stack
kill @s