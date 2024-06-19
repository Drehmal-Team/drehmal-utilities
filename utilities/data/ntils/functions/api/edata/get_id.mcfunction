# EDATA/GET_ID
#
# Run as an entity to get its entity ID. Works for any mob, including non-vanilla. The ID can be accessed at ntils:api edata.get_id.out
#
# OUT: string

execute on vehicle run tag @s add ntils.z.i_was_riding_this
ride @s dismount

tag @s add ntils.z.temp
execute at @s summon block_display run function ntils:z/edata/get_id/main
tag @s remove ntils.z.temp

ride @s mount @e[tag=ntils.z.i_was_riding_this,limit=1]
tag @e remove ntils.z.i_was_riding_this