kill @e[type=marker,tag=ntest.arb.tick]
data modify storage ntils:api math.bz.n.in append from entity @s Pos
data merge entity @s {billboard:"center",Tags:["ntest.n_bez"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"color":"white","italic":false,"score":{"name":"#point_num","objective":"ntest.global"}}'}
summon block_display ~ ~ ~ {Glowing:1b,glow_color_override:4944790,Tags:["ntest.n_bez"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:diamond_block"}}
particle end_rod ~ ~ ~ 0 0 0 0.5 10 force
playsound minecraft:block.respawn_anchor.charge player @a