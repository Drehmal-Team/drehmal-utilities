scoreboard players set @s utils.checked 1
data modify storage utils:z templist set from entity @s Tags
execute if data storage utils:z templist[] run function utils:z/tag_scores/iterate