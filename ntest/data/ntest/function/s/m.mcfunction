execute positioned .0 0 .0 run teleport @s ^ ^ ^1
data modify storage ntest:s vector set from entity @s Pos
teleport @s ~ ~ ~
data modify entity @s Motion set from storage ntest:s vector