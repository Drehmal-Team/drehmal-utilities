scoreboard objectives add ntest.temp dummy
scoreboard objectives add ntest.global dummy

scoreboard objectives add ntest.click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ntest.click_timer dummy
scoreboard objectives add ntest.hold dummy
scoreboard objectives add ntest.timer dummy

scoreboard objectives add ntest.id dummy
scoreboard objectives add ntest.owner dummy

scoreboard objectives add ntest.const dummy
scoreboard players set #50 ntest.const 50
scoreboard players set #100 ntest.const 100
scoreboard players set #1000 ntest.const 1000
scoreboard players set #4 ntest.const 4
scoreboard players set #3 ntest.const 3
scoreboard players set #2 ntest.const 2
scoreboard players set #-1 ntest.const -1

scoreboard players set #CONTROL_POINT_SCALE_TENTACLE# ntest.const 100

data modify storage ntest:s pos set value [0d,0d,0d]