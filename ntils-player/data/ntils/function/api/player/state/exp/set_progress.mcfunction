experience set @s 38 levels
experience set @s 0 points

scoreboard players operation #exp.amt ntils.z.player.temp = #player.state.exp.set_progress.in ntils.API
scoreboard players operation #exp.amt ntils.z.player.temp *= #player.state.EXP_BAR_SIZE# ntils.z.global
scoreboard players operation #exp.amt ntils.z.player.temp /= #1000 ntils.z.const

execute if score #exp.amt ntils.z.player.temp matches 128.. run experience add @s 128 points
execute if score #exp.amt ntils.z.player.temp matches 128.. run scoreboard players remove #exp.amt ntils.z.player.temp 128
execute if score #exp.amt ntils.z.player.temp matches 64.. run experience add @s 64 points
execute if score #exp.amt ntils.z.player.temp matches 64.. run scoreboard players remove #exp.amt ntils.z.player.temp 64
execute if score #exp.amt ntils.z.player.temp matches 32.. run experience add @s 32 points
execute if score #exp.amt ntils.z.player.temp matches 32.. run scoreboard players remove #exp.amt ntils.z.player.temp 32
execute if score #exp.amt ntils.z.player.temp matches 16.. run experience add @s 16 points
execute if score #exp.amt ntils.z.player.temp matches 16.. run scoreboard players remove #exp.amt ntils.z.player.temp 16
execute if score #exp.amt ntils.z.player.temp matches 8.. run experience add @s 8 points
execute if score #exp.amt ntils.z.player.temp matches 8.. run scoreboard players remove #exp.amt ntils.z.player.temp 8
execute if score #exp.amt ntils.z.player.temp matches 4.. run experience add @s 4 points
execute if score #exp.amt ntils.z.player.temp matches 4.. run scoreboard players remove #exp.amt ntils.z.player.temp 4
execute if score #exp.amt ntils.z.player.temp matches 2.. run experience add @s 2 points
execute if score #exp.amt ntils.z.player.temp matches 2.. run scoreboard players remove #exp.amt ntils.z.player.temp 2
execute if score #exp.amt ntils.z.player.temp matches 1.. run experience add @s 1 points
execute if score #exp.amt ntils.z.player.temp matches 1.. run scoreboard players remove #exp.amt ntils.z.player.temp 1

experience set @s 0 levels