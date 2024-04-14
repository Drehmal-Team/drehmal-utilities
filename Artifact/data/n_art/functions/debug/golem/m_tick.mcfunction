execute unless entity @s[tag=n_art.golem.pass] on vehicle unless entity @s[nbt={HurtTime:10s}] run return 0
tag @s add n_art.golem.pass

scoreboard players add @s n_art.timer 1
execute if entity @s[predicate=n_art:vehicle] run return 0
scoreboard players remove @s n_art.timer 20
execute store result score #dec n_art.temp store result score #num n_art.temp run scoreboard players operation @s n_art.golem.hp /= @s n_art.timer

scoreboard players operation #dec n_art.temp %= #100 n_art.const
scoreboard players operation #num n_art.temp /= #100 n_art.const

execute if score #dec n_art.temp matches ..9 run tellraw @a ["",{"text":"DPS","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#num","objective":"n_art.temp"},"color":"red"},{"text":".0","color":"red"},{"score":{"name":"#dec","objective":"n_art.temp"},"color":"red"}]
execute if score #dec n_art.temp matches 10.. run tellraw @a ["",{"text":"DPS","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#num","objective":"n_art.temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"#dec","objective":"n_art.temp"},"color":"red"}]

kill @s