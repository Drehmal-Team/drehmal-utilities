execute unless score $ntils:clock.ENABLED ntils.API.singularity.flag matches 1.. run return fail

$data modify storage ntils:z clock.registry."$(Id)" set value True

scoreboard players set #clock.TOTAL_TIME_PASSED ntils.API 0
scoreboard players set #clock.TIME_SINCE_LAST_TICK ntils.API -1
worldborder set 30000000
worldborder add 10000000 1
schedule function ntils:z/clock/tick 1t