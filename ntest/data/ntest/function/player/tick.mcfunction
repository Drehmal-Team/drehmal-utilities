execute if score @s ntest.click matches 1.. run scoreboard players set @s ntest.click_timer 5
scoreboard players reset @s ntest.click
scoreboard players remove @s ntest.click_timer 1
execute if score @s ntest.click_timer matches 1.. run function ntest:player/hold
execute unless score @s ntest.click_timer matches 1.. if score @s ntest.hold matches 1.. run function ntest:player/end_hold