execute unless score $ntils:color.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:z color.in.hsl set from storage ntils:api color.in.hsl
function ntils:z/color/hsl/rgb
data modify storage ntils:api color.out.rgb set from storage ntils:z color.out.rgb