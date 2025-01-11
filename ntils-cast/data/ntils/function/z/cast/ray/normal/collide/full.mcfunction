scoreboard players operation #cx ntils.z.cast.temp -= #sx ntils.z.cast.temp
scoreboard players operation #cy ntils.z.cast.temp -= #sy ntils.z.cast.temp
execute store result score #df ntils.z.cast.temp run scoreboard players operation #cz ntils.z.cast.temp -= #sz ntils.z.cast.temp
scoreboard players operation #df ntils.z.cast.temp > #cx ntils.z.cast.temp
scoreboard players operation #df ntils.z.cast.temp > #cy ntils.z.cast.temp
return 1