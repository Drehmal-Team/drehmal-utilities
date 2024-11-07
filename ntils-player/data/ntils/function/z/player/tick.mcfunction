execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

execute as @e[type=!#ntils:api/player/combat/nohitbox,tag=!ntils.z.player.combat.id] run function ntils:z/player/combat/id/main
execute as @a run function ntils:z/player/tick/as