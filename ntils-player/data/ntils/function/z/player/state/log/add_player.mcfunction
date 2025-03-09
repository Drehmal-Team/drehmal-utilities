function ntils:api/uuid/get_hex
loot replace block 0 0 0 container.0 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:player_head","functions":[{"function":"minecraft:fill_player_head","entity":"this"}]}]}]}

data modify storage ntils:z player.state.log.list append value {}
data modify storage ntils:z player.state.log.list[-1].Uuid set from storage ntils:api uuid.get_hex.out
data modify storage ntils:z player.state.log.list[-1].Name set from block 0 0 0 Items[0].components."minecraft:profile".name