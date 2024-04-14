#scoreboard players operation __INPUT__ n_art.int = __DAMAGE__ n_art.int
#function n_art:math/calculate_damage

#scoreboard players operation #damage n_art.temp = __RETURN__ n_art.int

#scoreboard players operation __INPUT__ n_art.int += #impact n_art.int
#function n_art:math/calculate_damage

#execute store result storage n_art:storage tempMacro.damage float 0.01 run scoreboard players operation __RETURN__ n_art.int -= #damage n_art.temp

function n_art:enchants/impact/damage with storage n_art:storage tempMacro