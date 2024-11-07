scoreboard players add #player.combat.ID# ntils.z.global 1
execute store result score #id ntils.z.player.temp store result storage ntils:z player.combat.id.m.i int 1 run scoreboard players operation #player.combat.ID# ntils.z.global %= #2^8 ntils.z.const

function ntils:z/player/combat/id/tag with storage ntils:z player.combat.id.m
tag @s add ntils.z.player.combat.id
execute if score #id ntils.z.player.temp matches 128.. run tag @s add ntils.z.player.combat.id.7
execute unless score #id ntils.z.player.temp matches 128.. run tag @s add ntils.z.player.combat.id.7.n
execute if score #id ntils.z.player.temp matches 128.. run scoreboard players remove #id ntils.z.player.temp 128
execute if score #id ntils.z.player.temp matches 64.. run tag @s add ntils.z.player.combat.id.6
execute unless score #id ntils.z.player.temp matches 64.. run tag @s add ntils.z.player.combat.id.6.n
execute if score #id ntils.z.player.temp matches 64.. run scoreboard players remove #id ntils.z.player.temp 64
execute if score #id ntils.z.player.temp matches 32.. run tag @s add ntils.z.player.combat.id.5
execute unless score #id ntils.z.player.temp matches 32.. run tag @s add ntils.z.player.combat.id.5.n
execute if score #id ntils.z.player.temp matches 32.. run scoreboard players remove #id ntils.z.player.temp 32
execute if score #id ntils.z.player.temp matches 16.. run tag @s add ntils.z.player.combat.id.4
execute unless score #id ntils.z.player.temp matches 16.. run tag @s add ntils.z.player.combat.id.4.n
execute if score #id ntils.z.player.temp matches 16.. run scoreboard players remove #id ntils.z.player.temp 16
execute if score #id ntils.z.player.temp matches 8.. run tag @s add ntils.z.player.combat.id.3
execute unless score #id ntils.z.player.temp matches 8.. run tag @s add ntils.z.player.combat.id.3.n
execute if score #id ntils.z.player.temp matches 8.. run scoreboard players remove #id ntils.z.player.temp 8
execute if score #id ntils.z.player.temp matches 4.. run tag @s add ntils.z.player.combat.id.2
execute unless score #id ntils.z.player.temp matches 4.. run tag @s add ntils.z.player.combat.id.2.n
execute if score #id ntils.z.player.temp matches 4.. run scoreboard players remove #id ntils.z.player.temp 4
execute if score #id ntils.z.player.temp matches 2.. run tag @s add ntils.z.player.combat.id.1
execute unless score #id ntils.z.player.temp matches 2.. run tag @s add ntils.z.player.combat.id.1.n
execute if score #id ntils.z.player.temp matches 2.. run scoreboard players remove #id ntils.z.player.temp 2
execute if score #id ntils.z.player.temp matches 1.. run tag @s add ntils.z.player.combat.id.0
execute unless score #id ntils.z.player.temp matches 1.. run tag @s add ntils.z.player.combat.id.0.n
execute if score #id ntils.z.player.temp matches 1.. run scoreboard players remove #id ntils.z.player.temp 1