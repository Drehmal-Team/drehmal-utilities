data modify storage utils:z edata.get_all_scores.tempchar set string storage utils:z edata.get_all_scores.string 0 1
execute if data storage utils:z {edata:{get_all_scores:{tempchar:'"'}}} unless data storage utils:z {edata:{get_all_scores:{lastchar:'\\'}}} run return run function utils:z/edata/get_all_scores/word
scoreboard players add #clen utils.temp 1
data modify storage utils:z edata.get_all_scores.string set string storage utils:z edata.get_all_scores.string 1
data modify storage utils:z edata.get_all_scores.lastchar set from storage utils:z edata.get_all_scores.tempchar
function utils:z/edata/get_all_scores/get_chars