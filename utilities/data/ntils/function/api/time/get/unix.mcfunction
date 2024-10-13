return fail

execute if score #GETTING_UNIX_TIME# ntils.z.global matches 1 run return fail
scoreboard players set #TIME_SPENT_UNIX# ntils.z.global 0
scoreboard players set #GETTING_UNIX_TIME# ntils.z.global 1

scoreboard players add #HEAD_USERNAME# ntils.z.global 1
scoreboard players operation #HEAD_USERNAME# ntils.z.global %= #1000 ntils.z.const
execute store result storage ntils:z time.get.unix.macro.name int 1 run scoreboard players operation #HEAD_USERNAME# ntils.z.global > #100 ntils.z.const
function ntils:z/time/get/unix/place_head with storage ntils:z time.get.unix.macro
schedule function ntils:z/time/get/unix/schedule 1t