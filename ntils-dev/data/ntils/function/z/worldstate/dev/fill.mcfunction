$scoreboard players set #size ntils.z.dev.temp $(size)

scoreboard players operation #xloop ntils.z.dev.temp = #size ntils.z.dev.temp
execute if score #xloop ntils.z.dev.temp matches 1.. run function ntils:z/worldstate/dev/fill/x