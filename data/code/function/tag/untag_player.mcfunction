# Run as @s, at @s

execute if entity @s[tag=notplaying] run return fail

effect clear

playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

particle block{block_state:{Name:ice}} ~ ~1 ~ 0.4 0.8 0.4 0.7 20

# attributes
attribute @s movement_speed base reset
attribute @s jump_strength base reset

data modify entity @s Motion set value [0d,0d,0d]

title @s subtitle ""
title @s actionbar ""

scoreboard players reset @s tagged_time_t
scoreboard players reset @s tagged_time_s

tag @s remove tagged

function code:tag/remove_display

execute if entity @s[gamemode=spectator] run return 0

execute if score playing temp matches 1 run tellraw @a[team=tagger] [{"text":"🔥 ",color:"gold"},{selector:"@s",color:"red"},{"text":" has been ",color:"red"},{"text":"unfrozen",color:"blue"},{"text":"! ",color:"red"},{"text":"🔥",color:"gold"}]
execute if score playing temp matches 1 run tellraw @a[team=!tagger] [{"text":"🔥 ",color:"gold"},{selector:"@s",color:"white"},{"text":" has been ",color:"white"},{"text":"unfrozen",color:"aqua"},{"text":"! ",color:"white"},{"text":"🔥",color:"gold"}]