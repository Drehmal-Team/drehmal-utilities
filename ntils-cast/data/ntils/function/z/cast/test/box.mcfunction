$function ntils:z/cast/test/with/tree/x/$(x)
$function ntils:z/cast/test/with/tree/y/$(y)
$function ntils:z/cast/test/with/tree/z/$(z)

data remove storage ntils:z cast.box[-1]
$execute if data storage ntils:z cast.box[] run return run function ntils:z/cast/test/box {x:"$(x)",y:"$(y)",z:"$(z)"}
execute if score #hit ntils.z.cast.temp matches 1 run return run function ntils:z/cast/test/disp
return fail