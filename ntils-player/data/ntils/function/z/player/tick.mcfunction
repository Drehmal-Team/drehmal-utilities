execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

execute store result score #c ntils.z.player.temp if entity @a
execute unless score #c ntils.z.player.temp = #player.PREVIOUS_COUNT# ntils.z.global run function ntils:z/player/state/log/update

execute as @e[type=!#ntils:api/player/combat/nohitbox,tag=!ntils.z.player.combat.id] run function ntils:z/player/combat/id/main
execute as @a run function ntils:z/player/tick/as

tag @e[type=player,tag=ntils.API.player.state.dead] remove ntils.API.player.state.dead