return fail

data modify storage ntils:z combat.damage.args set from storage ntils:api combat.damage.in.Args
data modify storage ntils:z combat.damage.macro set value {}

#from storage ntils:api combat.damage.in
data remove storage ntils:z combat.damage.macro.Args

execute if data storage ntils:z combat.damage.args.SetFire run function ntils:api/combat/fire/light
execute if data storage ntils:z combat.damage.args.SetFire run function ntils:api/combat/fire/light
tag @s add ntils.z.combat.damage.temp_context
execute in ntils:z/empty as 00000000-0000-0000-0000-000000000023 run function ntils:z/combat/damage/knockback
tag @s remove ntils.z.combat.damage.temp_context