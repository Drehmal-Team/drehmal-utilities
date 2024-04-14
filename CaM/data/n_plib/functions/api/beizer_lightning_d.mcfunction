$data modify storage n_plib:storage macro set value {command:"$(Command)",end_pos:[]}
$scoreboard players set #steps n_plib.temp $(Steps)
$scoreboard players set #delay n_plib.temp $(Delay)
tag @s add n_plib.beizer_d
$function n_plib:zprivate/lightning/beizer_d/main {command:"$(Command)"}