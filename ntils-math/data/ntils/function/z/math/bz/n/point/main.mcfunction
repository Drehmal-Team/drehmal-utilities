execute store result score #math.choose.in.y ntils.API run scoreboard players add #n ntils.z.math.bz.n.temp 1
scoreboard players operation #t^n ntils.z.math.bz.n.temp *= #math.bz.n.in.t ntils.API
scoreboard players operation #t^n ntils.z.math.bz.n.temp /= #1000 ntils.z.const

execute store result score #loop ntils.z.math.bz.n.temp run scoreboard players remove #k ntils.z.math.bz.n.temp 1
scoreboard players set #1-t^(k-n) ntils.z.math.bz.n.temp 1000
execute if score #loop ntils.z.math.bz.n.temp matches 1.. run function ntils:z/math/bz/n/point/l/1-t

function ntils:api/math/choose

execute store result score #this.x ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.list[0][0] 1000
execute store result score #this.y ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.list[0][1] 1000
execute store result score #this.z ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.list[0][2] 1000

scoreboard players operation #this.x ntils.z.math.bz.n.temp -= #a.x ntils.z.math.bz.n.temp
scoreboard players operation #this.y ntils.z.math.bz.n.temp -= #a.y ntils.z.math.bz.n.temp
scoreboard players operation #this.z ntils.z.math.bz.n.temp -= #a.z ntils.z.math.bz.n.temp

scoreboard players operation #this.x ntils.z.math.bz.n.temp *= #math.choose.out ntils.API
scoreboard players operation #this.y ntils.z.math.bz.n.temp *= #math.choose.out ntils.API
scoreboard players operation #this.z ntils.z.math.bz.n.temp *= #math.choose.out ntils.API

scoreboard players operation #this.x ntils.z.math.bz.n.temp *= #1-t^(k-n) ntils.z.math.bz.n.temp
scoreboard players operation #this.y ntils.z.math.bz.n.temp *= #1-t^(k-n) ntils.z.math.bz.n.temp
scoreboard players operation #this.z ntils.z.math.bz.n.temp *= #1-t^(k-n) ntils.z.math.bz.n.temp

scoreboard players operation #this.x ntils.z.math.bz.n.temp /= #1000 ntils.z.const
scoreboard players operation #this.y ntils.z.math.bz.n.temp /= #1000 ntils.z.const
scoreboard players operation #this.z ntils.z.math.bz.n.temp /= #1000 ntils.z.const

scoreboard players operation #this.x ntils.z.math.bz.n.temp *= #t^n ntils.z.math.bz.n.temp
scoreboard players operation #this.y ntils.z.math.bz.n.temp *= #t^n ntils.z.math.bz.n.temp
scoreboard players operation #this.z ntils.z.math.bz.n.temp *= #t^n ntils.z.math.bz.n.temp

scoreboard players operation #this.x ntils.z.math.bz.n.temp /= #1000 ntils.z.const
scoreboard players operation #this.y ntils.z.math.bz.n.temp /= #1000 ntils.z.const
scoreboard players operation #this.z ntils.z.math.bz.n.temp /= #1000 ntils.z.const

scoreboard players operation #math.bz.n.out.x ntils.API += #this.x ntils.z.math.bz.n.temp
scoreboard players operation #math.bz.n.out.y ntils.API += #this.y ntils.z.math.bz.n.temp
scoreboard players operation #math.bz.n.out.z ntils.API += #this.z ntils.z.math.bz.n.temp

data remove storage ntils:z math.bz.n.list[0]
execute if data storage ntils:z math.bz.n.list[] run function ntils:z/math/bz/n/point/main