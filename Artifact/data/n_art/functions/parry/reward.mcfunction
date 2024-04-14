advancement revoke @s only n_art:shield_parry
data modify storage n_art:storage tempMacro set value {id:-1}
execute store result storage n_art:storage tempMacro.id int 1 run scoreboard players get @s n_art.id
function n_art:parry/to_storage with storage n_art:storage tempMacro
execute store result score @s n_art.shield_parry run time query gametime
execute store result score #parry_time n_art.temp run data get storage n_art:storage tempShield.tag.Parry.time
scoreboard players operation @s n_art.shield_parry += #parry_time n_art.temp
tag @s add n_art.shield_parry