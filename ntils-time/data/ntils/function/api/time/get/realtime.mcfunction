# TIME/GET/REALTIME
#
# Gets the current year, month, day, hour, minute, and second, based on the timezone of the current server.
# Can be called as long as this utility isn't currently syncing itself to the server time (so, can't be called on load, for example).
#
# NOTE: The datapack is constantly updating these values. Calling this function simply forces a refresh based on the current unix time.
#       In simpler terms: You probably don't need to run this!
#
# INPUT:
#   The time that is generated by this function is based on the internal unix timestamp, so no direct score input is needed. 
#   However, the following scoreboard flags exist:
#
#       - #time.get.realtime.in.24HOUR ntils.API | Set this score to 1 to change the output to reflect 24 hour time.
#
# OUTPUT:
#   The output for this function takes the form of an NBT object created at the location "ntils:api time.get.realtime.out"
#   The object looks like this:
# 
#   {
#       second: int,
#       minute: int,
#       hour: int,
#       period: string,
#       day: {
#           string: string,
#           value: int,
#       },
#       month: {
#           string: string,
#           value: int,
#       },
#       year: int
#   }
#
#   Seconds, minutes, and hours are stored in their integer form. Period is a string that will be AM/PM for normal time, and blank for 24
#   hour time. Both day and month store their integer value as well as a string representation (Capitalized raw string for day of the week
#   and month, specifically). Year is always an int.
#
#   Example code for checking the current day looks like this:
#
#       function ntils:api/time/get/realtime
#       execute if data storage ntils:api {time:{get:{realtime:{out:{day:{value:13,string:"Friday"}}}}}} run say man this franchise fell off
#
# PERFORMACE: Great
# Runs about 40-50 commands generally. Nonrecursive and does not use macros, making this remarkably great for performance.

execute unless score $ntils:time.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute unless score #CURRENT_UNIX_TIME# ntils.z.global matches 1.. run return fail
execute if score #time.FORCING_SYNC# ntils.z.global matches 0.. run return fail

data modify storage ntils:api time.get.realtime.out set value {\
    second: 0,\
    minute: 0,\
    hour: 0,\
    period: "",\
    day: {\
        string: "",\
        value: 0,\
    },\
    month: {\
        string: "",\
        value: 0,\
    },\
    year: 0\
}

execute store result score #time.get.realtime.out.hour ntils.API store result score #time.get.realtime.out.minute ntils.API store result score #time.get.realtime.out.second ntils.API run scoreboard players operation #day_of_year ntils.z.time.temp = #CURRENT_UNIX_TIME# ntils.z.global

scoreboard players operation #time.get.realtime.out.minute ntils.API /= #60 ntils.z.const
execute store result storage ntils:api time.get.realtime.out.minute int 1 run scoreboard players operation #time.get.realtime.out.minute ntils.API %= #60 ntils.z.const

execute store result storage ntils:api time.get.realtime.out.second int 1 run scoreboard players operation #time.get.realtime.out.second ntils.API %= #60 ntils.z.const

execute if score #time.get.realtime.in.24HOUR ntils.API matches 1.. run function ntils:z/time/get/realtime/24/y
execute unless score #time.get.realtime.in.24HOUR ntils.API matches 1 run function ntils:z/time/get/realtime/24/n

execute store result score #day_of_week ntils.z.time.temp run scoreboard players operation #day_of_year ntils.z.time.temp /= #86400 ntils.z.const
execute store result score #time.get.realtime.out.year ntils.API run scoreboard players remove #day_of_year ntils.z.time.temp 730

scoreboard players operation #day_of_week ntils.z.time.temp %= #7 ntils.z.const
scoreboard players operation #day_of_year ntils.z.time.temp %= #1461 ntils.z.const

execute if score #day_of_year ntils.z.time.temp matches ..365 run function ntils:z/time/get/realtime/leap_year
execute if score #day_of_year ntils.z.time.temp matches 366.. run function ntils:z/time/get/realtime/normal_year

execute store result score #mod ntils.z.time.temp run data get storage ntils:z time.get.realtime.daymod
execute store result storage ntils:api time.get.realtime.out.day.value int 1 store result score #time.get.realtime.out.day ntils.API run scoreboard players operation #day_of_year ntils.z.time.temp += #mod ntils.z.time.temp
execute store result score #time.get.realtime.out.month ntils.API run data get storage ntils:api time.get.realtime.out.month.value

scoreboard players operation #time.get.realtime.out.year ntils.API /= #1461 ntils.z.const
scoreboard players operation #time.get.realtime.out.year ntils.API *= #4 ntils.z.const
scoreboard players add #time.get.realtime.out.year ntils.API 1972

execute store result storage ntils:api time.get.realtime.out.year int 1 run scoreboard players operation #time.get.realtime.out.year ntils.API += #add ntils.z.time.temp

execute if score #day_of_week ntils.z.time.temp matches 0 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Thursday"
execute if score #day_of_week ntils.z.time.temp matches 1 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Friday"
execute if score #day_of_week ntils.z.time.temp matches 2 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Saturday"
execute if score #day_of_week ntils.z.time.temp matches 3 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Sunday"
execute if score #day_of_week ntils.z.time.temp matches 4 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Monday"
execute if score #day_of_week ntils.z.time.temp matches 5 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Tuesday"
execute if score #day_of_week ntils.z.time.temp matches 6 run return run data modify storage ntils:api time.get.realtime.out.day.string set value "Wednesday"