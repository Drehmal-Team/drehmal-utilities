data modify storage ntils:z effects.unroll.tmp set from storage ntils:api effects.unroll.in
data remove storage ntils:z effects.unroll.tmp.hidden_effect

data modify storage ntils:api effects.unroll.out append from storage ntils:z effects.unroll.tmp
data modify storage ntils:api effects.unroll.out[-1].id set from storage ntils:z effects.unroll.base.id
execute unless data storage ntils:api effects.unroll.out[-1].amplifier run data modify storage ntils:api effects.unroll.out[-1].amplifier set value 0

execute unless data storage ntils:api effects.unroll.in.hidden_effect run return 1
data modify storage ntils:api effects.unroll.in set from storage ntils:api effects.unroll.in.hidden_effect
function ntils:z/combat/effects/unroll/loop