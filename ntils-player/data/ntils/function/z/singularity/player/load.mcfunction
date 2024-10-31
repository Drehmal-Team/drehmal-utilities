execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

scoreboard objectives add ntils.API.player.id dummy
scoreboard objectives add ntils.API.player.state.inv_update.IGNORE dummy
scoreboard objectives add ntils.API.player.state.mainhand_update.IGNORE dummy



scoreboard objectives add ntils.z.player.id dummy
scoreboard objectives add ntils.z.player.temp dummy

scoreboard objectives add ntils.z.player.state.fire.clear.trigger dummy