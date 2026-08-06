# Run as @s, at @s

# freeze display
kill @n[tag=freeze_display,distance=..2]
execute as @e[type=block_display] at @s unless entity @e[tag=freeze_display,distance=..2] run kill @s