execute store result score #count ntils.temp run data get storage ntils:z countslist[-1]
scoreboard players operation #count ntils.int += #count ntils.temp
data remove storage ntils:z countslist[-1]
execute if data storage ntils:z countslist[] run function ntils:z/item/replace/with_all/bundle_count