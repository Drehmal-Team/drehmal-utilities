data modify storage utils:z tempString set value ""
data modify storage utils:z tempString set string storage utils:z templist[-1] 0 4
execute store success score #diff utils.temp run data modify storage utils:z tempString set value "scr|"
execute if score #diff utils.temp matches 0 run function utils:z/tag_scores/foundscore

data remove storage utils:z templist[-1]
execute if data storage utils:z templist[] run function utils:z/tag_scores/iterate