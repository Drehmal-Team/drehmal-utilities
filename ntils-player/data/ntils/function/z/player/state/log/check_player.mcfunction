$execute unless entity $(Uuid) run function #ntils:api/player/state/leave_game {Uuid:"$(Uuid)",Name:"$(Name)"}

data remove storage ntils:z player.state.log.list[-1]
execute if data storage ntils:z player.state.log.list[] run function ntils:z/player/state/log/check_player with storage ntils:z player.state.log.list[-1]