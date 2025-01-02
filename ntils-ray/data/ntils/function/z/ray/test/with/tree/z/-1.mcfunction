execute store result score #px1 ntils.z.ray.temp run data get storage ntils:z ray.box[-1][0]
execute store result score #py1 ntils.z.ray.temp run data get storage ntils:z ray.box[-1][1]
execute store result score #px2 ntils.z.ray.temp run data get storage ntils:z ray.box[-1][3]
execute store result score #py2 ntils.z.ray.temp run data get storage ntils:z ray.box[-1][4]

execute store result score #tempdist ntils.z.ray.temp run data get storage ntils:z ray.box[-1][5]

scoreboard players operation #px1 ntils.z.ray.temp *= #s/16x ntils.z.ray.temp
scoreboard players operation #py1 ntils.z.ray.temp *= #s/16y ntils.z.ray.temp
scoreboard players operation #px2 ntils.z.ray.temp *= #s/16x ntils.z.ray.temp
scoreboard players operation #py2 ntils.z.ray.temp *= #s/16y ntils.z.ray.temp
execute store result score #az ntils.z.ray.temp run scoreboard players operation #tempdist ntils.z.ray.temp *= #s/16z ntils.z.ray.temp

scoreboard players operation #tempdist ntils.z.ray.temp -= #cz ntils.z.ray.temp
execute store result score #ax ntils.z.ray.temp store result score #ay ntils.z.ray.temp run scoreboard players operation #tempdist ntils.z.ray.temp *= #svz ntils.z.ray.temp

scoreboard players operation #ax ntils.z.ray.temp *= #svx ntils.z.ray.temp
scoreboard players operation #ay ntils.z.ray.temp *= #svy ntils.z.ray.temp

scoreboard players operation #ax ntils.z.ray.temp += #cx ntils.z.ray.temp
scoreboard players operation #ay ntils.z.ray.temp += #cy ntils.z.ray.temp

execute \
    if score #ax ntils.z.ray.temp >= #px1 ntils.z.ray.temp if score #ax ntils.z.ray.temp <= #px2 ntils.z.ray.temp \
    if score #ay ntils.z.ray.temp >= #py1 ntils.z.ray.temp if score #ay ntils.z.ray.temp <= #py2 ntils.z.ray.temp \
    if score #tempdist ntils.z.ray.temp < #hitdist ntils.z.ray.temp if function ntils:z/ray/test/with/box run data modify storage ntils:api ray.out.normal set value [0d,0d,1d]