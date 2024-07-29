return fail

execute if score #GETTING_TIME# ntils.z.global matches 1 run return fail
scoreboard players set #TIME_SPENT# ntils.z.global 0
scoreboard players set #GETTING_TIME# ntils.z.global 1

scoreboard players add #HEAD_USERNAME# ntils.z.global 1
scoreboard players operation #HEAD_USERNAME# ntils.z.global %= #1000 ntils.z.const
execute store result storage ntils:z time.get.irl.macro.name int 1 run scoreboard players operation #HEAD_USERNAME# ntils.z.global > #100 ntils.z.const
function ntils:z/time/get/irl/place_head with storage ntils:z time.get.irl.macro
execute in ntils:z/empty run setblock 0 2 0 air
execute in ntils:z/empty run setblock 0 2 0 command_block{auto:True,Command:"help me"}
schedule function ntils:z/time/get/irl/schedule 1t