data modify storage utils:z tempstr set string block -30000000 1 15000000 LastOutput 153

data modify storage utils:api concat.in set value []
function utils:z/edata/get_scores/get_score
function utils:api/string/concat

data modify storage utils:z edata.get_scores.score set from storage utils:api concat.out

function utils:z/edata/get_scores/transfer with storage utils:z edata.get_scores

setblock -30000000 1 15000000 air
$setblock -30000000 1 15000000 command_block{auto:True,Command:"scoreboard players list $(location)"}
