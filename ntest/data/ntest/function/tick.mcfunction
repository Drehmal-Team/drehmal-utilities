return fail
scoreboard players add @e[type=block_display,tag=ntest.wand_tentacle_degrade] ntest.timer 1
execute as @e[type=block_display,tag=ntest.wand_tentacle_degrade,scores={ntest.timer=8}] run data modify entity @s block_state.Name set value "purple_concrete"
execute as @e[type=block_display,tag=ntest.wand_tentacle_degrade,scores={ntest.timer=15}] run data modify entity @s block_state.Name set value "purple_stained_glass"
execute at @e[type=block_display,tag=ntest.wand_tentacle_degrade,scores={ntest.timer=19}] run particle dust_color_transition{from_color:[1,0,1],scale:1.3,to_color:[0,0,0]} ^ ^ ^0.5 0.4 0.4 0.4 0 10 force
execute at @e[type=block_display,tag=ntest.wand_tentacle_degrade,scores={ntest.timer=19},limit=1] run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 10
kill @e[type=block_display,tag=ntest.wand_tentacle_degrade,scores={ntest.timer=21}]
execute as @e[type=marker,tag=ntest.tentacle] at @s run function ntest:wand/tick
execute as @a at @s run function ntest:player/tick