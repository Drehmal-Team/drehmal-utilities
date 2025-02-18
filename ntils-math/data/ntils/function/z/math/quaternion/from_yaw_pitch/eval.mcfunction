execute store result score #math.quaternion.out.y ntils.API store result score #math.quaternion.out.w ntils.API run data get storage ntils:z math.quaternion.pitch[2] 46340
execute store result score #math.quaternion.out.x ntils.API store result score #math.quaternion.out.z ntils.API run data get storage ntils:z math.quaternion.pitch[1] -46340
execute store result score #cy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[2] 46340
execute store result score #sy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[0] 46340

execute store result storage ntils:api math.quaternion.out[3] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.out.w ntils.API *= #cy ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[2] float -0.00000000046566128752 run scoreboard players operation #math.quaternion.out.z ntils.API *= #sy ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[1] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.out.y ntils.API *= #sy ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[0] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.out.x ntils.API *= #cy ntils.z.math.quaternion.temp

execute unless score #DO_SCOREBOARD_OUTPUT# ntils.API.flag.math matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.out.x ntils.API /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.y ntils.API /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.z ntils.API /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.w ntils.API /= #46340^2/1000 ntils.z.const
