return fail

execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

tag @s add ntils.z.player.state.fire.ignite
tag @s remove ntils.z.player.state.fire.clear
execute unless entity @a[tag=ntils.z.player.state.fire.clear] run schedule clear ntils:z/player/state/fire/clear/sch
schedule function ntils:z/player/state/fire/ignite/sch 1t