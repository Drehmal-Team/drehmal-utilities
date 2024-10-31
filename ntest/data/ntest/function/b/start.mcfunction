data modify storage ntest:s vector set from entity @s Pos
execute store result score #math.bz.4.in.a.x ntils.API run data get storage ntest:s vector[0] 1000
execute store result score #math.bz.4.in.a.y ntils.API run data get storage ntest:s vector[1] 1000
execute store result score #math.bz.4.in.a.z ntils.API run data get storage ntest:s vector[2] 1000
execute rotated ~ -45 run teleport @s ^ ^ ^30
data modify storage ntest:s vector set from entity @s Pos
execute store result score #math.bz.4.in.b.x ntils.API run data get storage ntest:s vector[0] 1000
execute store result score #math.bz.4.in.b.y ntils.API run data get storage ntest:s vector[1] 1000
execute store result score #math.bz.4.in.b.z ntils.API run data get storage ntest:s vector[2] 1000
execute rotated ~ 0 run teleport @s ^ ^-8 ^15
data modify storage ntest:s vector set from entity @s Pos
execute store result score #math.bz.4.in.d.x ntils.API run data get storage ntest:s vector[0] 1000
execute store result score #math.bz.4.in.d.y ntils.API run data get storage ntest:s vector[1] 1000
execute store result score #math.bz.4.in.d.z ntils.API run data get storage ntest:s vector[2] 1000
teleport @s ~ ~ ~
scoreboard players set #math.bz.4.in.iterations ntils.API 30
function ntils:api/math/bz/4/i/s/start
#return run kill @s
scoreboard players set #loop ntest.temp 30
function ntest:b/loop