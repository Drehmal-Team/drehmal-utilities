function ntils:z/edata/get_scores/main with storage ntils:z edata.get_scores
scoreboard players remove #SCORE_COUNT# ntils.global 1
execute if score #SCORE_COUNT# ntils.global matches 1.. run return run schedule function ntils:z/edata/get_scores/schedule 2t

scoreboard players reset #GETTING_SCORES# ntils.global