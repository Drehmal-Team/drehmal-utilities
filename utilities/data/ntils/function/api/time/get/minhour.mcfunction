return fail

execute if score #GETTING_MINHOUR_TIME# ntils.z.global matches 1 run return fail
scoreboard players set #GETTING_MINHOUR_TIME# ntils.z.global 1

execute in ntils:z/empty run fill 0 2 0 0 3 0 air
execute in ntils:z/empty run setblock 0 2 0 command_block[facing=up]{auto:True,Command:"help me"}
execute in ntils:z/empty run setblock 0 3 0 chain_command_block[facing=up]{auto:True,Command:"function ntils:z/time/get/minhour/getdata"}
