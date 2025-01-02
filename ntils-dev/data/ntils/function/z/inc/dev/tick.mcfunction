execute if score #inc.PROFILING# ntils.API matches 0 in ntils:z/empty run summon armor_stand 0 0 0 {ArmorItems:[{},{},{id:"iron_chestplate",components:{enchantments:{"ntils:z/inc/dev/tick":1}}},{}]}
scoreboard players add #inc.PROFILING# ntils.API 1
function ntils:z/inc/dev/timestamp {color:"aqua",text:"tick.json"}
execute if score #inc.PROFILING# ntils.API matches 2.. run scoreboard players reset #inc.PROFILING# ntils.API