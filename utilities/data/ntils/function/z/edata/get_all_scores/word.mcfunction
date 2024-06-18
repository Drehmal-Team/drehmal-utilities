data modify storage ntils:z edata.get_all_scores.macro set value {start:0,end:1}
execute store result score #heretemp ntils.temp store result storage ntils:z edata.get_all_scores.macro.start int 1 run scoreboard players get #here ntils.temp
execute store result storage ntils:z edata.get_all_scores.macro.end int 1 run scoreboard players operation #heretemp ntils.temp += #clen ntils.temp
function ntils:z/edata/get_all_scores/validate with storage ntils:z edata.get_all_scores.macro
scoreboard players remove #SCORE_COUNT# ntils.global 1
data modify storage ntils:z edata.get_all_scores.tempstr set value []
data modify storage ntils:z edata.get_all_scores.string set string storage ntils:z edata.get_all_scores.string 32
scoreboard players add #here ntils.temp 32
scoreboard players operation #here ntils.temp += #clen ntils.temp
data modify storage ntils:z edata.get_all_scores.lastchar set value ''
scoreboard players set #clen ntils.temp 0
execute if score #SCORE_COUNT# ntils.global matches 1.. run function ntils:z/edata/get_all_scores/get_chars