execute unless score $ntils:profile.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless score #profile.ACTIVE# ntils.z.global matches 1.. run return fail


worldborder set 30000000
worldborder add 1000 1

data modify storage ntils:api profile.out append value 0
execute store result storage ntils:api profile.out[-1] int 1 run scoreboard players operation #c ntils.z.profile.temp = #profile.GUESS# ntils.z.global
function ntils:z/profile/waste
execute store result score #t ntils.z.profile.temp run worldborder get
scoreboard players remove #t ntils.z.profile.temp 30000000
scoreboard players operation #t ntils.z.profile.temp > #1 ntils.z.const
scoreboard players set #r ntils.z.profile.temp 50000
scoreboard players operation #r ntils.z.profile.temp /= #t ntils.z.profile.temp
scoreboard players operation #profile.GUESS# ntils.z.global *= #r ntils.z.profile.temp
scoreboard players operation #profile.GUESS# ntils.z.global /= #1000 ntils.z.const

scoreboard players add #profile.ACTIVE# ntils.z.global 1
execute if score #profile.ACTIVE# ntils.z.global matches 200.. run function ntils:z/profile/fin