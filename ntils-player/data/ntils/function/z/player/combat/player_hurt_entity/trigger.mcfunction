execute if entity @s[tag=ntils.API.combat.disable_advancement] run return run advancement revoke @s only ntils:z/player/combat/player_hurt_entity

# --------------------------------------------- #

data modify storage ntils:api player.combat.player_hurt_entity set value {\
    damage: {\
        pre: 0,\
        post: 0,\
    },\
    is_direct: True,\
    victim_entity: "null",\
    direct_entity: "player",\
    source_entity: "player",\
}

# --------------------------------------------- #

function ntils:z/player/combat/player_hurt_entity/get_damage_before
function ntils:z/player/combat/player_hurt_entity/get_damage_after

scoreboard players set #vid ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv7=true}}] run scoreboard players add #vid ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv6=true}}] run scoreboard players add #vid ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv5=true}}] run scoreboard players add #vid ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv4=true}}] run scoreboard players add #vid ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv3=true}}] run scoreboard players add #vid ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv2=true}}] run scoreboard players add #vid ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv1=true}}] run scoreboard players add #vid ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={iv0=true}}] run scoreboard players add #vid ntils.z.player.temp 1

scoreboard players set #vtype ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v7=true}}] run scoreboard players add #vtype ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v6=true}}] run scoreboard players add #vtype ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v5=true}}] run scoreboard players add #vtype ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v4=true}}] run scoreboard players add #vtype ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v3=true}}] run scoreboard players add #vtype ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v2=true}}] run scoreboard players add #vtype ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v1=true}}] run scoreboard players add #vtype ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={v0=true}}] run scoreboard players add #vtype ntils.z.player.temp 1

execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={bd=true}}] run function ntils:z/player/combat/player_hurt_entity/get_direct_entity

data modify storage ntils:z player.combat.player_hurt_entity.m set value {vt:0,dt:0,vi:0,di:0}
execute store result storage ntils:z player.combat.player_hurt_entity.m.vt int 1 run scoreboard players get #vtype ntils.z.player.temp
execute store result storage ntils:z player.combat.player_hurt_entity.m.dt int 1 run scoreboard players get #dtype ntils.z.player.temp
execute store result storage ntils:z player.combat.player_hurt_entity.m.vi int 1 run scoreboard players get #vid ntils.z.player.temp
execute store result storage ntils:z player.combat.player_hurt_entity.m.di int 1 run scoreboard players get #did ntils.z.player.temp

function ntils:z/player/combat/player_hurt_entity/get_entities with storage ntils:z player.combat.player_hurt_entity.m

execute store result storage ntils:api player.combat.player_hurt_entity.damage.pre double 0.1 run scoreboard players get #player.combat.DAMAGE_BEFORE_CALC# ntils.API
execute store result storage ntils:api player.combat.player_hurt_entity.damage.post double 0.1 run scoreboard players get #player.combat.DAMAGE_AFTER_CALC# ntils.API
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={bd=false}}] run function ntils:z/player/combat/player_hurt_entity/crit_check

function #ntils:api/player/combat/player_hurt_entity

tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.player_hurt_entity.victim_entity
tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.player_hurt_entity.direct_entity

advancement revoke @s only ntils:z/player/combat/player_hurt_entity