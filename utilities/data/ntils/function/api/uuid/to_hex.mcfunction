# EDATA/TO_HEX
#
# Converts an int-array UUID at "ntils:api uuid.to_hex.in" to a stringified UUID at "ntils:api uuid.to_hex.out"
# Note: this is exceedingly pointlessly optimized
#
# IN: int array
#
# OUT: string

data modify storage ntils:z uuid.to_hex.macro set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0}
execute store result score #h7 ntils.z.temp store result score #h6 ntils.z.temp run data get storage ntils:api uuid.to_hex.in[0]
execute store result score #h5 ntils.z.temp store result score #h4 ntils.z.temp run data get storage ntils:api uuid.to_hex.in[1]
execute store result score #h3 ntils.z.temp store result score #h2 ntils.z.temp run data get storage ntils:api uuid.to_hex.in[2]
execute store result score #h1 ntils.z.temp store result score #h0 ntils.z.temp run data get storage ntils:api uuid.to_hex.in[3]
scoreboard players operation #h7 ntils.z.temp /= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.7 int 1 run scoreboard players operation #h7 ntils.z.temp %= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.6 int 1 run scoreboard players operation #h6 ntils.z.temp %= #2^16 ntils.z.const
scoreboard players operation #h5 ntils.z.temp /= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.5 int 1 run scoreboard players operation #h5 ntils.z.temp %= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.4 int 1 run scoreboard players operation #h4 ntils.z.temp %= #2^16 ntils.z.const
scoreboard players operation #h3 ntils.z.temp /= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.3 int 1 run scoreboard players operation #h3 ntils.z.temp %= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.2 int 1 run scoreboard players operation #h2 ntils.z.temp %= #2^16 ntils.z.const
scoreboard players operation #h1 ntils.z.temp /= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.1 int 1 run scoreboard players operation #h1 ntils.z.temp %= #2^16 ntils.z.const
execute store result storage ntils:z uuid.to_hex.macro.0 int 1 run scoreboard players operation #h0 ntils.z.temp %= #2^16 ntils.z.const
function ntils:z/uuid/to_hex/from_table with storage ntils:z uuid.to_hex.macro
function ntils:z/uuid/to_hex/create_uuid with storage ntils:z uuid.to_hex.macro