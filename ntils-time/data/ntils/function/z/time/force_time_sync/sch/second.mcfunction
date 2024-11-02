execute store result storage ntils:api time.get.realtime.out.second int 1 run scoreboard players add #time.get.realtime.out.second ntils.API 1
execute if score #time.get.realtime.out.second ntils.API matches 60.. run function ntils:api/time/get/realtime
schedule function ntils:z/time/force_time_sync/sch/second 1s