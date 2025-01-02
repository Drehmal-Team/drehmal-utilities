scoreboard players reset #inc.PLAYER_COUNT_THISDIM# ntils.z.global
scoreboard players reset #inc.TICK_ADVANCEMENT# ntils.z.global
execute if data storage ntils:z inc{catch:["lightning"]} run function ntils:z/inc/catch/lightning


data modify storage ntils:z inc.catch set value []