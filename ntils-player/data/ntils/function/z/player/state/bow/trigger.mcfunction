advancement revoke @s only ntils:z/player/state/bow/trigger

execute unless score @s ntils.z.player.state.bow.timer matches 1.. run function ntils:z/player/state/bow/start

tag @s add ntils.z.player.state.bow.pulling
scoreboard players add @s ntils.z.player.state.bow.timer 1