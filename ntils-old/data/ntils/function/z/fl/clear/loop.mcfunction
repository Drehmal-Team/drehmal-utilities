$execute unless data storage ntils:z fl.list[{x:$(x),z:$(z),dim:"$(dim)"}] in $(dim) run forceload remove $(x) $(z)
data remove storage ntils:z fl.clear.list[-1]
execute if data storage ntils:z fl.clear.list[-1] run function ntils:z/fl/clear/loop with storage ntils:z fl.clear.list[-1]