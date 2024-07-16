# ITEM/RETURN
#
# Run as an item entity to return it to the mainhand slot of the player who threw it.

# this doesnt need to exist now

return fail

item replace block 0 0 0 container.0 from entity @s contents
execute on origin run item replace entity @s weapon.mainhand from block 0 0 0 container.0