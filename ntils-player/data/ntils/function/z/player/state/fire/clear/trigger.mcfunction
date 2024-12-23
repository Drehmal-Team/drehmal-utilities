say hu
scoreboard players reset @s ntils.z.player.state.fire.clear.trigger
execute unless entity @s[tag=ntils.z.player.state.fire.clear.adventure] run gamemode survival
execute if entity @s[tag=ntils.z.player.state.fire.clear.adventure] run gamemode adventure
tag @s remove ntils.z.player.state.fire.clear.adventure
advancement revoke @s only ntils:z/player/state/fire/clear/trigger