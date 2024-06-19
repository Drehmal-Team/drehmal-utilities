data modify storage ntils:z tempChar set from storage ntils:api parse.out[0]
$execute unless data storage ntils:z {tempChar:"|"} run data modify storage ntils:z $(list) append from storage ntils:z tempChar
data remove storage ntils:api parse.out[0]
$execute unless data storage ntils:z {tempChar:"|"} if data storage ntils:api parse.out[] run function ntils:z/tag_scores/copy_to_list {list:"$(list)"}
