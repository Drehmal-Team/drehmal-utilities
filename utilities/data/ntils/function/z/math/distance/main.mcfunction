$data modify entity @s transformation set value [$(X)f,0f,0f,0f,$(Y)f,0f,0f,0f,$(Z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage ntils:api math.distance.out set from entity @s transformation.scale[0]
kill @s