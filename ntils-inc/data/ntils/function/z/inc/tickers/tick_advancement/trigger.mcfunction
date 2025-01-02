advancement revoke @s only ntils:z/inc/tickers/tick_advancement
execute unless score #inc.PLAYER_COUNT_THISDIM# ntils.z.global matches 0.. store result score #inc.PLAYER_COUNT_THISDIM# ntils.z.global if entity @a[x=0]
scoreboard players remove #inc.PLAYER_COUNT_THISDIM# ntils.z.global 1
execute if score #inc.PLAYER_COUNT_THISDIM# ntils.z.global matches 0 run function ntils:z/inc/tickers/tick_advancement