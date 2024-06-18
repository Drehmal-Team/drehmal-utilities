# CNAME/DELETE
#
# Deletes an entities custom name.

data modify storage ntils:api edata.remove.in set value [CustomName,CustomNameVisible]
function ntils:api/edata/remove