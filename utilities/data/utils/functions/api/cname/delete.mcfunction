# CNAME/DELETE
#
# Deletes an entities custom name.

data modify storage utils:api edata.remove.in set value [CustomName,CustomNameVisible]
function utils:api/edata/remove