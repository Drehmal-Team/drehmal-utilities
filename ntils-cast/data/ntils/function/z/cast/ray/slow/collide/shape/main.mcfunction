# X ------------------------------------------------------------------------------------------------
execute store result score #tmi ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][0] 134217727
execute store result score #tma ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][3] 134217727
scoreboard players operation #tmi ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vx
scoreboard players operation #tma ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vx
execute if score @s ntils.z.cast.ray.slow.vx matches ..-1 run scoreboard players operation #tmi ntils.z.cast.temp >< #tma ntils.z.cast.temp
scoreboard players operation #tmi ntils.z.cast.temp += #tx ntils.z.cast.temp
scoreboard players operation #tma ntils.z.cast.temp += #tx ntils.z.cast.temp

# Y ------------------------------------------------------------------------------------------------
execute store result score #by1 ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][1] 134217727
execute store result score #by2 ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][4] 134217727
scoreboard players operation #by1 ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vy
scoreboard players operation #by2 ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vy
execute if score @s ntils.z.cast.ray.slow.vy matches ..-1 run scoreboard players operation #by1 ntils.z.cast.temp >< #by2 ntils.z.cast.temp
scoreboard players operation #by1 ntils.z.cast.temp += #ty ntils.z.cast.temp
scoreboard players operation #by2 ntils.z.cast.temp += #ty ntils.z.cast.temp

# Z ------------------------------------------------------------------------------------------------
execute store result score #bz1 ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][2] 134217727
execute store result score #bz2 ntils.z.cast.temp run data get storage ntils:z cast.ray.boxes[-1][5] 134217727
scoreboard players operation #bz1 ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vz
scoreboard players operation #bz2 ntils.z.cast.temp /= @s ntils.z.cast.ray.slow.vz
execute if score @s ntils.z.cast.ray.slow.vz matches ..-1 run scoreboard players operation #bz1 ntils.z.cast.temp >< #bz2 ntils.z.cast.temp
scoreboard players operation #bz1 ntils.z.cast.temp += #tz ntils.z.cast.temp
scoreboard players operation #bz2 ntils.z.cast.temp += #tz ntils.z.cast.temp


# find tmin and tmax -------------------------------------------------------------------------------
scoreboard players operation #tmi ntils.z.cast.temp > #by1 ntils.z.cast.temp
scoreboard players operation #tmi ntils.z.cast.temp > #bz1 ntils.z.cast.temp

scoreboard players operation #tma ntils.z.cast.temp < #by2 ntils.z.cast.temp
scoreboard players operation #tma ntils.z.cast.temp < #bz2 ntils.z.cast.temp

# tmi reflects the distance between ray and two minimum edges of the AABB (closer edges), tma relfects 
# distance between ray and two maximal edges of the AABB (further edges). if tma > 0 then the ray is fully
# past the aabb and if tmi > tma then the ray isnt intersecting it at all. if neither of those are true
# then the ray is intersecting and tmi is the distance between the origin and the point of contact.
# as such, we compare tmi to both d (our max distance) and df (the distance away the hit point is).
# if its less than both, then its the closest intersection point of the ray and the block and respects
# the distance requirement we set at the start
#
# full credit to bookshelf for this, i would have never come up with this on my own
execute unless score #tma ntils.z.cast.temp matches ..0 unless score #tmi ntils.z.cast.temp > #tma ntils.z.cast.temp unless score #tmi ntils.z.cast.temp > @s ntils.z.cast.ray.slow.ds unless score #tmi ntils.z.cast.temp > @s ntils.z.cast.ray.slow.df run function ntils:z/cast/ray/slow/collide/shape/find

data remove storage ntils:z cast.ray.boxes[-1]
execute if data storage ntils:z cast.ray.boxes[] run function ntils:z/cast/ray/slow/collide/shape/main
