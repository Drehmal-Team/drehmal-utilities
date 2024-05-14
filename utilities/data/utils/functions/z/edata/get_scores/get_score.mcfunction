data modify storage utils:z tempchar set string storage utils:z tempstr 0 1
execute if data storage utils:z {tempchar:'"'} run return 0

data modify storage utils:api concat.in append string storage utils:z tempstr 0 1
data modify storage utils:z tempstr set string storage utils:z tempstr 1
function utils:z/edata/get_scores/get_score