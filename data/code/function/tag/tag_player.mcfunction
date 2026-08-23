# as player

execute if entity @s[tag=tagged] run return fail

# attributes
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0

data modify entity @s Motion set value [0d,0d,0d]

tag @s add tagged
scoreboard players operation @s tagged_time_t = freeze_time const

execute at @s run function code:tag/freeze_player
