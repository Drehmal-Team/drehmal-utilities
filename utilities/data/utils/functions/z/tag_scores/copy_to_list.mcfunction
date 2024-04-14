data modify storage utils:z tempChar set from storage utils:api parse.out[0]
$execute unless data storage utils:z {tempChar:"|"} run data modify storage utils:z $(list) append from storage utils:z tempChar
data remove storage utils:api parse.out[0]
$execute unless data storage utils:z {tempChar:"|"} if data storage utils:api parse.out[] run function utils:z/tag_scores/copy_to_list {list:"$(list)"}
