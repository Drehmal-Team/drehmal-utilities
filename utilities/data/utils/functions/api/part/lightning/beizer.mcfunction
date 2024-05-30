# PART/LIGHTING/BEIZER
#
# This is beizer lightning. Run like this: execute positioned x y z summon marker positioned x2 y2 z2 run function utils:api/part/lightning/beizer {Steps:<>,Delay:<>,Command:<>}
#
# The start of the lightning will be at x y z and the end will be at x2 y2 z2. Think of it like this: marker location is the start, and the final function context is the end
#
# MACRO INPUTS:
#   -Steps: The amount of ticks the lightning should take. Set to 1 to make the effect instant.
#   -Delay: Sets the lightning to skip running Command for a certain amount of steps. Set to 0 or 1 to make it not skip it at all.
#   -Command: The command that will be run at each point of the randomized beizer curve. NOTE: This will not do any point-to-point raycasting for you!
#
# This does not handle the actual particles! To make something like a point-to-point raycast, set Command to a function that looks like this:
# | particle end_rod
# | execute positioned ^ ^ ^.1 unless entity @s[distance=..0.05001] run function this
#
# The command is run at the start point of where a raycast would want to be, facing in the direction of the next point. The end of the raycast is the entity location, which SHOULD NOT BE MODIFIED
#
# ADDITIONAL INPUTS:
# - #DIRECTION_MODE# utils.API: Set this scoreboard to 1 to make the light switch from randomized third point placement to directional.
#                               Directional third point will use the rotational context to place the third point a certain distance forward from the start location.
#                               So, for example, take this command: execute positioned x y z summon marker positioned x2 y2 z2 facing entity @s feet facing ^ ^1 ^-1 ...
#                               This will cause the lightning to always travel in an upwards arc if set to directional.
#
# - #DISTANCE_SCALE# utils.API: This scoreboard determines how much the location of the third point in directional lightning should be scaled by. Defaults to 100 if unspecified.
#                               Set to higher values to make the third point further away or lower to make it closer.
#
# yes this uses both macro and scoreboard inputs sue me

$data modify storage utils:z macro set value {command:"$(Command)",end_pos:[]}
$scoreboard players set #steps utils.temp $(Steps)
$scoreboard players set #delay utils.temp $(Delay)
tag @s add utils.beizer_d
tag @s add utils.marker
$function utils:z/part/lightning/beizer/main {command:"$(Command)"}