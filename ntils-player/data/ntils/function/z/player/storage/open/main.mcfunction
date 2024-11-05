$execute if data storage ntils:api player.storage[{z:{id:$(id)}}] run return run data modify storage ntils:api player.storage[{z:{id:$(id)}}].Open set value True
data modify storage ntils:api player.storage append value {z:{id:-1,uuid:""},data:{},Open:True}
function ntils:api/uuid/get_hex
data modify storage ntils:api player.storage[-1].z.uuid set from storage ntils:api uuid.get_hex.out
data modify storage ntils:api player.storage[-1].z.id set from storage ntils:z player.storage.open.m.id