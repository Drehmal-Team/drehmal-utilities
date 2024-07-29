scoreboard players reset @s ntils.z.combat.fire.light.bool
function ntils:api/uuid/get_int
execute at @s positioned ~ 100002.5 ~ summon minecraft:arrow run function ntils:z/combat/fire/light/arrow
execute at @s run summon bat ~ 100000 ~ {Tags:["ntils.z.ignore","ntils.z.combat.fire.light.bat"],HandItems:[{id:"netherite_axe",count:1,components:{"minecraft:enchantments":{"ntils:z/combat/fire/light/ench":1}}},{}],NoAI:True,NoGravity:True,Health:0.00001f,DeathLootTable:"ntils:z/generic/empty",PersistenceRequired:True}
advancement revoke @s only ntils:z/combat/fire/light/tick