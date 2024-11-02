data modify storage ntils:api time.get.realtime.out.period set value 'PM'

scoreboard players operation #time.get.realtime.hour ntils.API /= #3600 ntils.z.const
scoreboard players operation #time.get.realtime.hour ntils.API %= #24 ntils.z.const

execute if score #time.get.realtime.hour ntils.API matches 0..11 run data modify storage ntils:api time.get.realtime.out.period set value 'AM'
execute if score #time.get.realtime.hour ntils.API matches 0 run scoreboard players set #time.get.realtime.hour ntils.API 12
execute if score #time.get.realtime.hour ntils.API matches 13.. run scoreboard players remove #time.get.realtime.hour ntils.API 12

execute store result storage ntils:api time.get.realtime.out.hour int 1 run scoreboard players get #time.get.realtime.hour ntils.API