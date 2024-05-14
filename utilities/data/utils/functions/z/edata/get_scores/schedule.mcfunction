function utils:z/edata/get_scores/main with storage utils:z edata.get_scores
scoreboard players remove #SCORE_COUNT# utils.global 1
execute if score #SCORE_COUNT# utils.global matches 1.. run return run schedule function utils:z/edata/get_scores/schedule 2t

scoreboard players reset #GETTING_SCORES# utils.global