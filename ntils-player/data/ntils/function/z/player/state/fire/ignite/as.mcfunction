tag @s remove ntils.z.player.state.fire.ignite
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

function ntils:api/uuid/get_int

execute at @s positioned ~ 100002.5 ~ summon arrow run function ntils:z/player/state/fire/ignite/arrow

execute at @s run summon bat ~ 100000 ~ {Tags:["ntils.z.ignore","ntils.z.combat.fire.light.bat"],HandItems:[{id:"netherite_axe",count:1,components:{"minecraft:enchantments":{"ntils:z/player/state/fire/ignite/ench":1}}},{}],NoAI:True,NoGravity:True,Health:0.00001f,DeathLootTable:"ntils:z/empty",PersistenceRequired:True}