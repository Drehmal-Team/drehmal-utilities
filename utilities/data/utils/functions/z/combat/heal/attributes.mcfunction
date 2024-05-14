scoreboard players set #atr utils.temp 1

data modify block -30000000 0 15000000 Items set value []
item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
item replace block -30000000 0 15000000 container.1 from entity @s weapon.offhand
item replace block -30000000 0 15000000 container.2 from entity @s armor.feet
item replace block -30000000 0 15000000 container.3 from entity @s armor.legs
item replace block -30000000 0 15000000 container.4 from entity @s armor.chest
item replace block -30000000 0 15000000 container.5 from entity @s armor.head


data modify storage utils:z templist set value []
data modify storage utils:z templist append from block -30000000 0 15000000 Items[{components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.max_health"}]}}}]

data modify storage utils:z atrs set value {1:[],2:[],all:[]}

data modify storage utils:z atrs.all append from storage utils:z templist[{components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.max_health"}]}}}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health"}]
data remove storage utils:z atrs.all[{slot:"feet"}]
data remove storage utils:z atrs.all[{slot:"legs"}]
data remove storage utils:z atrs.all[{slot:"chest"}]
data remove storage utils:z atrs.all[{slot:"head"}]
data remove storage utils:z atrs.all[{slot:"mainhand"}]
data remove storage utils:z atrs.all[{slot:"offhand"}]
data remove storage utils:z atrs.all[{slot:"hand"}]
data remove storage utils:z atrs.all[{slot:"armor"}]

data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:0b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"mainhand"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:1b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"offhand"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:0b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"hand"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:1b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"hand"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:2b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"feet"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:3b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"legs"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:4b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"chest"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:5b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"head"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:2b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:3b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:4b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]
data modify storage utils:z atrs.all append from storage utils:z templist[{Slot:5b}].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health",slot:"armor"}]

data modify storage utils:z atrs.1 append from storage utils:z atrs.all[{operation:"add_multiplied_base"}].amount
data modify storage utils:z atrs.2 append from storage utils:z atrs.all[{operation:"add_multiplied_total"}].amount

tellraw @s ["",{"score":{"name":"#heal_amt","objective":"utils.temp"},"color":"gold"},"\n",{"text":"Type 1: ","color":"green"},{"nbt":"atrs.1","storage":"utils:z"},"\n","\n",{"text":"Type 2: ","color":"light_purple"},{"nbt":"atrs.2","storage":"utils:z"}]

scoreboard players set #o utils.temp 1000

execute if data storage utils:z atrs.1[] run function utils:z/combat/heal/a/1

scoreboard players operation #heal_amt utils.temp *= #1000 utils.const
scoreboard players operation #heal_amt utils.temp /= #o utils.temp

execute if data storage utils:z atrs.2[] run function utils:z/combat/heal/a/2