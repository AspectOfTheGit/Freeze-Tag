# as player

execute if entity @s[tag=tagged] run return fail

# attributes
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0

data modify entity @s Motion set value [0d,0d,0d]

tag @s add tagged
execute at @s run function code:tag/freeze_player