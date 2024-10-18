#$tellraw @a {"text": "execute in $(dim)$(extra2)$(uuid)$(extra)$(x)$(s)$(y)$(s)$(z)$(s)run $(cmd)$(extra3)$(macro)","color": "green"}
$execute in $(dim)$(extra2)$(uuid)$(extra)$(x)$(s)$(y)$(s)$(z)$(s)run $(cmd)$(extra3)$(macro)
$data remove storage ntils:z sch.tick.timestamps.$(gt)[-1]
$data modify storage ntils:z sch.run.macro set from storage ntils:z sch.tick.timestamps.$(gt)[-1]
$data modify storage ntils:z sch.run.macro.gt set value $(gt)
$execute if data storage ntils:z sch.tick.timestamps.$(gt)[] run function ntils:z/sch/run with storage ntils:z sch.run.macro