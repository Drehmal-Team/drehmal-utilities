execute store result score #temp ntils.z.player.temp run data get storage ntils:z player.id.temp[-1].id
data remove storage ntils:z player.id.temp[-1]
scoreboard players operation #player.ID# ntils.z.global > #temp ntils.z.player.temp
execute if data storage ntils:z player.id.temp[] run function ntils:z/player/id/get_highest_from_storage