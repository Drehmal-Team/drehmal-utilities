tag @s add n_art.item
data modify storage n_art:storage tempItem set from entity @s Item
execute if data storage n_art:storage tempItem.tag.n_art.drop run function n_art:item/drop