data modify storage ntils:z time.get.minhour.macro set value {m:'',h:''}
data modify storage ntils:z time.get.minhour.s set from block 0 2 0 LastOutput
fill 0 2 0 0 3 0 air

data modify storage ntils:z time.get.minhour.macro.h set string storage ntils:z time.get.minhour.s 10 12
data modify storage ntils:z time.get.minhour.macro.m set string storage ntils:z time.get.minhour.s 13 15

function ntils:z/time/get/minhour/macro with storage ntils:z time.get.minhour.macro
function #ntils:api/time/listeners/minhour

scoreboard players set #GETTING_MINHOUR_TIME# ntils.z.global 0
