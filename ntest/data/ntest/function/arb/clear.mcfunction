execute at @s run playsound minecraft:particle.soul_escape player @s
execute at @e[type=block_display,tag=ntest.n_bez] run particle glow_squid_ink ~ ~ ~ 0.3 0.3 0.3 0 10 force
kill @e[tag=ntest.n_bez]