execute if score #SCORE_COUNT# ntils.global matches 0..9 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 118
execute if score #SCORE_COUNT# ntils.global matches 10..99 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 119
execute if score #SCORE_COUNT# ntils.global matches 100..999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 120
execute if score #SCORE_COUNT# ntils.global matches 1000..9999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 121
execute if score #SCORE_COUNT# ntils.global matches 10000..99999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 122
execute if score #SCORE_COUNT# ntils.global matches 100000..999999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 123
execute if score #SCORE_COUNT# ntils.global matches 1000000..9999999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 124
execute if score #SCORE_COUNT# ntils.global matches 10000000..99999999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 125
execute if score #SCORE_COUNT# ntils.global matches 100000000..999999999 run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 126
execute if score #SCORE_COUNT# ntils.global matches 1000000000.. run data modify storage ntils:z edata.get_all_scores.string set string block -30000000 1 15000000 LastOutput 127

scoreboard players set #here ntils.temp 0

data modify storage ntils:z edata.get_all_scores.source set from storage ntils:z edata.get_all_scores.string

data modify storage ntils:z edata.get_all_scores.tempstr set value []
data modify storage ntils:z edata.get_all_scores.lastchar set value ''
scoreboard players set #clen ntils.temp 0
function ntils:z/edata/get_all_scores/get_chars

data modify storage ntils:api get_all_scores.output set from storage ntils:z edata.get_all_scores.output

scoreboard players reset #GETTING_SCORES# ntils.global