execute store result score #count utils.temp run data get storage utils:z countslist[-1]
scoreboard players operation #count utils.int += #count utils.temp
data remove storage utils:z countslist[-1]
execute if data storage utils:z countslist[] run function utils:z/item/replace/with_all/bundle_count