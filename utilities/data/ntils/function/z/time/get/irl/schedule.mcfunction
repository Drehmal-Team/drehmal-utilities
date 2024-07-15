scoreboard players add #TIME_SPENT# ntils.z.global 1
execute if score #TIME_SPENT# ntils.z.global matches 200.. run return run function ntils:z/time/get/irl/failure
execute in ntils:z/empty if data block -30000000 1 15000000 Items[0].components."minecraft:profile".properties[0].value run return run function ntils:z/time/get/irl/get
schedule function ntils:z/time/get/irl/schedule 1t