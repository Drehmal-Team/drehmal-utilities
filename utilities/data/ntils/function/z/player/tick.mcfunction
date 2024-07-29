execute if entity @s[scores={ntils.z.player.inv.update.bool=1}] run function ntils:z/player/inv/update/as
execute unless entity @s[scores={ntils.z.id=1..,ntils.API.id=1..}] run function ntils:z/player/id/check
execute store result storage ntils:z player.tick.macro.id int 1 run scoreboard players get @s ntils.z.id
execute in ntils:z/empty run item replace block 0 0 0 container.0 with stone[minecraft:custom_data={ntils:{z:{impossible:True}}}]
execute if items entity @s weapon.mainhand * in ntils:z/empty run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function ntils:z/player/save_mainhand with storage ntils:z player.tick.macro
execute if score #diff ntils.z.temp matches 1 run function #ntils:api/player/mainhand_update