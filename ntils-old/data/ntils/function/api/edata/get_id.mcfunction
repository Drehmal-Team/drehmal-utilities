# EDATA/GET_ID
#
# Run as an entity to get its entity ID. Works for any mob, including non-vanilla. The ID can be accessed at ntils:api edata.get_id.out
#
# OUT: string
#
# PERFORMANCE: Meh
#   Requires a temp display entity and needs a lot of /ride commands to work, making this quite unweildly. Still, not terrible, and also not prone to breaking things.

execute on vehicle run tag @s add ntils.z.edata.get_id.i_was_riding_this
ride @s dismount

tag @s add ntils.z.edata.get_id.temp
execute at @s summon block_display run function ntils:z/edata/get_id/main
tag @s remove ntils.z.edata.get_id.temp

ride @s mount @e[tag=ntils.z.edata.get_id.i_was_riding_this,limit=1]
tag @e remove ntils.z.edata.get_id.i_was_riding_this