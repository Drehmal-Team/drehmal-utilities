# EDATA/TRANSFER_SCORES
#
# Copies all scores from one username/hex UUID to another. This operation takes multiple ticks and only one can run at once. Also Location can't be a player
# Doesn't serve much of a purpose IMHO
#
# MACRO INPUTS:
# - Location: A username/hex UUID to copy from
# - Destination: A username/hex UUID to copy to
#
# Both the source and destination will be wiped. The source will be wiped because that's simply unavoidable and the destination because :shrug:
#
# PERFORMANCE: Excellent
#   Takes multiple ticks. No discerable impact on lag.


execute if score #GETTING_SCORES# ntils.z.global matches 1 run return fail

$execute as $(Location) if entity @s[type=player] run return fail

$execute store result score #SCORE_COUNT# ntils.z.global run scoreboard players list $(Location)

execute if score #SCORE_COUNT# ntils.z.global matches ..0 run return fail

$scoreboard players reset $(Destination)

scoreboard players set #GETTING_SCORES# ntils.z.global 1

execute in ntils:z/empty run setblock 0 1 0 air
$execute in ntils:z/empty run setblock 0 1 0 command_block{auto:True,Command:"scoreboard players list $(Location)"}

$data modify storage ntils:z edata.get_scores set value {location:$(Location),destination:$(Destination)}
schedule function ntils:z/edata/get_scores/schedule 2t