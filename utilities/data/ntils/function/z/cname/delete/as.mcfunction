ride @s mount @e[tag=ntils.z.i_was_riding_this,limit=1]
tag @e remove ntils.z.i_was_riding_this

execute as @e[tag=ntils.z.was_riding_me] run ride @s mount @e[tag=ntils.z.temp,limit=1]
tag @e remove ntils.z.was_riding_me
tag @s remove ntils.z.temp