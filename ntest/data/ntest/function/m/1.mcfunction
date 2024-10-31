scoreboard players add #ticker ntest.temp 1
execute store result storage ntest:s macro.x double 1 run scoreboard players operation #ticker ntest.temp %= #50 ntest.const
function ntest:m/1_m with storage ntest:s macro