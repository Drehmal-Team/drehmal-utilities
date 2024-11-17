data modify storage ntils:api player.combat.entity_hurt_player.is_direct set value False

scoreboard players set #did ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id7=true}}] run scoreboard players add #did ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id6=true}}] run scoreboard players add #did ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id5=true}}] run scoreboard players add #did ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id4=true}}] run scoreboard players add #did ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id3=true}}] run scoreboard players add #did ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id2=true}}] run scoreboard players add #did ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id1=true}}] run scoreboard players add #did ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={id0=true}}] run scoreboard players add #did ntils.z.player.temp 1

scoreboard players set #dtype ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d7=true}}] run scoreboard players add #dtype ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d6=true}}] run scoreboard players add #dtype ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d5=true}}] run scoreboard players add #dtype ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d4=true}}] run scoreboard players add #dtype ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d3=true}}] run scoreboard players add #dtype ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d2=true}}] run scoreboard players add #dtype ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d1=true}}] run scoreboard players add #dtype ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={d0=true}}] run scoreboard players add #dtype ntils.z.player.temp 1