data modify storage utils:api parse.in set string storage utils:z templist[-1] 4
data modify storage utils:z macro set value {score:"name",val:-1}
function utils:api/string/parse
data modify storage utils:z scoreNameList set value []
data modify storage utils:z scoreValList set value []
function utils:z/tag_scores/copy_to_list {list:"scoreNameList"}
function utils:z/tag_scores/copy_to_list {list:"scoreValList"}
data modify storage utils:api concat.in set from storage utils:z scoreNameList
function utils:api/string/concat
data modify storage utils:z macro.score set from storage utils:api concat.out
data modify storage utils:api concat.in set from storage utils:z scoreValList
function utils:api/string/concat
data modify storage utils:z macro.val set from storage utils:api concat.out
function utils:z/tag_scores/setscore with storage utils:z macro