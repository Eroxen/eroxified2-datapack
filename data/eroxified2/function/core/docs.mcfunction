##########################################
# Function tag #eroxified2:core/preload_packs
##########################################
# Gets called on /reload, after Eroxified2 has
# run its own loading functions. In this phase,
# packs can submit their own signature.
##########################################

##########################################
# Function tag #eroxified2:core/load_packs
##########################################
# Gets called on /reload, after Eroxified2
# loading has been completed without errors.
# In this phase, packs can start running
# clocks and do all other loading stuff.
##########################################

##########################################
# Function tag #eroxified2:core/load_packs_player
##########################################
# Always gets called after #eroxified2:core/load_packs.
# Gets called when the first player joins the world after
# loading, or is called immediately if a player was already
# present (e.g. using /reload)
##########################################

##########################################
# Function tag #eroxified2:core/tick_packs
##########################################
# Runs every tick, but only after the loading
# process is complete.
##########################################

##########################################
# Function tag #eroxified2:core/player_joined
##########################################
# Called on a player when they join the world
# or when /reload is run.
# Only runs after Eroxified2 finished loading.
##########################################