execute store result score #count ntils.z.temp run data get storage ntils:z countslist[-1]
scoreboard players operation #count ntils.z.int += #count ntils.z.temp
data remove storage ntils:z countslist[-1]
execute if data storage ntils:z countslist[] run function ntils:z/item/replace/with_all/bundle_count