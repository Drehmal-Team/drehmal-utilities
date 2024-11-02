execute if score #time.FORCING_SYNC# ntils.z.global matches 30.. run return run function ntils:z/time/force_time_sync/start
scoreboard players add #time.FORCING_SYNC# ntils.z.global 1

execute in ntils:z/empty if data block 0 5 0 Items[0].components."minecraft:profile".properties run return run function ntils:z/time/force_time_sync/sync
schedule function ntils:z/time/force_time_sync/schedule 1t