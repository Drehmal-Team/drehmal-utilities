scoreboard players set #atr ntils.temp 1

data modify block -30000000 0 15000000 Items set value []
item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
item replace block -30000000 0 15000000 container.1 from entity @s weapon.offhand
item replace block -30000000 0 15000000 container.2 from entity @s armor.feet
item replace block -30000000 0 15000000 container.3 from entity @s armor.legs
item replace block -30000000 0 15000000 container.4 from entity @s armor.chest
item replace block -30000000 0 15000000 container.5 from entity @s armor.head


data modify storage ntils:z templist set value []
data modify storage ntils:z templist append from block -30000000 0 15000000 Items[{components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.max_health"}]}}}]

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

scoreboard players set #o ntils.temp 1000

execute if data storage ntils:z atrs.1[] run function ntils:z/combat/heal/a/1

scoreboard players operation #heal_amt ntils.temp *= #1000 ntils.const
scoreboard players operation #heal_amt ntils.temp /= #o ntils.temp

execute if data storage ntils:z atrs.2[] run function ntils:z/combat/heal/a/2