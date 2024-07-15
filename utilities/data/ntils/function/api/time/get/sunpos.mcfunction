data modify storage ntils:z time.get.sunpos.macro set value {t:0}
execute store result storage ntils:z time.get.sunpos.macro.t int 1 store result score #t ntils.z.temp run time query daytime
data modify storage ntils:api time.get.sunpos.out set value {yaw:-90f,pitch:0f}
function ntils:z/time/get/sunpos/macro with storage ntils:z time.get.sunpos.macro
execute if score #t ntils.z.temp matches 6000..18000 run data modify storage ntils:api time.get.sunpos.out.yaw set value 90f
return run data get storage ntils:api time.get.sunpos.out.pitch 100