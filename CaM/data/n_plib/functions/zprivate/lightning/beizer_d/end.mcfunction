data modify entity @s Pos set from entity @s data.n_plib.end_pos
$execute facing entity @s feet run function n_plib:zprivate/lightning/beizer/light_loop {command:"$(command)"}
kill @s