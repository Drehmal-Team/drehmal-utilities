$execute unless block ~ ~ ~ #ntils:api/cast/hitbox/$(t)/empty if function ntils:z/cast/ray/normal/collide/tree/$(t) run return 1
$execute if score #cx ntils.z.cast.temp <= #cy ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #d ntils.z.cast.temp unless function ntils:z/cast/ray/normal/traverse/x positioned ~$(x) ~ ~ run return run function ntils:z/cast/ray/normal/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
$execute if score #cy ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cy ntils.z.cast.temp <= #d ntils.z.cast.temp unless function ntils:z/cast/ray/normal/traverse/y positioned ~ ~$(y) ~ run return run function ntils:z/cast/ray/normal/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
$execute if score #cz ntils.z.cast.temp <= #d ntils.z.cast.temp unless function ntils:z/cast/ray/normal/traverse/z positioned ~ ~ ~$(z) run return run function ntils:z/cast/ray/normal/traverse/loop {x:$(x),y:$(y),z:$(z),t:$(t)}
return fail