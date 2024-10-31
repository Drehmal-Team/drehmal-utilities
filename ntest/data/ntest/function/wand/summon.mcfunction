teleport @s ~ ~ ~ ~ ~
data modify storage ntest:s tempdisp set value {Tags:["ntest.wand_tentacle"],view_range:3f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,0f],scale:[0.6f,0.6f,1f]},block_state:{Name:"minecraft:black_concrete"}}
execute store result storage ntest:s tempdisp.transformation.scale[2] float 0.1 run scoreboard players get #dist ntest.temp
data modify entity @s {} merge from storage ntest:s tempdisp
scoreboard players operation @s ntest.id = #id ntest.temp