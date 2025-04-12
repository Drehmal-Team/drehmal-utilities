# MATH/BZ/N/POLY/F/START
#
#   Given an arbitrarily long list of points and a t value, begins a bezier iteration stored globally.
#   Calling bz/n/poly/f/fetch will grab the point along the curve corresponding to the t value input.
#   NOTE: Calling this function again will reset the global iteration. Only one iteration can be active at once.
#
# INPUT: 
#   > Storage:
#       | ntils:api math.bz.n.in, double list (3) list (n). This will be a list of lists. Each list must contain numbers, 
#       |                                                   and they will be treated as coordinates, and will have their 
#       |                                                   values scaled as such. Copying entity Pos data directly to the 
#       |                                                   list will create the desired effect.
#       |                                                   The [0] entry of the list will be treated as the start, and 
#       |                                                   the [-1] entry will be treated as the end.
#       |                                                   All other points will be treated as controls.
# 
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.n.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.n.out, double list (3). The scoreboard output in list form, for direct Pos modification.
#   > Misc:
#       | A bezier iteration will begin globally. Calling poly/f/fetch with a t value
#       | as input will calculate the point along the curve with that t value.
#
# PERFORMANCE: Bad
#   Very, very slow at precomputing large lists of points, and is O(n^2) with respect to input size. Makes up for it with precision
#   and with the speed of fetch.

function ntils:z/math/bz/n/poly/start/eval

data modify storage ntils:z math.bz.n.poly.f.coefficients set from storage ntils:z math.bz.n.poly.out