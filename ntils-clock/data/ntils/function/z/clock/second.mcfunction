scoreboard players operation #clock.TOTAL_TIME_PASSED ntils.API %= #1000000 ntils.z.const
execute store result score #gt ntils.z.clock.temp run time query gametime
scoreboard players operation #gt ntils.z.clock.temp -= #gt_prev ntils.z.clock.temp
tellraw @a {"score": {"name": "#gt","objective": "ntils.z.clock.temp"}}
execute store result score #gt_prev ntils.z.clock.temp run time query gametime