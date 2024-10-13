scoreboard players add #TIME_SPENT_UNIX# ntils.z.global 1
execute if score #TIME_SPENT_UNIX# ntils.z.global matches 200.. run return run function ntils:z/time/get/unix/failure
execute in ntils:z/empty if data block 0 1 0 Items[0].components."minecraft:profile".properties[0].value run return run function ntils:z/time/get/unix/get
schedule function ntils:z/time/get/unix/schedule 1t