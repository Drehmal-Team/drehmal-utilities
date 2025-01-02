#execute unless block ~ ~ ~ air align xyz run return run summon block_display ~ ~ ~ {view_range:100,brightness:{sky:15,block:15},Tags:["ntils.z.ray.test.hit"],transformation:{scale:[1.125,1.125,1.125],translation:[-0.0625,-0.0625,-0.0625]},block_state:{Name:"lime_stained_glass"},Glowing:True,glow_color_override:2162434}
execute unless block ~ ~ ~ #ntils:api/ray/hitbox/none if function ntils:z/ray/test/collide run return 1
scoreboard players add #loop ntils.z.ray.temp 1
execute if score #loop ntils.z.ray.temp matches 500.. run return run function ntils:z/ray/test/term
$execute if score #dx ntils.z.ray.temp < #dy ntils.z.ray.temp if score #dx ntils.z.ray.temp < #dz ntils.z.ray.temp positioned ~$(x) ~ ~ run return run function ntils:z/ray/test/tree/x
$execute if score #dy ntils.z.ray.temp < #dx ntils.z.ray.temp if score #dy ntils.z.ray.temp < #dz ntils.z.ray.temp positioned ~ ~$(y) ~ run return run function ntils:z/ray/test/tree/y
$execute positioned ~ ~ ~$(z) run return run function ntils:z/ray/test/tree/z