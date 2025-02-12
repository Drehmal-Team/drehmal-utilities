execute unless score $ntils:clock.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless score #clock.TIME_SINCE_LAST_TICK ntils.API matches -2147483648..2147483647 run return fail

$data remove storage ntils:z clock.registry."$(Id)"
data modify storage ntils:z clock.compare set value {}
execute store success score #c ntils.z.clock.temp run data modify storage ntils:z clock.compare set from storage ntils:z clock.registry
execute if score #c ntils.z.clock.temp matches 1 run return 1

scoreboard players reset #clock.TIME_SINCE_LAST_TICK ntils.API
worldborder set 30000000 0
schedule clear ntils:z/clock/tick