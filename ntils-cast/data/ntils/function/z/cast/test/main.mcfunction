#execute unless block ~ ~ ~ air align xyz run return run summon block_display ~ ~ ~ {view_range:100,brightness:{sky:15,block:15},Tags:["ntils.z.cast.test.hit"],transformation:{scale:[1.125,1.125,1.125],translation:[-0.0625,-0.0625,-0.0625]},block_state:{Name:"lime_stained_glass"},Glowing:True,glow_color_override:2162434}
execute unless block ~ ~ ~ #ntils:api/cast/hitbox/collision/empty if function ntils:z/cast/test/collide run return 1
scoreboard players add #loop ntils.z.cast.temp 1
execute if score #loop ntils.z.cast.temp matches 500.. run return run function ntils:z/cast/test/term
$execute if score #dx ntils.z.cast.temp < #dy ntils.z.cast.temp if score #dx ntils.z.cast.temp < #dz ntils.z.cast.temp positioned ~$(x) ~ ~ run return run function ntils:z/cast/test/tree/x
$execute if score #dy ntils.z.cast.temp < #dx ntils.z.cast.temp if score #dy ntils.z.cast.temp < #dz ntils.z.cast.temp positioned ~ ~$(y) ~ run return run function ntils:z/cast/test/tree/y
$execute positioned ~ ~ ~$(z) run return run function ntils:z/cast/test/tree/z