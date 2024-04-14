tag @s add n_art.marker
tag @s add n_art.golem_tracker
$scoreboard players set @s n_art.golem.hp $(hp)
scoreboard players operation @s n_art.golem.hp *= #2000 n_art.const
ride @s mount @e[tag=n_art.temp,limit=1]