$execute unless block ~ ~ ~ #ntils:api/cast/hitbox/$(t)/empty if function ntils:z/cast/ray/collide/tree/$(t) run return 1
scoreboard players set #w ntils.z.cast.temp -1
execute if score #cx ntils.z.cast.temp <= #cy ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #d ntils.z.cast.temp store result score #w ntils.z.cast.temp run scoreboard players operation #cx ntils.z.cast.temp += #sx ntils.z.cast.temp
execute unless score #w ntils.z.cast.temp matches 0.. if score #cy ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cy ntils.z.cast.temp <= #d ntils.z.cast.temp store result score #w ntils.z.cast.temp run scoreboard players operation #cy ntils.z.cast.temp += #sy ntils.z.cast.temp
execute unless score #w ntils.z.cast.temp matches 0.. if score #cz ntils.z.cast.temp <= #d ntils.z.cast.temp store result score #w ntils.z.cast.temp run scoreboard players operation #cz ntils.z.cast.temp += #sz ntils.z.cast.temp
$execute if score #w ntils.z.cast.temp = #cx ntils.z.cast.temp positioned ~$(x) ~ ~ run return run function ntils:z/cast/ray/traverse2/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
$execute if score #w ntils.z.cast.temp = #cy ntils.z.cast.temp positioned ~ ~$(y) ~ run return run function ntils:z/cast/ray/traverse2/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
$execute if score #w ntils.z.cast.temp = #cz ntils.z.cast.temp positioned ~ ~ ~$(z) run return run function ntils:z/cast/ray/traverse2/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
return fail