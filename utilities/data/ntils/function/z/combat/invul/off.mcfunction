tag @s remove ntils.API.combat.invul
scoreboard players reset @s ntils.z.combat.invul.on

attribute @s generic.safe_fall_distance modifier remove d881a22d-0b44-449f-899f-7f51a2a48916

data modify storage ntils:z combat.invul.effects set value []
data modify storage ntils:z combat.invul.all_effects set from entity @s active_effects

data modify storage ntils:api effects.unroll.in set from storage ntils:z combat.invul.all_effects[{id:"minecraft:resistance"}]
function ntils:api/combat/effects/unroll
data remove storage ntils:api effects.unroll.out[{amplifier:14b}]

data modify storage ntils:z combat.invul.effects append from storage ntils:api effects.unroll.out[]

data modify storage ntils:api effects.unroll.in set from storage ntils:z combat.invul.all_effects[{id:"minecraft:fire_resistance"}]
function ntils:api/combat/effects/unroll
data remove storage ntils:api effects.unroll.out[{amplifier:14b}]

data modify storage ntils:z combat.invul.effects append from storage ntils:api effects.unroll.out[]

effect clear @s resistance
effect clear @s fire_resistance

execute summon area_effect_cloud run function ntils:z/combat/invul/off_as