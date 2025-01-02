$function ntils:z/ray/test/with/tree/x/$(x)
$function ntils:z/ray/test/with/tree/y/$(y)
$function ntils:z/ray/test/with/tree/z/$(z)

data remove storage ntils:z ray.box[-1]
$execute if data storage ntils:z ray.box[] run return run function ntils:z/ray/test/box {x:"$(x)",y:"$(y)",z:"$(z)"}
execute if score #hit ntils.z.ray.temp matches 1 run return run function ntils:z/ray/test/disp
return fail