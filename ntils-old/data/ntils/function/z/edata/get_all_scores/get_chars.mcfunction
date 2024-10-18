data modify storage ntils:z edata.get_all_scores.tempchar set string storage ntils:z edata.get_all_scores.string 0 1
execute if data storage ntils:z {edata:{get_all_scores:{tempchar:'"'}}} unless data storage ntils:z {edata:{get_all_scores:{lastchar:'\\'}}} run return run function ntils:z/edata/get_all_scores/word
scoreboard players add #clen ntils.z.temp 1
data modify storage ntils:z edata.get_all_scores.string set string storage ntils:z edata.get_all_scores.string 1
data modify storage ntils:z edata.get_all_scores.lastchar set from storage ntils:z edata.get_all_scores.tempchar
function ntils:z/edata/get_all_scores/get_chars