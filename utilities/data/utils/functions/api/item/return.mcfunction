# ITEM/RETURN
#
# Run as an item entity to return it to the mainhand slot of the player who threw it.

item replace block -30000000 0 15000000 container.0 from entity @s contents
execute on origin run item replace entity @s weapon.mainhand from block -30000000 0 15000000 container.0