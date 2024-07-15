data modify entity @s Pos set from entity @s data.ntils.z.particle.lightning.end_pos
$execute facing entity @s feet run $(command)
execute in ntils:z/empty run teleport @s ~ ~ ~
kill @s