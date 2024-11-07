execute unless predicate ntils:z/player/id/correct run function ntils:z/player/id/check

execute if score @s ntils.z.player.state.bow.timer matches 1.. run function ntils:z/player/state/bow/tick

execute store result storage ntils:z player.tick.m.id int 1 run scoreboard players get @s ntils.z.player.id
execute in ntils:z/empty run item replace block 0 0 0 container.0 with stone[custom_data={ntils:{z:{impossible:True}}}]
execute if items entity @s weapon.mainhand * in ntils:z/empty run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute in ntils:z/empty store result score #diff ntils.z.player.temp run function ntils:z/player/tick/m with storage ntils:z player.tick.m

execute if score #diff ntils.z.player.temp matches 1 unless score @s ntils.API.player.state.mainhand_update.IGNORE matches 1.. run function #ntils:api/player/state/mainhand_update
execute if entity @s[advancements={ntils:z/player/state/inv_update/trigger=true}] run function ntils:z/player/state/inv_update/trigger

function #ntils:z/player/tick