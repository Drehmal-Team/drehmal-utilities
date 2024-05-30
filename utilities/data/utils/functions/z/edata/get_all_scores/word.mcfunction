data modify storage utils:z edata.get_all_scores.macro set value {start:0,end:1}
execute store result score #heretemp utils.temp store result storage utils:z edata.get_all_scores.macro.start int 1 run scoreboard players get #here utils.temp
execute store result storage utils:z edata.get_all_scores.macro.end int 1 run scoreboard players operation #heretemp utils.temp += #clen utils.temp
function utils:z/edata/get_all_scores/validate with storage utils:z edata.get_all_scores.macro
scoreboard players remove #SCORE_COUNT# utils.global 1
data modify storage utils:z edata.get_all_scores.tempstr set value []
data modify storage utils:z edata.get_all_scores.string set string storage utils:z edata.get_all_scores.string 32
scoreboard players add #here utils.temp 32
scoreboard players operation #here utils.temp += #clen utils.temp
data modify storage utils:z edata.get_all_scores.lastchar set value ''
scoreboard players set #clen utils.temp 0
execute if score #SCORE_COUNT# utils.global matches 1.. run function utils:z/edata/get_all_scores/get_chars