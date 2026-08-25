# Runs on tick as each tagged player

effect give @s glowing 5 0 true

data modify entity @s abilities.invulnerable set value 1b

data modify entity @s TicksFrozen set value 500s
particle snowflake ~ ~1 ~ 0.1 0.6 0.1 0.01 1

execute unless entity @a[team=tagger,distance=..6] run scoreboard players remove @s tagged_time_t 1

execute if score @s tagged_time_t matches 0 run return run function code:killed

#data modify entity @s Motion set value [0d,0d,0d]

scoreboard players operation @s tagged_time_s = @s tagged_time_t
scoreboard players operation @s tagged_time_s /= 20 const

scoreboard players operation @s temp = @s tagged_time_t
scoreboard players operation @s temp *= 255 const
scoreboard players operation @s temp /= freeze_time const

execute store result storage code:freezetag temp.denary int 1 run scoreboard players get @s temp
function code:lookup_hex with storage code:freezetag temp

#title @s times 0 20 0

title @s actionbar [{"atlas":"minecraft:particles","sprite":"generic_6"},{"text":" You have been "},{"text":"frozen",color:"aqua"},{"text":"! "},{"atlas":"minecraft:particles","sprite":"generic_6"}]
title @s title ""
function code:tagged_subtitle with storage code:freezetag temp