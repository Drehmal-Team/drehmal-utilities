execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

tag @s add ntils.z.player.state.fire.clear
tag @s remove ntils.z.player.state.fire.ignite
execute unless entity @a[tag=ntils.z.player.state.fire.ignite] run schedule clear ntils:z/player/state/fire/ignite/sch
schedule function ntils:z/player/state/fire/clear/sch 1t