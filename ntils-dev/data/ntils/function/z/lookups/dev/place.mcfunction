kill @e[type=marker,tag=ntils.z.lookups]
setblock ~ ~3 ~ minecraft:structure_block[mode=save]{author:"",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"ntils:z/lookups",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:1,sizeY:1,sizeZ:1}
setblock ~ ~4 ~ structure_void
execute align xyz positioned ~.5 ~4.5 ~.5 summon marker run function ntils:z/lookups/dev/marker