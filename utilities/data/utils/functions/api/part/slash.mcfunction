# PART/SLASH
#
# Creates a particle slash. The slash is produced by spininng around a rotational axis, which in this case extends directly above the rotational context.
#
# INPUTS:
#   - #SLASH_FRAME_CURRENT# utils.API: The current "frame" of the slash. When this function is run, it will display different points along the slash
#                                      based on the current and max frame. Specifically, it displays all points along the circle between 360 * (frame - 1) /max and 360 * (frame / max)
#   - #SLASH_FRAME_MAX# utils.API: The max "frame" of the slash. Once the current frame and max frame are equal, the entire circle would have been rendered.
#   - #SLASH_REVERSE# utils.API: The slash normally plays counterclockwise. Set this to make it play clockwise.
#
# MACRO INPUTS:
#   - Command: This is a string which will be the command that is played at each point along the slash. It will run at the location this function is run but its rotation will be modified.
#              Try a command like: "particle small_flame ^ ^ ^ ^ ^ ^1000000 0.000000166 0" to get an idea of how this works.

execute unless score #SLASH_REVERSE# utils.API matches 1 run scoreboard players operation #framecurrent2 utils.temp = #SLASH_FRAME_CURRENT# utils.API
execute if score #SLASH_REVERSE# utils.API matches 1 run scoreboard players operation #framecurrent2 utils.temp = #SLASH_FRAME_MAX# utils.API
execute if score #SLASH_REVERSE# utils.API matches 1 run scoreboard players operation #framecurrent2 utils.temp -= #SLASH_FRAME_CURRENT# utils.API
execute if score #SLASH_REVERSE# utils.API matches 1 run scoreboard players add #framecurrent2 utils.temp 1

scoreboard players operation #framecurrent3 utils.temp = #framecurrent2 utils.temp
scoreboard players remove #framecurrent3 utils.temp 1

scoreboard players operation #framecurrent3 utils.temp *= #120 utils.const
scoreboard players operation #framecurrent2 utils.temp *= #120 utils.const

scoreboard players operation #framecurrent3 utils.temp /= #SLASH_FRAME_MAX# utils.API
scoreboard players operation #framecurrent2 utils.temp /= #SLASH_FRAME_MAX# utils.API

scoreboard players reset #SLASH_REVERSE# utils.API

$execute if score #framecurrent2 utils.temp matches 30.. unless score #framecurrent3 utils.temp matches 31.. facing ^1 ^ ^ run $(Command)
$execute if score #framecurrent2 utils.temp matches 29.. unless score #framecurrent3 utils.temp matches 30.. facing ^0.998629534755 ^ ^0.0523359562429 run $(Command)
$execute if score #framecurrent2 utils.temp matches 28.. unless score #framecurrent3 utils.temp matches 29.. facing ^0.994521895368 ^ ^0.104528463268 run $(Command)
$execute if score #framecurrent2 utils.temp matches 27.. unless score #framecurrent3 utils.temp matches 28.. facing ^0.987688340595 ^ ^0.15643446504 run $(Command)
$execute if score #framecurrent2 utils.temp matches 26.. unless score #framecurrent3 utils.temp matches 27.. facing ^0.978147600734 ^ ^0.207911690818 run $(Command)
$execute if score #framecurrent2 utils.temp matches 25.. unless score #framecurrent3 utils.temp matches 26.. facing ^0.965925826289 ^ ^0.258819045103 run $(Command)
$execute if score #framecurrent2 utils.temp matches 24.. unless score #framecurrent3 utils.temp matches 25.. facing ^0.951056516295 ^ ^0.309016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 23.. unless score #framecurrent3 utils.temp matches 24.. facing ^0.933580426497 ^ ^0.358367949545 run $(Command)
$execute if score #framecurrent2 utils.temp matches 22.. unless score #framecurrent3 utils.temp matches 23.. facing ^0.913545457643 ^ ^0.406736643076 run $(Command)
$execute if score #framecurrent2 utils.temp matches 21.. unless score #framecurrent3 utils.temp matches 22.. facing ^0.891006524188 ^ ^0.45399049974 run $(Command)
$execute if score #framecurrent2 utils.temp matches 20.. unless score #framecurrent3 utils.temp matches 21.. facing ^0.866025403784 ^ ^0.5 run $(Command)
$execute if score #framecurrent2 utils.temp matches 19.. unless score #framecurrent3 utils.temp matches 20.. facing ^0.838670567945 ^ ^0.544639035015 run $(Command)
$execute if score #framecurrent2 utils.temp matches 18.. unless score #framecurrent3 utils.temp matches 19.. facing ^0.809016994375 ^ ^0.587785252292 run $(Command)
$execute if score #framecurrent2 utils.temp matches 17.. unless score #framecurrent3 utils.temp matches 18.. facing ^0.777145961457 ^ ^0.62932039105 run $(Command)
$execute if score #framecurrent2 utils.temp matches 16.. unless score #framecurrent3 utils.temp matches 17.. facing ^0.743144825477 ^ ^0.669130606359 run $(Command)
$execute if score #framecurrent2 utils.temp matches 15.. unless score #framecurrent3 utils.temp matches 16.. facing ^0.707106781187 ^ ^0.707106781187 run $(Command)

$execute if score #framecurrent2 utils.temp matches 14.. unless score #framecurrent3 utils.temp matches 15.. facing ^0.669130606359 ^ ^0.743144825477 run $(Command)
$execute if score #framecurrent2 utils.temp matches 13.. unless score #framecurrent3 utils.temp matches 14.. facing ^0.62932039105 ^ ^0.777145961457 run $(Command)
$execute if score #framecurrent2 utils.temp matches 12.. unless score #framecurrent3 utils.temp matches 13.. facing ^0.587785252292 ^ ^0.809016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 11.. unless score #framecurrent3 utils.temp matches 12.. facing ^0.544639035015 ^ ^0.838670567945 run $(Command)
$execute if score #framecurrent2 utils.temp matches 10.. unless score #framecurrent3 utils.temp matches 11.. facing ^0.5 ^ ^0.866025403784 run $(Command)
$execute if score #framecurrent2 utils.temp matches 9.. unless score #framecurrent3 utils.temp matches 10.. facing ^0.45399049974 ^ ^0.891006524188 run $(Command)
$execute if score #framecurrent2 utils.temp matches 8.. unless score #framecurrent3 utils.temp matches 9.. facing ^0.406736643076 ^ ^0.913545457643 run $(Command)
$execute if score #framecurrent2 utils.temp matches 7.. unless score #framecurrent3 utils.temp matches 8.. facing ^0.358367949545 ^ ^0.933580426497 run $(Command)
$execute if score #framecurrent2 utils.temp matches 6.. unless score #framecurrent3 utils.temp matches 7.. facing ^0.309016994375 ^ ^0.951056516295 run $(Command)
$execute if score #framecurrent2 utils.temp matches 5.. unless score #framecurrent3 utils.temp matches 6.. facing ^0.258819045103 ^ ^0.965925826289 run $(Command)
$execute if score #framecurrent2 utils.temp matches 4.. unless score #framecurrent3 utils.temp matches 5.. facing ^0.207911690818 ^ ^0.978147600734 run $(Command)
$execute if score #framecurrent2 utils.temp matches 3.. unless score #framecurrent3 utils.temp matches 4.. facing ^0.15643446504 ^ ^0.987688340595 run $(Command)
$execute if score #framecurrent2 utils.temp matches 2.. unless score #framecurrent3 utils.temp matches 3.. facing ^0.104528463268 ^ ^0.994521895368 run $(Command)
$execute if score #framecurrent2 utils.temp matches 1.. unless score #framecurrent3 utils.temp matches 2.. facing ^0.0523359562429 ^ ^0.998629534755 run $(Command)
$execute if score #framecurrent2 utils.temp matches 0.. unless score #framecurrent3 utils.temp matches 1.. facing ^ ^ ^1 run $(Command)

$execute if score #framecurrent2 utils.temp matches 31.. unless score #framecurrent3 utils.temp matches 32.. facing ^0.998629534755 ^ ^-0.0523359562429 run $(Command)
$execute if score #framecurrent2 utils.temp matches 32.. unless score #framecurrent3 utils.temp matches 33.. facing ^0.994521895368 ^ ^-0.104528463268 run $(Command)
$execute if score #framecurrent2 utils.temp matches 33.. unless score #framecurrent3 utils.temp matches 34.. facing ^0.987688340595 ^ ^-0.15643446504 run $(Command)
$execute if score #framecurrent2 utils.temp matches 34.. unless score #framecurrent3 utils.temp matches 35.. facing ^0.978147600734 ^ ^-0.207911690818 run $(Command)
$execute if score #framecurrent2 utils.temp matches 35.. unless score #framecurrent3 utils.temp matches 36.. facing ^0.965925826289 ^ ^-0.258819045103 run $(Command)
$execute if score #framecurrent2 utils.temp matches 36.. unless score #framecurrent3 utils.temp matches 37.. facing ^0.951056516295 ^ ^-0.309016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 37.. unless score #framecurrent3 utils.temp matches 38.. facing ^0.933580426497 ^ ^-0.358367949545 run $(Command)
$execute if score #framecurrent2 utils.temp matches 38.. unless score #framecurrent3 utils.temp matches 39.. facing ^0.913545457643 ^ ^-0.406736643076 run $(Command)
$execute if score #framecurrent2 utils.temp matches 39.. unless score #framecurrent3 utils.temp matches 40.. facing ^0.891006524188 ^ ^-0.45399049974 run $(Command)
$execute if score #framecurrent2 utils.temp matches 40.. unless score #framecurrent3 utils.temp matches 41.. facing ^0.866025403784 ^ ^-0.5 run $(Command)
$execute if score #framecurrent2 utils.temp matches 41.. unless score #framecurrent3 utils.temp matches 42.. facing ^0.838670567945 ^ ^-0.544639035015 run $(Command)
$execute if score #framecurrent2 utils.temp matches 42.. unless score #framecurrent3 utils.temp matches 43.. facing ^0.809016994375 ^ ^-0.587785252292 run $(Command)
$execute if score #framecurrent2 utils.temp matches 43.. unless score #framecurrent3 utils.temp matches 44.. facing ^0.777145961457 ^ ^-0.62932039105 run $(Command)
$execute if score #framecurrent2 utils.temp matches 44.. unless score #framecurrent3 utils.temp matches 45.. facing ^0.743144825477 ^ ^-0.669130606359 run $(Command)
$execute if score #framecurrent2 utils.temp matches 45.. unless score #framecurrent3 utils.temp matches 46.. facing ^0.707106781187 ^ ^-0.707106781187 run $(Command)

$execute if score #framecurrent2 utils.temp matches 46.. unless score #framecurrent3 utils.temp matches 47.. facing ^0.669130606359 ^ ^-0.743144825477 run $(Command)
$execute if score #framecurrent2 utils.temp matches 47.. unless score #framecurrent3 utils.temp matches 48.. facing ^0.62932039105 ^ ^-0.777145961457 run $(Command)
$execute if score #framecurrent2 utils.temp matches 48.. unless score #framecurrent3 utils.temp matches 49.. facing ^0.587785252292 ^ ^-0.809016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 49.. unless score #framecurrent3 utils.temp matches 50.. facing ^0.544639035015 ^ ^-0.838670567945 run $(Command)
$execute if score #framecurrent2 utils.temp matches 50.. unless score #framecurrent3 utils.temp matches 51.. facing ^0.5 ^ ^-0.866025403784 run $(Command)
$execute if score #framecurrent2 utils.temp matches 51.. unless score #framecurrent3 utils.temp matches 52.. facing ^0.45399049974 ^ ^-0.891006524188 run $(Command)
$execute if score #framecurrent2 utils.temp matches 52.. unless score #framecurrent3 utils.temp matches 53.. facing ^0.406736643076 ^ ^-0.913545457643 run $(Command)
$execute if score #framecurrent2 utils.temp matches 53.. unless score #framecurrent3 utils.temp matches 54.. facing ^0.358367949545 ^ ^-0.933580426497 run $(Command)
$execute if score #framecurrent2 utils.temp matches 54.. unless score #framecurrent3 utils.temp matches 55.. facing ^0.309016994375 ^ ^-0.951056516295 run $(Command)
$execute if score #framecurrent2 utils.temp matches 55.. unless score #framecurrent3 utils.temp matches 56.. facing ^0.258819045103 ^ ^-0.965925826289 run $(Command)
$execute if score #framecurrent2 utils.temp matches 56.. unless score #framecurrent3 utils.temp matches 57.. facing ^0.207911690818 ^ ^-0.978147600734 run $(Command)
$execute if score #framecurrent2 utils.temp matches 57.. unless score #framecurrent3 utils.temp matches 58.. facing ^0.15643446504 ^ ^-0.987688340595 run $(Command)
$execute if score #framecurrent2 utils.temp matches 58.. unless score #framecurrent3 utils.temp matches 59.. facing ^0.104528463268 ^ ^-0.994521895368 run $(Command)
$execute if score #framecurrent2 utils.temp matches 59.. unless score #framecurrent3 utils.temp matches 60.. facing ^0.0523359562429 ^ ^-0.998629534755 run $(Command)
$execute if score #framecurrent2 utils.temp matches 60.. unless score #framecurrent3 utils.temp matches 61.. facing ^ ^ ^-1 run $(Command)

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

$execute if score #framecurrent2 utils.temp matches 90.. unless score #framecurrent3 utils.temp matches 91.. facing ^-1 ^ ^ run $(Command)
$execute if score #framecurrent2 utils.temp matches 89.. unless score #framecurrent3 utils.temp matches 90.. facing ^-0.998629534755 ^ ^-0.0523359562429 run $(Command)
$execute if score #framecurrent2 utils.temp matches 88.. unless score #framecurrent3 utils.temp matches 89.. facing ^-0.994521895368 ^ ^-0.104528463268 run $(Command)
$execute if score #framecurrent2 utils.temp matches 87.. unless score #framecurrent3 utils.temp matches 88.. facing ^-0.987688340595 ^ ^-0.15643446504 run $(Command)
$execute if score #framecurrent2 utils.temp matches 86.. unless score #framecurrent3 utils.temp matches 87.. facing ^-0.978147600734 ^ ^-0.207911690818 run $(Command)
$execute if score #framecurrent2 utils.temp matches 85.. unless score #framecurrent3 utils.temp matches 86.. facing ^-0.965925826289 ^ ^-0.258819045103 run $(Command)
$execute if score #framecurrent2 utils.temp matches 84.. unless score #framecurrent3 utils.temp matches 85.. facing ^-0.951056516295 ^ ^-0.309016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 83.. unless score #framecurrent3 utils.temp matches 84.. facing ^-0.933580426497 ^ ^-0.358367949545 run $(Command)
$execute if score #framecurrent2 utils.temp matches 82.. unless score #framecurrent3 utils.temp matches 83.. facing ^-0.913545457643 ^ ^-0.406736643076 run $(Command)
$execute if score #framecurrent2 utils.temp matches 81.. unless score #framecurrent3 utils.temp matches 82.. facing ^-0.891006524188 ^ ^-0.45399049974 run $(Command)
$execute if score #framecurrent2 utils.temp matches 80.. unless score #framecurrent3 utils.temp matches 81.. facing ^-0.866025403784 ^ ^-0.5 run $(Command)
$execute if score #framecurrent2 utils.temp matches 79.. unless score #framecurrent3 utils.temp matches 80.. facing ^-0.838670567945 ^ ^-0.544639035015 run $(Command)
$execute if score #framecurrent2 utils.temp matches 78.. unless score #framecurrent3 utils.temp matches 79.. facing ^-0.809016994375 ^ ^-0.587785252292 run $(Command)
$execute if score #framecurrent2 utils.temp matches 77.. unless score #framecurrent3 utils.temp matches 78.. facing ^-0.777145961457 ^ ^-0.62932039105 run $(Command)
$execute if score #framecurrent2 utils.temp matches 76.. unless score #framecurrent3 utils.temp matches 77.. facing ^-0.743144825477 ^ ^-0.669130606359 run $(Command)
$execute if score #framecurrent2 utils.temp matches 75.. unless score #framecurrent3 utils.temp matches 76.. facing ^-0.707106781187 ^ ^-0.707106781187 run $(Command)

$execute if score #framecurrent2 utils.temp matches 74.. unless score #framecurrent3 utils.temp matches 75.. facing ^-0.669130606359 ^ ^-0.743144825477 run $(Command)
$execute if score #framecurrent2 utils.temp matches 73.. unless score #framecurrent3 utils.temp matches 74.. facing ^-0.62932039105 ^ ^-0.777145961457 run $(Command)
$execute if score #framecurrent2 utils.temp matches 72.. unless score #framecurrent3 utils.temp matches 73.. facing ^-0.587785252292 ^ ^-0.809016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 71.. unless score #framecurrent3 utils.temp matches 72.. facing ^-0.544639035015 ^ ^-0.838670567945 run $(Command)
$execute if score #framecurrent2 utils.temp matches 70.. unless score #framecurrent3 utils.temp matches 71.. facing ^-0.5 ^ ^-0.866025403784 run $(Command)
$execute if score #framecurrent2 utils.temp matches 69.. unless score #framecurrent3 utils.temp matches 70.. facing ^-0.45399049974 ^ ^-0.891006524188 run $(Command)
$execute if score #framecurrent2 utils.temp matches 68.. unless score #framecurrent3 utils.temp matches 69.. facing ^-0.406736643076 ^ ^-0.913545457643 run $(Command)
$execute if score #framecurrent2 utils.temp matches 67.. unless score #framecurrent3 utils.temp matches 68.. facing ^-0.358367949545 ^ ^-0.933580426497 run $(Command)
$execute if score #framecurrent2 utils.temp matches 66.. unless score #framecurrent3 utils.temp matches 67.. facing ^-0.309016994375 ^ ^-0.951056516295 run $(Command)
$execute if score #framecurrent2 utils.temp matches 65.. unless score #framecurrent3 utils.temp matches 66.. facing ^-0.258819045103 ^ ^-0.965925826289 run $(Command)
$execute if score #framecurrent2 utils.temp matches 64.. unless score #framecurrent3 utils.temp matches 65.. facing ^-0.207911690818 ^ ^-0.978147600734 run $(Command)
$execute if score #framecurrent2 utils.temp matches 63.. unless score #framecurrent3 utils.temp matches 64.. facing ^-0.15643446504 ^ ^-0.987688340595 run $(Command)
$execute if score #framecurrent2 utils.temp matches 62.. unless score #framecurrent3 utils.temp matches 63.. facing ^-0.104528463268 ^ ^-0.994521895368 run $(Command)
$execute if score #framecurrent2 utils.temp matches 61.. unless score #framecurrent3 utils.temp matches 62.. facing ^-0.0523359562429 ^ ^-0.998629534755 run $(Command)

$execute if score #framecurrent2 utils.temp matches 91.. unless score #framecurrent3 utils.temp matches 92.. facing ^-0.998629534755 ^ ^0.0523359562429 run $(Command)
$execute if score #framecurrent2 utils.temp matches 92.. unless score #framecurrent3 utils.temp matches 93.. facing ^-0.994521895368 ^ ^.104528463268 run $(Command)
$execute if score #framecurrent2 utils.temp matches 93.. unless score #framecurrent3 utils.temp matches 94.. facing ^-0.987688340595 ^ ^0.15643446504 run $(Command)
$execute if score #framecurrent2 utils.temp matches 94.. unless score #framecurrent3 utils.temp matches 95.. facing ^-0.978147600734 ^ ^0.207911690818 run $(Command)
$execute if score #framecurrent2 utils.temp matches 95.. unless score #framecurrent3 utils.temp matches 96.. facing ^-0.965925826289 ^ ^0.258819045103 run $(Command)
$execute if score #framecurrent2 utils.temp matches 96.. unless score #framecurrent3 utils.temp matches 97.. facing ^-0.951056516295 ^ ^0.309016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 97.. unless score #framecurrent3 utils.temp matches 98.. facing ^-0.933580426497 ^ ^0.358367949545 run $(Command)
$execute if score #framecurrent2 utils.temp matches 98.. unless score #framecurrent3 utils.temp matches 99.. facing ^-0.913545457643 ^ ^0.406736643076 run $(Command)
$execute if score #framecurrent2 utils.temp matches 99.. unless score #framecurrent3 utils.temp matches 100.. facing ^-0.891006524188 ^ ^0.45399049974 run $(Command)
$execute if score #framecurrent2 utils.temp matches 100.. unless score #framecurrent3 utils.temp matches 101.. facing ^-0.866025403784 ^ ^0.5 run $(Command)
$execute if score #framecurrent2 utils.temp matches 101.. unless score #framecurrent3 utils.temp matches 102.. facing ^-0.838670567945 ^ ^0.544639035015 run $(Command)
$execute if score #framecurrent2 utils.temp matches 102.. unless score #framecurrent3 utils.temp matches 103.. facing ^-0.809016994375 ^ ^0.587785252292 run $(Command)
$execute if score #framecurrent2 utils.temp matches 103.. unless score #framecurrent3 utils.temp matches 104.. facing ^-0.777145961457 ^ ^0.62932039105 run $(Command)
$execute if score #framecurrent2 utils.temp matches 104.. unless score #framecurrent3 utils.temp matches 105.. facing ^-0.743144825477 ^ ^0.669130606359 run $(Command)
$execute if score #framecurrent2 utils.temp matches 105.. unless score #framecurrent3 utils.temp matches 106.. facing ^-0.707106781187 ^ ^0.707106781187 run $(Command)

$execute if score #framecurrent2 utils.temp matches 106.. unless score #framecurrent3 utils.temp matches 107.. facing ^-0.669130606359 ^ ^0.743144825477 run $(Command)
$execute if score #framecurrent2 utils.temp matches 107.. unless score #framecurrent3 utils.temp matches 108.. facing ^-0.62932039105 ^ ^0.777145961457 run $(Command)
$execute if score #framecurrent2 utils.temp matches 108.. unless score #framecurrent3 utils.temp matches 109.. facing ^-0.587785252292 ^ ^0.809016994375 run $(Command)
$execute if score #framecurrent2 utils.temp matches 109.. unless score #framecurrent3 utils.temp matches 110.. facing ^-0.544639035015 ^ ^0.838670567945 run $(Command)
$execute if score #framecurrent2 utils.temp matches 110.. unless score #framecurrent3 utils.temp matches 111.. facing ^-0.5 ^ ^0.866025403784 run $(Command)
$execute if score #framecurrent2 utils.temp matches 111.. unless score #framecurrent3 utils.temp matches 112.. facing ^-0.45399049974 ^ ^.891006524188 run $(Command)
$execute if score #framecurrent2 utils.temp matches 112.. unless score #framecurrent3 utils.temp matches 113.. facing ^-0.406736643076 ^ ^0.913545457643 run $(Command)
$execute if score #framecurrent2 utils.temp matches 113.. unless score #framecurrent3 utils.temp matches 114.. facing ^-0.358367949545 ^ ^0.933580426497 run $(Command)
$execute if score #framecurrent2 utils.temp matches 114.. unless score #framecurrent3 utils.temp matches 115.. facing ^-0.309016994375 ^ ^0.951056516295 run $(Command)
$execute if score #framecurrent2 utils.temp matches 115.. unless score #framecurrent3 utils.temp matches 116.. facing ^-0.258819045103 ^ ^0.965925826289 run $(Command)
$execute if score #framecurrent2 utils.temp matches 116.. unless score #framecurrent3 utils.temp matches 117.. facing ^-0.207911690818 ^ ^0.978147600734 run $(Command)
$execute if score #framecurrent2 utils.temp matches 117.. unless score #framecurrent3 utils.temp matches 118.. facing ^-0.15643446504 ^ ^0.987688340595 run $(Command)
$execute if score #framecurrent2 utils.temp matches 118.. unless score #framecurrent3 utils.temp matches 119.. facing ^-0.104528463268 ^ ^0.994521895368 run $(Command)
$execute if score #framecurrent2 utils.temp matches 119.. unless score #framecurrent3 utils.temp matches 120.. facing ^-0.0523359562429 ^ ^0.998629534755 run $(Command)