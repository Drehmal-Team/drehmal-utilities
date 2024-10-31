execute if score #point_num ntest.global matches 0 run function ntest:arb/clear

scoreboard players set @s ntest.click 0
scoreboard players add #point_num ntest.global 1
execute summon text_display run function ntest:arb/place