execute store result score #px1 ntils.z.cast.temp run data get storage ntils:z cast.box[-1][0]
execute store result score #pz1 ntils.z.cast.temp run data get storage ntils:z cast.box[-1][2]
execute store result score #px2 ntils.z.cast.temp run data get storage ntils:z cast.box[-1][3]
execute store result score #pz2 ntils.z.cast.temp run data get storage ntils:z cast.box[-1][5]

execute store result score #tempdist ntils.z.cast.temp run data get storage ntils:z cast.box[-1][4]

scoreboard players operation #px1 ntils.z.cast.temp *= #s/16x ntils.z.cast.temp
scoreboard players operation #pz1 ntils.z.cast.temp *= #s/16z ntils.z.cast.temp
scoreboard players operation #px2 ntils.z.cast.temp *= #s/16x ntils.z.cast.temp
scoreboard players operation #pz2 ntils.z.cast.temp *= #s/16z ntils.z.cast.temp
execute store result score #ay ntils.z.cast.temp run scoreboard players operation #tempdist ntils.z.cast.temp *= #s/16y ntils.z.cast.temp

scoreboard players operation #tempdist ntils.z.cast.temp -= #cy ntils.z.cast.temp
execute store result score #ax ntils.z.cast.temp store result score #az ntils.z.cast.temp run scoreboard players operation #tempdist ntils.z.cast.temp *= #svy ntils.z.cast.temp

scoreboard players operation #ax ntils.z.cast.temp *= #svx ntils.z.cast.temp
scoreboard players operation #az ntils.z.cast.temp *= #svz ntils.z.cast.temp

scoreboard players operation #ax ntils.z.cast.temp += #cx ntils.z.cast.temp
scoreboard players operation #az ntils.z.cast.temp += #cz ntils.z.cast.temp

execute \
    if score #ax ntils.z.cast.temp >= #px1 ntils.z.cast.temp if score #ax ntils.z.cast.temp <= #px2 ntils.z.cast.temp \
    if score #az ntils.z.cast.temp >= #pz1 ntils.z.cast.temp if score #az ntils.z.cast.temp <= #pz2 ntils.z.cast.temp \
    if score #tempdist ntils.z.cast.temp < #hitdist ntils.z.cast.temp if function ntils:z/cast/test/with/box run data modify storage ntils:api cast.out.normal set value [0d,1d,0d]