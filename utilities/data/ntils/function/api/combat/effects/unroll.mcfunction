data modify storage ntils:api effects.unroll.out set value []
data modify storage ntils:z effects.unroll.in set from storage ntils:api effects.unroll.in
data modify storage ntils:z effects.unroll.base set from storage ntils:z effects.unroll.in

function ntils:z/combat/effects/unroll/loop