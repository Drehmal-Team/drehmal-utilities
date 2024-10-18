data modify storage ntils:z tempString set value ""
data modify storage ntils:z tempString set string storage ntils:z templist[-1] 0 4
execute store success score #diff ntils.z.temp run data modify storage ntils:z tempString set value "scr|"
execute if score #diff ntils.z.temp matches 0 run function ntils:z/tag_scores/foundscore

data remove storage ntils:z templist[-1]
execute if data storage ntils:z templist[] run function ntils:z/tag_scores/iterate