tag @s remove ntils.z.player.state.fire.clear
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail
execute if entity @s[gamemode=adventure] run tag @s add ntils.z.player.state.fire.clear.adventure
gamemode creative
scoreboard players set @s ntils.z.player.state.fire.clear.trigger 1