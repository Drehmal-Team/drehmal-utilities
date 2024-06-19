# EDATA/TO_HEX
#
# Converts an int-array UUID at "ntils:api edata.uuid.to_hex.in" to a stringified UUID at "ntils:api edata.uuid.to_hex.out"
# Note: this is exceedingly pointlessly optimized
#
# IN: int array
#
# OUT: string

data modify storage ntils:z edata.uuid.to_hex.macro set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0}
execute store result score #h7 ntils.temp store result score #h6 ntils.temp run data get storage ntils:api edata.uuid.to_hex.in[0]
execute store result score #h5 ntils.temp store result score #h4 ntils.temp run data get storage ntils:api edata.uuid.to_hex.in[1] 
execute store result score #h3 ntils.temp store result score #h2 ntils.temp run data get storage ntils:api edata.uuid.to_hex.in[2]
execute store result score #h1 ntils.temp store result score #h0 ntils.temp run data get storage ntils:api edata.uuid.to_hex.in[3]
scoreboard players operation #h7 ntils.temp /= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.7 int 1 run scoreboard players operation #h7 ntils.temp %= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.6 int 1 run scoreboard players operation #h6 ntils.temp %= #2^16 ntils.const
scoreboard players operation #h5 ntils.temp /= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.5 int 1 run scoreboard players operation #h5 ntils.temp %= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.4 int 1 run scoreboard players operation #h4 ntils.temp %= #2^16 ntils.const
scoreboard players operation #h3 ntils.temp /= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.3 int 1 run scoreboard players operation #h3 ntils.temp %= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.2 int 1 run scoreboard players operation #h2 ntils.temp %= #2^16 ntils.const
scoreboard players operation #h1 ntils.temp /= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.1 int 1 run scoreboard players operation #h1 ntils.temp %= #2^16 ntils.const
execute store result storage ntils:z edata.uuid.to_hex.macro.0 int 1 run scoreboard players operation #h0 ntils.temp %= #2^16 ntils.const
function ntils:z/edata/uuid/to_hex/from_table with storage ntils:z edata.uuid.to_hex.macro
function ntils:z/edata/uuid/to_hex/create_uuid with storage ntils:z edata.uuid.to_hex.macro