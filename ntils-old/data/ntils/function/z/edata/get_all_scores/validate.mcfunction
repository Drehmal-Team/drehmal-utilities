#$say $(start) $(end)
$data modify storage ntils:z edata.get_all_scores.tempstr set string storage ntils:z edata.get_all_scores.source $(start) $(end)
scoreboard players set #add ntils.z.temp 1
execute store result score #word_length ntils.z.temp run data get storage ntils:z edata.get_all_scores.tempstr
execute unless score #MAX_NAME_LENGTH# ntils.z.global matches -1 if score #word_length ntils.z.temp > #MAX_NAME_LENGTH# ntils.z.global run return fail
execute unless score #MIN_NAME_LENGTH# ntils.z.global matches -1 if score #word_length ntils.z.temp < #MIN_NAME_LENGTH# ntils.z.global run return fail
execute if data storage ntils:z edata.get_all_scores.args.Allowed_Chars[] store result score #add ntils.z.temp run function ntils:z/edata/get_all_scores/v/chars
execute if score #add ntils.z.temp matches 0 run return fail
data modify storage ntils:z edata.get_all_scores.out append from storage ntils:z edata.get_all_scores.tempstr