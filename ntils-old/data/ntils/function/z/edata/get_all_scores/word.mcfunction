data modify storage ntils:z edata.get_all_scores.macro set value {start:0,end:1}
execute store result score #heretemp ntils.z.temp store result storage ntils:z edata.get_all_scores.macro.start int 1 run scoreboard players get #here ntils.z.temp
execute store result storage ntils:z edata.get_all_scores.macro.end int 1 run scoreboard players operation #heretemp ntils.z.temp += #clen ntils.z.temp
function ntils:z/edata/get_all_scores/validate with storage ntils:z edata.get_all_scores.macro
scoreboard players remove #SCORE_COUNT# ntils.z.global 1
data modify storage ntils:z edata.get_all_scores.tempstr set value []
data modify storage ntils:z edata.get_all_scores.string set string storage ntils:z edata.get_all_scores.string 32
scoreboard players add #here ntils.z.temp 32
scoreboard players operation #here ntils.z.temp += #clen ntils.z.temp
data modify storage ntils:z edata.get_all_scores.lastchar set value ''
scoreboard players set #clen ntils.z.temp 0
execute if score #SCORE_COUNT# ntils.z.global matches 1.. run function ntils:z/edata/get_all_scores/get_chars