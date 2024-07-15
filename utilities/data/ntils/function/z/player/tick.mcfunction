execute if entity @s[tag=ntils.API.combat.invul] run function ntils:z/combat/invul/tick
execute unless entity @s[scores={ntils.z.id=1..}] run function ntils:z/player/id/check
data modify storage ntils:z macro set value {id:0}
execute store result storage ntils:z macro.id int 1 run scoreboard players get @s ntils.z.id
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.0 with stone[minecraft:custom_data={ntils:{z:{impossible:True}}}]
execute if items entity @s weapon.mainhand * in ntils:z/empty run item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
function ntils:z/player/save_mainhand with storage ntils:z macro
execute if score #diff ntils.z.temp matches 1 run function #ntils:api/item/mainhand_updated