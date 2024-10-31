particle explosion ~ ~ ~ 0.1 0.1 0.1 10 4 force
particle squid_ink ~ ~ ~ 1.8 1.8 1.8 0 160 force
particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.5 10 force
particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.5 10 force
playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 10
playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 10 0
tag @e[type=block_display,tag=ntest.wand_tentacle,predicate=ntest:idmatch] add ntest.wand_tentacle_degrade
execute as @e[type=!#ntils:api/nohitbox,distance=..9,predicate=!ntest:owner] run damage @s 30 magic by @p[predicate=ntest:owner]
kill @s
scoreboard players set #loop ntest.temp -100