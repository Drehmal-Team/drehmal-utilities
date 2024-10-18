ride @s mount @e[tag=ntils.z.edata.remove.i_was_riding_this,limit=1]
tag @e remove ntils.z.edata.remove.i_was_riding_this

execute as @e[tag=ntils.z.edata.remove.was_riding_me] run ride @s mount @e[tag=ntils.z.edata.remove.temp,limit=1]
tag @e remove ntils.z.edata.remove.was_riding_me
tag @s remove ntils.z.edata.remove.temp