execute store result score #u-2y-d ntils.z.time.convert.temp run scoreboard players operation #u-2y ntils.z.time.convert.temp = #time.convert.unix.in ntils.API
scoreboard players remove #u-2y ntils.z.time.convert.temp 63072000
scoreboard players remove #u-2y-d ntils.z.time.convert.temp 63158400

scoreboard players operation #u-2y ntils.z.time.convert.temp /= #UNIX.ONE_YEAR ntils.z.const

execute store result score #time.convert.unix.out.day ntils.API store result score #time.convert.unix.out.minute ntils.API store result score #time.convert.unix.out.second ntils.API store result score #time.convert.unix.out.hour ntils.API run scoreboard players operation #u-2y-d ntils.z.time.convert.temp %= #UNIX.LEAP_YEAR ntils.z.const
scoreboard players operation #u-2y-d ntils.z.time.convert.temp /= #UNIX.ONE_YEAR ntils.z.const
scoreboard players operation #u-2y-d ntils.z.time.convert.temp %= #4 ntils.z.const

scoreboard players set #time.convert.unix.out.year ntils.API 1972
scoreboard players operation #time.convert.unix.out.year ntils.API += #u-2y-d ntils.z.time.convert.temp
execute store result score #is_ly ntils.z.time.convert.temp run scoreboard players operation #time.convert.unix.out.year ntils.API += #u-2y ntils.z.time.convert.temp

scoreboard players operation #is_ly ntils.z.time.convert.temp %= #4 ntils.z.const

scoreboard players operation #time.convert.unix.out.day ntils.API /= #UNIX.ONE_DAY ntils.z.const
execute if score #time.convert.unix.out.day ntils.API matches ..1095 run scoreboard players operation #time.convert.unix.out.day ntils.API %= #DAYS_IN_YEAR ntils.z.const
execute if score #time.convert.unix.out.day ntils.API matches 1096.. run scoreboard players remove #time.convert.unix.out.day ntils.API 1095
scoreboard players add #time.convert.unix.out.day ntils.API 1

execute if score #is_ly ntils.z.time.convert.temp matches 0 run function ntils:z/time/convert/unix/yesly
execute unless score #is_ly ntils.z.time.convert.temp matches 0 run function ntils:z/time/convert/unix/noly

scoreboard players operation #time.convert.unix.out.hour ntils.API /= #UNIX.ONE_HOUR ntils.z.const
scoreboard players operation #time.convert.unix.out.hour ntils.API %= #HOURS_IN_DAY ntils.z.const

scoreboard players operation #time.convert.unix.out.minute ntils.API /= #UNIX.ONE_MINUTE ntils.z.const
scoreboard players operation #time.convert.unix.out.minute ntils.API %= #MINUTES_IN_HOUR ntils.z.const

scoreboard players operation #time.convert.unix.out.second ntils.API %= #SECONDS_IN_MINUTE ntils.z.const