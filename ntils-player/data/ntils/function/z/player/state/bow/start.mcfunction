tag @s add ntils.API.player.state.bow.using
execute if items entity @s weapon.mainhand bow run tag @s add ntils.API.player.state.bow.in_mainhand
tag @s[tag=!ntils.API.player.state.bow.in_mainhand] add ntils.API.player.state.bow.in_offhand
function #ntils:api/player/state/bow/start_use
