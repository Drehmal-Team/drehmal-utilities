data modify storage ntils:z cast.ray.boxes set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.cast.hitbox.get

execute if score @s ntils.z.cast.ray.slow.vx matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cx -= @s ntils.z.cast.ray.slow.sx
execute if score @s ntils.z.cast.ray.slow.vy matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cy -= @s ntils.z.cast.ray.slow.sy
execute if score @s ntils.z.cast.ray.slow.vz matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cz -= @s ntils.z.cast.ray.slow.sz
execute if data storage ntils:z cast.ray.boxes[] run function ntils:z/cast/ray/slow/collide/shape/main
execute if score @s ntils.z.cast.ray.slow.vx matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cx += @s ntils.z.cast.ray.slow.sx
execute if score @s ntils.z.cast.ray.slow.vy matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cy += @s ntils.z.cast.ray.slow.sy
execute if score @s ntils.z.cast.ray.slow.vz matches 0.. run scoreboard players operation @s ntils.z.cast.ray.slow.cz += @s ntils.z.cast.ray.slow.sz
return run execute if score @s ntils.z.cast.ray.slow.df < @s ntils.z.cast.ray.slow.ds