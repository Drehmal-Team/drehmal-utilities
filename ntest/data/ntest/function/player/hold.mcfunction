execute store result score #tick ntest.temp run scoreboard players add @s ntest.hold 1
scoreboard players operation #tick ntest.temp %= #3 ntest.const
scoreboard players operation #id ntest.temp = @s ntils.API.id
tag @s add ntest.temp_owner
execute if score #tick ntest.temp matches 0 anchored eyes positioned ^ ^ ^3 summon marker run function ntest:wand/shoot
tag @s remove ntest.temp_owner