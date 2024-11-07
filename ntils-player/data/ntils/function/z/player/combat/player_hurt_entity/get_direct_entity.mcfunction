data modify storage ntils:api player.combat.player_hurt_entity.is_direct set value False

scoreboard players set #did ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id7=true}}] run scoreboard players add #did ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id6=true}}] run scoreboard players add #did ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id5=true}}] run scoreboard players add #did ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id4=true}}] run scoreboard players add #did ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id3=true}}] run scoreboard players add #did ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id2=true}}] run scoreboard players add #did ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id1=true}}] run scoreboard players add #did ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={id0=true}}] run scoreboard players add #did ntils.z.player.temp 1

scoreboard players set #dtype ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d7=true}}] run scoreboard players add #dtype ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d6=true}}] run scoreboard players add #dtype ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d5=true}}] run scoreboard players add #dtype ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d4=true}}] run scoreboard players add #dtype ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d3=true}}] run scoreboard players add #dtype ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d2=true}}] run scoreboard players add #dtype ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d1=true}}] run scoreboard players add #dtype ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={d0=true}}] run scoreboard players add #dtype ntils.z.player.temp 1