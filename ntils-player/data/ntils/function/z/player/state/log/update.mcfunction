execute if score #player.PREVIOUS_COUNT# ntils.z.global > #c ntils.z.player.temp if data storage ntils:z player.state.log.list[] run function ntils:z/player/state/log/check_player with storage ntils:z player.state.log.list[-1]

data modify storage ntils:z player.state.log.list set value []
execute in ntils:z/empty as @a run function ntils:z/player/state/log/add_player
scoreboard players operation #player.PREVIOUS_COUNT# ntils.z.global = #c ntils.z.player.temp