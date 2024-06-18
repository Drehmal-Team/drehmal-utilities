$scoreboard players operation $(destination) $(score) = $(location) $(score)
$scoreboard players reset $(location) $(score)
#$tellraw @a ["",{"text":"score ","color":"dark_gray"},{"text":"$(score)","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"$(destination)","objective":"$(score)"},"color":"green"}]