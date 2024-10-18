data modify storage ntils:api parse.in set string storage ntils:z templist[-1] 4
data modify storage ntils:z macro set value {score:"name",val:-1}
function ntils:api/string/parse
data modify storage ntils:z scoreNameList set value []
data modify storage ntils:z scoreValList set value []
function ntils:z/tag_scores/copy_to_list {list:"scoreNameList"}
function ntils:z/tag_scores/copy_to_list {list:"scoreValList"}
data modify storage ntils:api concat.in set from storage ntils:z scoreNameList
function ntils:api/string/concat
data modify storage ntils:z macro.score set from storage ntils:api concat.out
data modify storage ntils:api concat.in set from storage ntils:z scoreValList
function ntils:api/string/concat
data modify storage ntils:z macro.val set from storage ntils:api concat.out
function ntils:z/tag_scores/setscore with storage ntils:z macro