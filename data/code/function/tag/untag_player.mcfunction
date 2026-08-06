# Run as @s, at @s

# attributes
attribute @s movement_speed base reset
attribute @s jump_strength base reset

data modify entity @s Motion set value [0d,0d,0d]

tag @s remove tagged
function code:tag/remove_display