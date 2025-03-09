execute unless score $ntils:player.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

scoreboard objectives add ntils.API.player.id dummy
scoreboard objectives add ntils.API.player.state.inv_update.IGNORE dummy
scoreboard objectives add ntils.API.player.state.mainhand_update.IGNORE dummy

scoreboard objectives add ntils.z.player.id dummy
scoreboard objectives add ntils.z.player.temp dummy

scoreboard objectives add ntils.z.player.state.bow.timer dummy
scoreboard objectives add ntils.z.player.state.bow.used minecraft.used:bow
scoreboard objectives add ntils.z.player.state.dead minecraft.custom:deaths
scoreboard objectives add ntils.z.player.state.fire.clear.trigger dummy

scoreboard players set #player.state.EXP_BAR_SIZE# ntils.z.global 182