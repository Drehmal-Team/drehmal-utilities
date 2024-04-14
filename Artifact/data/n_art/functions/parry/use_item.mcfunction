advancement revoke @s only n_art:use_item
execute unless score @s n_art.use_shield matches 1.. run function n_art:parry/start_shield
scoreboard players add @s n_art.use_shield 1
tag @s add n_art.use_shield
schedule function n_art:parry/use_shield 1t