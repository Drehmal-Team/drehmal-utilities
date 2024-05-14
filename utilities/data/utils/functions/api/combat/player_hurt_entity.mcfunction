# COMBAT/PLAYER_HURT_ENTITY
#
# This function is not called by the datapack. It exists to explain the hit detection API

# dont run this function
return fail

# the utils.API.combat.victim is the entity tag for the entity that the player hurt
# this tag is actually accurate, and you wont end up in situations where two entities have this tag
# at the same time
execute as @e[tag=utils.API.combat.victim] run say i was hit!

# the #HIT_TYPE# utils.API scoreboard indicates the type of hit the player made
# 0 - normal hit
# 1 - full hit for full damage
# 2 - critical hit for 150% damage
execute if score #HIT_TYPE# utils.API matches 0 run say pathetic, weak attack!
execute if score #HIT_TYPE# utils.API matches 1 run say full damage!
execute if score #HIT_TYPE# utils.API matches 2 run say critical!

# the #DAMAGE_DEALT# utils.API scoreboard indicates the amount of damage the player dealt, to 0.5 precision and scaled by 10, rounding up
# example: if the player dealt 0.75 damage, the score would be 10. 1.1 damage, 15 on the scoreboard
execute if score #DAMAGE_DEALT# utils.API matches 1000.. run say OVERKILL!!!

# the utils.API.combat.disable_advancement is a tag you can add to the player to disable the activation of the advancement. use this if you want to do stuff like /damage with the player as the source
# NOTE: THIS IS IMPORTANT! you dont want to trigger weapon abilities or anything else like that outta nowhere
tag @s add utils.API.combat.disable_advancement
execute at @s as @e[distance=..10] run damage @s 10 player_attack by @p
tag @s remove utils.API.combat.disable_advancement