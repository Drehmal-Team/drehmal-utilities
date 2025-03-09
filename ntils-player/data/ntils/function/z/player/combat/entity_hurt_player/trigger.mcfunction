execute if entity @s[tag=ntils.API.player.combat.entity_hurt_player.disable_advancement] run return run advancement revoke @s only ntils:z/player/combat/entity_hurt_player

# --------------------------------------------- #

data modify storage ntils:api player.combat.entity_hurt_player set value {              \
    damage: {                                                                           \
        pre: 0,                                                                         \
        post: 0,                                                                        \
    },                                                                                  \
    is_direct: True,                                                                    \
    damage_type: "null",                                                                \
    lethal: False                                                                       \
}

# --------------------------------------------- #

function ntils:z/player/combat/entity_hurt_player/get_damage_before
function ntils:z/player/combat/entity_hurt_player/get_damage_after

scoreboard players set #tytype ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty5=true}}] run scoreboard players add #tytype ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty4=true}}] run scoreboard players add #tytype ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty3=true}}] run scoreboard players add #tytype ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty2=true}}] run scoreboard players add #tytype ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty1=true}}] run scoreboard players add #tytype ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={ty0=true}}] run scoreboard players add #tytype ntils.z.player.temp 1

execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={se=true}}] run function ntils:z/player/combat/entity_hurt_player/get_source_entity
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={bd=true}}] run function ntils:z/player/combat/entity_hurt_player/get_direct_entity

data modify storage ntils:z player.combat.entity_hurt_player.m set value {st:0,dt:0,di:0,ty:0}
execute store result storage ntils:z player.combat.entity_hurt_player.m.st int 1 run scoreboard players get #stype ntils.z.player.temp
execute store result storage ntils:z player.combat.entity_hurt_player.m.dt int 1 run scoreboard players get #dtype ntils.z.player.temp
execute store result storage ntils:z player.combat.entity_hurt_player.m.di int 1 run scoreboard players get #did ntils.z.player.temp
execute store result storage ntils:z player.combat.entity_hurt_player.m.ty int 1 run scoreboard players get #tytype ntils.z.player.temp

function ntils:z/player/combat/entity_hurt_player/get_entities with storage ntils:z player.combat.entity_hurt_player.m
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={se=true}}] on attacker run tag @s add ntils.API.player.combat.entity_hurt_player.source_entity

execute store result storage ntils:api player.combat.entity_hurt_player.damage.pre double 0.1 run scoreboard players get #player.combat.DAMAGE_BEFORE_CALC# ntils.API
execute store result storage ntils:api player.combat.entity_hurt_player.damage.post double 0.1 run scoreboard players get #player.combat.DAMAGE_AFTER_CALC# ntils.API

execute if score @s ntils.z.player.state.dead matches 1.. run function ntils:z/player/combat/entity_hurt_player/player_death

function #ntils:api/player/combat/entity_hurt_player

tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.entity_hurt_player.source_entity
tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.entity_hurt_player.direct_entity

advancement revoke @s only ntils:z/player/combat/entity_hurt_player