scoreboard players set #atr ntils.z.temp 1

execute in ntils:z/empty run data modify block -30000000 0 15000000 Items set value []
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.1 from entity @s weapon.offhand
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.2 from entity @s armor.feet
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.3 from entity @s armor.legs
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.4 from entity @s armor.chest
execute in ntils:z/empty run item replace block -30000000 0 15000000 container.5 from entity @s armor.head


data modify storage ntils:z templist set value []
execute in ntils:z/empty run data modify storage ntils:z templist append from block -30000000 0 15000000 Items[{components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.max_health"}]}}}]

data modify storage ntils:z atrs set value {1:[],2:[],all:[]}

data modify storage ntils:z atrs.all append from storage ntils:z templist[{components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.max_health"}]}}}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health"}]
data remove storage ntils:z atrs.all[{slot:"feet"}]
data remove storage ntils:z atrs.all[{slot:"legs"}]
data remove storage ntils:z atrs.all[{slot:"chest"}]
data remove storage ntils:z atrs.all[{slot:"head"}]
data remove storage ntils:z atrs.all[{slot:"mainhand"}]
data remove storage ntils:z atrs.all[{slot:"offhand"}]
data remove storage ntils:z atrs.all[{slot:"hand"}]
data remove storage ntils:z atrs.all[{slot:"armor"}]

data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:0b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"mainhand"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:1b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"offhand"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:0b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"hand"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:1b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"hand"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:2b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"feet"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:3b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"legs"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:4b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"chest"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:5b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"head"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:2b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:3b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:4b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage ntils:z atrs.all append from storage ntils:z templist[{Slot:5b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]

data modify storage ntils:z atrs.1 append from storage ntils:z atrs.all[{operation:"add_multiplied_base"}].amount
data modify storage ntils:z atrs.2 append from storage ntils:z atrs.all[{operation:"add_multiplied_total"}].amount

scoreboard players set #o ntils.z.temp 1000

execute if data storage ntils:z atrs.1[] run function ntils:z/combat/heal/a/1

scoreboard players operation #heal_amt ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #heal_amt ntils.z.temp /= #o ntils.z.temp

execute if data storage ntils:z atrs.2[] run function ntils:z/combat/heal/a/2