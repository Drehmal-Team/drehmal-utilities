scoreboard players set @s ntils.z.tag_scores.checked 1
data modify storage ntils:z templist set from entity @s Tags
execute if data storage ntils:z templist[] run function ntils:z/tag_scores/iterate