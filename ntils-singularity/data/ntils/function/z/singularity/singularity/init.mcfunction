function ntils:z/singularity/process/output

scoreboard objectives add ntils.z.const dummy
scoreboard objectives add ntils.z.global dummy

scoreboard objectives add ntils.API dummy

# NUMERICAL CONSTANTS #

scoreboard players set #-1 ntils.z.const -1
scoreboard players set #100 ntils.z.const 100
scoreboard players set #120 ntils.z.const 120
scoreboard players set #180 ntils.z.const 180
scoreboard players set #1000 ntils.z.const 1000
scoreboard players set #10000 ntils.z.const 10000
scoreboard players set #1000000 ntils.z.const 1000000

scoreboard players set #2 ntils.z.const 2
scoreboard players set #25 ntils.z.const 25
scoreboard players set #2000 ntils.z.const 2000

scoreboard players set #3 ntils.z.const 3
scoreboard players set #360 ntils.z.const 360
scoreboard players set #333 ntils.z.const 333
scoreboard players set #36000 ntils.z.const 36000
scoreboard players set #333333 ntils.z.const 333333

scoreboard players set #4 ntils.z.const 4

scoreboard players set #5 ntils.z.const 5
scoreboard players set #500 ntils.z.const 500
scoreboard players set #559 ntils.z.const 559

scoreboard players set #6 ntils.z.const 6
scoreboard players set #6000 ntils.z.const 6000

scoreboard players set #8 ntils.z.const 8

scoreboard players set #9 ntils.z.const 9

# POWERS OF 2 #

scoreboard players set #2^6 ntils.z.const 64
scoreboard players set #2^8 ntils.z.const 256
scoreboard players set #2^12 ntils.z.const 4096
scoreboard players set #2^15 ntils.z.const 32768
scoreboard players set #2^16 ntils.z.const 65536
scoreboard players set #2^18 ntils.z.const 262144
scoreboard players set #2^24 ntils.z.const 16777215

# FORCELOADS #

execute in ntils:z/empty run forceload add 0 0
execute in ntils:z/empty unless loaded 0 0 0 run schedule function ntils:z/singularity/singularity/void/schedule 1t
execute in ntils:z/empty positioned 0 0 0 if loaded ~ ~ ~ run function #ntils:z/singularity/place_in_void