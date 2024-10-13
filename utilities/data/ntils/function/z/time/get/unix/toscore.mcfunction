$execute store result score #time.get.unix.out.atget run scoreboard players set #time.get.unix.out.atcall ntils.API $(val)
scoreboard players operation #time.get.unix.out.atcall ntils.API -= #TIME_SPENT_UNIX# ntils.z.global
scoreboard players operation #time.get.unix.out.delay ntils.API = #TIME_SPENT_UNIX# ntils.z.global