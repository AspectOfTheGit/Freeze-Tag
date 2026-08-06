# Run as @s, at @s

effect clear

playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

# attributes
attribute @s movement_speed base reset
attribute @s jump_strength base reset

data modify entity @s Motion set value [0d,0d,0d]

title @s subtitle ""
title @s actionbar ""

scoreboard players set @s tagged_time_t 0
scoreboard players set @s tagged_time_s 0

tag @s remove tagged
function code:tag/remove_display