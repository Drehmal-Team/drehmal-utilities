tag @s add n_art.fzy.sweep
tag @s add n_art.marker
execute if score #rand n_art.temp matches 1.. run tag @s add n_art.fzy.reverse
$execute rotated ~ 0 run teleport @s ~ ~ ~ facing ^$(rand) ^1.5 ^ 