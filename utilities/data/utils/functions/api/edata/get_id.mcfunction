# EDATA/GET_ID
#
# Run as an entity to get its entity ID. Works for any mob, including non-vanilla. The ID can be accessed at utils:api edata.get_id.out
#
# OUT: string

execute on vehicle run tag @s add utils.z.i_was_riding_this
ride @s dismount

tag @s add utils.z.temp
execute at @s summon block_display run function utils:z/edata/get_id/main
tag @s remove utils.z.temp

ride @s mount @e[tag=utils.z.i_was_riding_this,limit=1]
tag @e remove utils.z.i_was_riding_this