scoreboard players operation #zloop ntils.z.dev.temp = #size ntils.z.dev.temp
function ntils:z/worldstate/dev/fill/z

scoreboard players remove #xloop ntils.z.dev.temp 1
execute if score #xloop ntils.z.dev.temp matches 1.. positioned ~16 ~ ~ run function ntils:z/worldstate/dev/fill/x