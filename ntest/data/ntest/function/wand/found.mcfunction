execute align xyz run teleport @s ~.5 ~.5 ~.5
data modify storage ntest:s vector set from entity @s Pos
execute store result score #math.bz.4.in.d.x ntils.API store result score #x2 ntest.temp store result score #2x2 ntest.temp run data get storage ntest:s vector[0] 1000
execute store result score #math.bz.4.in.d.y ntils.API store result score #y2 ntest.temp store result score #2y2 ntest.temp run data get storage ntest:s vector[1] 1000
execute store result score #math.bz.4.in.d.z ntils.API store result score #z2 ntest.temp store result score #2z2 ntest.temp run data get storage ntest:s vector[2] 1000
