execute rotated ~ 0 run teleport @s ^ ^ ^1
data modify storage ntils:z math.quaternion.yaw set from entity @s Pos

execute rotated 0 ~ run teleport @s ^ ^ ^1
data modify storage ntils:z math.quaternion.pitch set from entity @s Pos