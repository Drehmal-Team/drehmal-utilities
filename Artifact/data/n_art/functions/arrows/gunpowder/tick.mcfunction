execute if predicate n_art:riding_entity 
execute unless predicate n_art:riding_entity positioned ~ ~-0.125 ~ run function n_art:arrows/gunpowder/explode
execute on vehicle if entity @s[nbt={inGround:1b}] on passengers run kill @s[tag=n_art.arrow_tracker]