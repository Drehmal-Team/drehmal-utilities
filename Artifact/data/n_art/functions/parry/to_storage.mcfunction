execute if score @s n_art.shield_hand matches 1 run data modify storage n_art:storage tempShield set from entity @s SelectedItem
execute if score @s n_art.shield_hand matches 2 run data modify storage n_art:storage tempShield set from entity @s Inventory[{Slot:-106b}]
$data modify storage n_art:storage playerGlobal[{id:$(id)}].data.shield set from storage n_art:storage tempShield