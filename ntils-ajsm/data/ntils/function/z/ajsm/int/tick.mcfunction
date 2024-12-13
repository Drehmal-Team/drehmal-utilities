scoreboard players set @s ntils.API.ajsm.state 0
$execute store success score @s ntils.API.ajsm.state store success score #ajsm.MOVING ntils.API positioned as $(tracker) if entity @s[distance=0.001..] on vehicle at @s run teleport $(tracker) ~ ~ ~
$execute store success score #ajsm.ROTATING ntils.API positioned ^ ^ ^100000 rotated as $(tracker) positioned ^ ^ ^-1000000 if entity @s[distance=0.001..] on vehicle at @s run rotate $(tracker) ~ ~
execute if score #ajsm.ROTATING ntils.API matches 1.. run scoreboard players add @s ntils.API.ajsm.state 2
execute store success score #ajsm.ONGROUND ntils.API on vehicle if predicate ntils:z/ajsm/onground run scoreboard players add @s ntils.API.ajsm.state 4

scoreboard players add @s ntils.API.ajsm.time_in_current_state 1
$execute unless score @s ntils.API.ajsm.state = @s ntils.z.ajsm.old_state run function ntils:z/ajsm/int/state_change {on_state_change:"$(on_state_change)"}