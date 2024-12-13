# Anim:     string  (the name of this animation)
# Len:      int     (the length of this animation in ticks. used for garbage collection)
# Channel:  int     (the channel to play this animation on. int from 0 to 3)
# Persist:  bool    (whether this animation should get overwritten if another animation is played in the same channel)
# Clear:    bool    (whether the anim should stop when the timer ends or continue indefinitely)
#
#     > example:
#   function ntils:api/ajsm/play {Anim:"walk_normal",Len:-1,Channel:0,Persist:True,Loop:True}

execute unless score $ntils:ajsm.ENABLED ntils.API.singularity.flag matches 1.. run return fail

$data modify storage ntils:z ajsm.play.temp set value {d:{p:$(Persist),c:$(Clear),o:"$(Anim)",t0:0,t1:$(Len)}}

$execute if entity @s[type=marker] run return run function ntils:z/ajsm/play/main {c:"$(Channel)"}
$execute on passengers run return run function ntils:z/ajsm/play/main {c:"$(Channel)"}
return fail