# EDATA/GET_ALL_SCORES
#
# Gets every scoreholder and copies it to a list. Scoreholders are entity hex UUIDs and real/fake player usernames.
#
# MACRO INPUTS:
# - Args: An object containing various arguments
#       - Allowed_Chars: A list of characters. Scoreholders will only be added to the output list if they contain characters on this list, and no others.
#                        All scoreholders will be considered valid if this list is unspecified.
#       - Min_Length: The minimum length of a scoreholder that will be able to be added to the output list.
#       - Max_Length: The maximum length of a scoreholder that will be able to be added to the output list.
#
# PERFORMANCE: Horrible
#   Runs in a single tick and creates a massive lag spike if the scoreboard file is large. Do not run this outside of, say, load functions.

execute if score #GETTING_SCORES# ntils.z.global matches 1 run return fail

execute store result score #SCORE_COUNT# ntils.z.global run scoreboard players list

execute if score #SCORE_COUNT# ntils.z.global matches 0 run return fail

$data modify storage ntils:z edata.get_all_scores.args set value $(Args)

scoreboard players set #GETTING_SCORES# ntils.z.global 1
scoreboard players set #MAX_NAME_LENGTH# ntils.z.global -1
scoreboard players set #MIN_NAME_LENGTH# ntils.z.global -1
execute if data storage ntils:z edata.get_all_scores.args.Max_Length store result score #MAX_NAME_LENGTH# ntils.z.global run data get storage ntils:z edata.get_all_scores.args.Max_Length
execute if data storage ntils:z edata.get_all_scores.args.Min_Length store result score #MIN_NAME_LENGTH# ntils.z.global run data get storage ntils:z edata.get_all_scores.args.Min_Length

execute if data storage ntils:z edata.get_all_scores.args.Allowed_Chars run data modify storage ntils:z edata.get_all_scores.args.Allowed_Chars append value null

data modify storage ntils:z edata.get_all_scores.out set value []

execute in ntils:z/empty run setblock 0 1 0 air
execute in ntils:z/empty run setblock 0 1 0 command_block{auto:True,Command:"scoreboard players list"}

schedule function ntils:z/edata/get_all_scores/schedule 2t