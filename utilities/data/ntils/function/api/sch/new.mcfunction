function ntils:api/uuid/get_hex

function ntils:api/pos/get_dim

$data modify storage ntils:z sch.temp set value {cmd:"$(Command)",uuid:'',name:"$(Name)",id:0,dim:''}
data modify storage ntils:z sch.temp.dim set from storage ntils:api pos.get_dim.out
data modify storage ntils:z sch.temp.uuid set from storage ntils:api uuid.get_hex.out

$data modify storage ntils:z sch.new.macro set value {gt:0,name:"$(Name)",id:0}

execute store result storage ntils:z sch.temp.id int 1 store result storage ntils:z sch.new.macro.id int 1 run scoreboard players add #SCH_ID ntils.z.global 1

execute store result score #gt utils.temp run time query gametime
$execute store result storage ntils:z sch.new.macro.gt int 1 run scoreboard players add #gt utils.temp $(Delay)
function ntils:z/sch/new/main with storage ntils:z sch.new.macro

schedule function ntils:z/sch/tick 1t

return run scoreboard players get #SCH_ID ntils.z.global