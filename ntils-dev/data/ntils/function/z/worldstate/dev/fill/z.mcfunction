execute if loaded ~ ~ ~ run summon marker ~ ~ ~ {Tags:["ntils.z.worldstate.marker","ntils.API.ignore"]}

scoreboard players remove #zloop ntils.z.dev.temp 1
execute if score #zloop ntils.z.dev.temp matches 1.. positioned ~ ~ ~16 run function ntils:z/worldstate/dev/fill/z