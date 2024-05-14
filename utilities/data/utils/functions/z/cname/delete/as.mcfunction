ride @s mount @e[tag=utils.z.i_was_riding_this,limit=1]
tag @e remove utils.z.i_was_riding_this

execute as @e[tag=utils.z.was_riding_me] run ride @s mount @e[tag=utils.z.temp,limit=1]
tag @e remove utils.z.was_riding_me
tag @s remove utils.z.temp