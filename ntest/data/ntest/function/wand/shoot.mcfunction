#execute positioned ~ ~25 ~ run teleport @s ^ ^ ^-8
data modify storage ntest:s vector set from entity @s Pos
data modify storage ntest:s vector_s set from storage ntest:s vector
execute store result score #math.bz.4.in.a.x ntils.API store result score #x1 ntest.temp store result score #2x1 ntest.temp run data get storage ntest:s vector[0] 1000
execute store result score #math.bz.4.in.a.y ntils.API store result score #y1 ntest.temp store result score #2y1 ntest.temp run data get storage ntest:s vector[1] 1000
execute store result score #math.bz.4.in.a.z ntils.API store result score #z1 ntest.temp store result score #2z1 ntest.temp run data get storage ntest:s vector[2] 1000
scoreboard players set #loop ntest.temp 500
scoreboard players set #math.bz.4.in.iterations ntils.API 8
function ntest:wand/find_target
#scoreboard players operation #math.bz.4.in.iterations ntils.API *= #4 ntest.const
data modify entity @s Pos set from storage ntest:s vector_s

#function ntils:api/math/bz/4/c/through
function ntest:wand/random_pt

function ntils:api/math/bz/4/i/s/start
tag @s add ntest.tentacle
execute store result score @s ntest.id run scoreboard players add #ID ntest.global 1

scoreboard players operation @s ntest.owner = #id ntest.temp
execute at @s run playsound minecraft:block.enchantment_table.use player @a
execute at @s run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0
execute at @s run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0 16
