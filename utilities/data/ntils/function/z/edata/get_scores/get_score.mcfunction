data modify storage ntils:z tempchar set string storage ntils:z tempstr 0 1
execute if data storage ntils:z {tempchar:'"'} run return 0

data modify storage ntils:api concat.in append string storage ntils:z tempstr 0 1
data modify storage ntils:z tempstr set string storage ntils:z tempstr 1
function ntils:z/edata/get_scores/get_score