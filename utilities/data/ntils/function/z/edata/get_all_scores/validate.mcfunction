#$say $(start) $(end)
$data modify storage ntils:z edata.get_all_scores.tempstr set string storage ntils:z edata.get_all_scores.source $(start) $(end)
scoreboard players set #add ntils.temp 1
execute store result score #word_length ntils.temp run data get storage ntils:z edata.get_all_scores.tempstr
execute unless score #MAX_NAME_LENGTH# ntils.global matches -1 if score #word_length ntils.temp > #MAX_NAME_LENGTH# ntils.global run return fail
execute unless score #MIN_NAME_LENGTH# ntils.global matches -1 if score #word_length ntils.temp < #MIN_NAME_LENGTH# ntils.global run return fail
execute if data storage ntils:z edata.get_all_scores.args.Allowed_Chars[] store result score #add ntils.temp run function ntils:z/edata/get_all_scores/v/chars
execute if score #add ntils.temp matches 0 run return fail
data modify storage ntils:z edata.get_all_scores.output append from storage ntils:z edata.get_all_scores.tempstr