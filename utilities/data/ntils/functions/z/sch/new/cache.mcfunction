tag @s add ntils.sch.cache
data modify storage ntils:z sch.cache.uuid set value [I;0,0,0,0]
data modify storage ntils:z sch.cache.uuid set from entity @s UUID
execute store result score @s ntils.sch.cache.0 run data get storage ntils:z sch.cache.uuid[0]
execute store result score @s ntils.sch.cache.1 run data get storage ntils:z sch.cache.uuid[1]
execute store result score @s ntils.sch.cache.2 run data get storage ntils:z sch.cache.uuid[2]
execute store result score @s ntils.sch.cache.3 run data get storage ntils:z sch.cache.uuid[3]