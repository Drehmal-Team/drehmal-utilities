execute store result score #add ntils.z.time.temp run scoreboard players remove #day_of_year ntils.z.time.temp 366
scoreboard players operation #day_of_year ntils.z.time.temp %= #365 ntils.z.const
scoreboard players operation #add ntils.z.time.temp /= #365 ntils.z.const
scoreboard players add #add ntils.z.time.temp 1

execute if score #day_of_year ntils.z.time.temp matches 0..30 run return run execute store success storage ntils:z time.get.realtime.daymod int 1 run data modify storage ntils:api time.get.realtime.out.month set value {value:1,string:"January"}
execute if score #day_of_year ntils.z.time.temp matches 31..58 run return run execute store success storage ntils:z time.get.realtime.daymod int -30 run data modify storage ntils:api time.get.realtime.out.month set value {value:2,string:"February"}
execute if score #day_of_year ntils.z.time.temp matches 59..89 run return run execute store success storage ntils:z time.get.realtime.daymod int -58 run data modify storage ntils:api time.get.realtime.out.month set value {value:3,string:"March"}
execute if score #day_of_year ntils.z.time.temp matches 90..119 run return run execute store success storage ntils:z time.get.realtime.daymod int -89 run data modify storage ntils:api time.get.realtime.out.month set value {value:4,string:"April"}
execute if score #day_of_year ntils.z.time.temp matches 120..150 run return run execute store success storage ntils:z time.get.realtime.daymod int -119 run data modify storage ntils:api time.get.realtime.out.month set value {value:5,string:"May"}
execute if score #day_of_year ntils.z.time.temp matches 151..180 run return run execute store success storage ntils:z time.get.realtime.daymod int -150 run data modify storage ntils:api time.get.realtime.out.month set value {value:6,string:"June"}
execute if score #day_of_year ntils.z.time.temp matches 181..211 run return run execute store success storage ntils:z time.get.realtime.daymod int -180 run data modify storage ntils:api time.get.realtime.out.month set value {value:7,string:"July"}
execute if score #day_of_year ntils.z.time.temp matches 212..242 run return run execute store success storage ntils:z time.get.realtime.daymod int -211 run data modify storage ntils:api time.get.realtime.out.month set value {value:8,string:"August"}
execute if score #day_of_year ntils.z.time.temp matches 243..272 run return run execute store success storage ntils:z time.get.realtime.daymod int -242 run data modify storage ntils:api time.get.realtime.out.month set value {value:9,string:"September"}
execute if score #day_of_year ntils.z.time.temp matches 273..303 run return run execute store success storage ntils:z time.get.realtime.daymod int -272 run data modify storage ntils:api time.get.realtime.out.month set value {value:10,string:"October"}
execute if score #day_of_year ntils.z.time.temp matches 304..333 run return run execute store success storage ntils:z time.get.realtime.daymod int -303 run data modify storage ntils:api time.get.realtime.out.month set value {value:11,string:"November"}
execute if score #day_of_year ntils.z.time.temp matches 334..364 run return run execute store success storage ntils:z time.get.realtime.daymod int -333 run data modify storage ntils:api time.get.realtime.out.month set value {value:12,string:"December"}