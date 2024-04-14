execute if entity @s[tag=n_art.mythic.frenzy] unless predicate n_art:holding/frenzy run function n_art:m/fzy/stop_hold
execute unless entity @s[tag=n_art.mythic.frenzy] if predicate n_art:holding/frenzy run function n_art:m/fzy/start_hold
