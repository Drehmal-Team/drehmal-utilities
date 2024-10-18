# UUID/GET_INT
#
# Gets the integer array representation of this entities UUID. Stores it at ntils:api uuid.to_int.out
#
# Performance: Excellent
#   Caches the entities UUID in scores, meaning that running this multiple times on the same entity results in far better performance than getting its UUID.
#   Always use this instead of getting UUID data.

execute unless score #uuid ntils.z.singularity.flag matches 1 run return fail
execute unless score @s ntils.z.uuid.get_int.3 matches -2147483648..2147483647 run return run function ntils:z/uuid/get_int/cache
data modify storage ntils:api uuid.get_int.out set value [I;0,0,0,0]
execute store result storage ntils:api uuid.get_int.out[0] int 1 run scoreboard players get @s ntils.z.uuid.get_int.0
execute store result storage ntils:api uuid.get_int.out[1] int 1 run scoreboard players get @s ntils.z.uuid.get_int.1
execute store result storage ntils:api uuid.get_int.out[2] int 1 run scoreboard players get @s ntils.z.uuid.get_int.2
execute store result storage ntils:api uuid.get_int.out[3] int 1 run scoreboard players get @s ntils.z.uuid.get_int.3