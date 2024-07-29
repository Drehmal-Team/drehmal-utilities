# SCH/CLEAR/ID
#
# Given the ID of a schedule, clears it.
#
# MACRO INPUTS:
#   Id: The ID of the scheduled command. This can be obtained as the return value of the sch/new function.
#
# Performance: Good
#   I mean it's not the worst, I guess. Lots of macro stuf here but no entity garbage.
data modify storage ntils:z sch.clear.list set value []
$data modify storage ntils:z sch.clear.list append from storage ntils:z sch.tick.garbage[{affected:[{name:"$(Name)"}]}].time
$data modify storage ntils:z sch.clear.macro set value {time:0,loc:"name",clear:"$(Name)",q1:'"',q2:'"'}
data modify storage ntils:z sch.clear.macro.time set from storage ntils:z sch.clear.list[-1]
execute if data storage ntils:z sch.clear.list[] run function ntils:z/sch/clear/loop with storage ntils:z sch.clear.macro