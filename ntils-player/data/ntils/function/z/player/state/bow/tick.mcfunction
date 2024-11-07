execute unless score @s ntils.z.player.state.bow.used matches 1.. if entity @s[tag=ntils.z.player.state.bow.pulling] run return run tag @s remove ntils.z.player.state.bow.pulling

execute if score @s ntils.z.player.state.bow.used matches 1 run function #ntils:api/player/state/bow/shoot

tag @s remove ntils.z.player.state.bow.pulling
scoreboard players reset @s ntils.z.player.state.bow.timer
scoreboard players reset @s ntils.z.player.state.bow.used
tag @s remove ntils.API.player.state.bow.in_mainhand
tag @s remove ntils.API.player.state.bow.in_offhand
tag @s remove ntils.API.player.state.bow.using

function #ntils:api/player/state/bow/stop_use