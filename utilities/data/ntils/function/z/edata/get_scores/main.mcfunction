execute in ntils:z/empty run data modify storage ntils:z tempstr set string block 0 1 0 LastOutput 153

data modify storage ntils:api concat.in set value []
function ntils:z/edata/get_scores/get_score
function ntils:api/string/concat

data modify storage ntils:z edata.get_scores.score set from storage ntils:api concat.out

function ntils:z/edata/get_scores/transfer with storage ntils:z edata.get_scores

execute in ntils:z/empty run setblock 0 1 0 air
$execute in ntils:z/empty run setblock 0 1 0 command_block{auto:True,Command:"scoreboard players list $(location)"}
