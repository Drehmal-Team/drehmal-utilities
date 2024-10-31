kill @e[type=block_display,tag=ntest.b.p.a]
kill @e[type=text_display,tag=ntest.b.p.a]
summon block_display ~ ~ ~ {Glowing:1b,glow_color_override:323088,Tags:["ntest.b.p.a"],Passengers:[{id:"minecraft:text_display",billboard:"center",Tags:["ntest.b.p.a"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.8f,0f],scale:[1.5f,1.5f,1.5f]},text:'[{"color":"white","text":"Curve "},{"bold":true,"color":"yellow","text":"Start"}]'}],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,-.5f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:lime_stained_glass"}}
function ntils:api/pos/get
execute store result score #bz.p.a.x ntest.global store result score #math.bz.4.in.a.x ntils.API run data get storage ntils:api pos.get.out[0] 1000
execute store result score #bz.p.a.y ntest.global store result score #math.bz.4.in.a.y ntils.API run data get storage ntils:api pos.get.out[1] 1000
execute store result score #bz.p.a.z ntest.global store result score #math.bz.4.in.a.z ntils.API run data get storage ntils:api pos.get.out[2] 1000