scoreboard players add @s ntest.timer 1
scoreboard players operation #id ntest.temp = @s ntest.id
scoreboard players operation #owner ntest.temp = @s ntest.owner
execute if score @s ntest.timer matches 400.. run return run function ntest:wand/hit
scoreboard players set #loop ntest.temp 4
function ntest:wand/loop