#$say $(start) $(end)
$data modify storage utils:z edata.get_all_scores.tempstr set string storage utils:z edata.get_all_scores.source $(start) $(end)
scoreboard players set #add utils.temp 1
execute store result score #word_length utils.temp run data get storage utils:z edata.get_all_scores.tempstr
execute unless score #MAX_NAME_LENGTH# utils.global matches -1 if score #word_length utils.temp > #MAX_NAME_LENGTH# utils.global run return fail
execute unless score #MIN_NAME_LENGTH# utils.global matches -1 if score #word_length utils.temp < #MIN_NAME_LENGTH# utils.global run return fail
execute if data storage utils:z edata.get_all_scores.args.Allowed_Chars[] store result score #add utils.temp run function utils:z/edata/get_all_scores/v/chars
execute if score #add utils.temp matches 0 run return fail
data modify storage utils:z edata.get_all_scores.output append from storage utils:z edata.get_all_scores.tempstr