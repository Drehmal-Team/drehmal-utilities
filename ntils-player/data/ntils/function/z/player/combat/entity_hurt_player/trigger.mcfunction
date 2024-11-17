execute if entity @s[tag=ntils.API.player.combat.entity_hurt_player.disable_advancement] run return run advancement revoke @s only ntils:z/player/combat/entity_hurt_player

# --------------------------------------------- #

data modify storage ntils:api player.combat.entity_hurt_player set value {\
    damage: {\
        pre: 0,\
        post: 0,\
    },\
    is_direct: True,\
    victim_entity: "player",\
    source_entity: "null",\
}

# --------------------------------------------- #

function ntils:z/player/combat/entity_hurt_player/get_damage_before
function ntils:z/player/combat/entity_hurt_player/get_damage_after

scoreboard players set #stype ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s7=true}}] run scoreboard players add #stype ntils.z.player.temp 128
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s6=true}}] run scoreboard players add #stype ntils.z.player.temp 64
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s5=true}}] run scoreboard players add #stype ntils.z.player.temp 32
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s4=true}}] run scoreboard players add #stype ntils.z.player.temp 16
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s3=true}}] run scoreboard players add #stype ntils.z.player.temp 8
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s2=true}}] run scoreboard players add #stype ntils.z.player.temp 4
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s1=true}}] run scoreboard players add #stype ntils.z.player.temp 2
execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={s0=true}}] run scoreboard players add #stype ntils.z.player.temp 1

execute if entity @s[advancements={ntils:z/player/combat/entity_hurt_player={bd=true}}] run function ntils:z/player/combat/entity_hurt_player/get_direct_entity

data modify storage ntils:z player.combat.entity_hurt_player.m set value {st:0,dt:0,di:0}
execute store result storage ntils:z player.combat.entity_hurt_player.m.st int 1 run scoreboard players get #stype ntils.z.player.temp
execute store result storage ntils:z player.combat.entity_hurt_player.m.dt int 1 run scoreboard players get #dtype ntils.z.player.temp
execute store result storage ntils:z player.combat.entity_hurt_player.m.di int 1 run scoreboard players get #did ntils.z.player.temp

function ntils:z/player/combat/entity_hurt_player/get_entities with storage ntils:z player.combat.entity_hurt_player.m
execute on attacker run tag @s add ntils.API.player.combat.entity_hurt_player.source_entity

execute store result storage ntils:api player.combat.entity_hurt_player.damage.pre double 0.1 run scoreboard players get #player.combat.DAMAGE_BEFORE_CALC# ntils.API
execute store result storage ntils:api player.combat.entity_hurt_player.damage.post double 0.1 run scoreboard players get #player.combat.DAMAGE_AFTER_CALC# ntils.API

function #ntils:api/player/combat/entity_hurt_player

tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.entity_hurt_player.source_entity
tag @e[type=!#ntils:api/player/combat/nohitbox] remove ntils.API.player.combat.entity_hurt_player.direct_entity

advancement revoke @s only ntils:z/player/combat/entity_hurt_player