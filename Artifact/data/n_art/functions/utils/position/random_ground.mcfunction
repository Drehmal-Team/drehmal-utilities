$data modify storage n_art:storage utils.macro set value {cmd:"$(Command)",x:0,y:0}

execute store result storage n_art:storage utils.macro.x double 0.01 run random value -18000..18000
$execute store result storage n_art:storage utils.macro.y double 0.01 run random value $(RadiusMin)..$(RadiusMax)

function n_art:utils/position/random_ground/begin with storage n_art:storage utils.macro