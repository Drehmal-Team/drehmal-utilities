$execute unless block ~ ~ ~ #ntils:api/cast/hitbox/$(t)/empty if function ntils:z/cast/ray/collide/tree/$(t) run return 1
$scoreboard players operation #c$(c) ntils.z.cast.temp += #s$(c) ntils.z.cast.temp
$execute if score #cx ntils.z.cast.temp <= #cy ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~$(x) ~ ~ run return run function ntils:z/cast/ray/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t),c:x}
$execute if score #cy ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cy ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~ ~$(y) ~ run return run function ntils:z/cast/ray/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t),c:y}
$execute if score #cz ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~ ~ ~$(z) run return run function ntils:z/cast/ray/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t),c:z}
return fail