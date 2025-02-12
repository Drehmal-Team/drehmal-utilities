execute store result score #clock.TIME_SINCE_LAST_TICK ntils.API run worldborder get
scoreboard players remove #clock.TIME_SINCE_LAST_TICK ntils.API 30000000
scoreboard players operation #clock.TIME_SINCE_LAST_TICK ntils.API /= #1000 ntils.z.const


execute store result score #clock.TOTAL_TIME_PASSED ntils.API run scoreboard players operation #clock.TOTAL_TIME_PASSED ntils.API += #clock.TIME_SINCE_LAST_TICK ntils.API
execute if score #clock.TOTAL_TIME_PASSED ntils.API matches 1000000.. run function ntils:z/clock/second

worldborder set 30000000
worldborder add 10000000 1

schedule function ntils:z/clock/tick 1t