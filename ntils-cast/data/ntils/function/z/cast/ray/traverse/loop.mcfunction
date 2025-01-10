particle end_rod
$execute unless block ~ ~ ~ #ntils:api/cast/hitbox/$(t)/empty if function ntils:z/cast/ray/collide/tree/$(t) run return 1
$execute if score #cx ntils.z.cast.temp <= #cy ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cx ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~$(x) ~ ~ run return run function ntils:z/cast/ray/traverse/x
$execute if score #cy ntils.z.cast.temp <= #cz ntils.z.cast.temp if score #cy ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~ ~$(y) ~ run return run function ntils:z/cast/ray/traverse/y
$execute if score #cz ntils.z.cast.temp <= #d ntils.z.cast.temp positioned ~ ~ ~$(z) run return run function ntils:z/cast/ray/traverse/z
return fail