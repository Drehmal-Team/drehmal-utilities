execute unless score @s ntils.z.uuid.get_int.3 matches -2147483648..2147483647 run return run function ntils:z/uuid/get_int/cache
data modify storage ntils:z uuid.get_int.out set value [I;0,0,0,0]
execute store result storage ntils:z uuid.get_int.out[0] int 1 run scoreboard players get @s ntils.z.uuid.get_int.0
execute store result storage ntils:z uuid.get_int.out[1] int 1 run scoreboard players get @s ntils.z.uuid.get_int.1
execute store result storage ntils:z uuid.get_int.out[2] int 1 run scoreboard players get @s ntils.z.uuid.get_int.2
execute store result storage ntils:z uuid.get_int.out[3] int 1 run scoreboard players get @s ntils.z.uuid.get_int.3