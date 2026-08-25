# as player

advancement revoke @s only code:tagged

execute if entity @s[tag=tagged] run return fail
execute if entity @s[tag=notplaying] run return fail
execute unless score playing temp matches 1 run return fail

# attributes
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0

data modify entity @s Motion set value [0d,0d,0d]

tag @s add tagged
scoreboard players operation @s tagged_time_t = freeze_time const

tellraw @a[team=runner] [{"atlas":"minecraft:particles","sprite":"generic_6",color:"white"},{"text":" "},{selector:"@s",color:"red"},{"text":" has been ",color:"red"},{"text":"frozen",color:"blue"},{"text":"! ",color:"red"},{"atlas":"minecraft:particles","sprite":"generic_6",color:"white"}]
tellraw @a[team=!runner] [{"atlas":"minecraft:particles","sprite":"generic_6",color:"white"},{"text":" "},{selector:"@s",color:"white"},{"text":" has been ",color:"white"},{"text":"frozen",color:"aqua"},{"text":"! ",color:"white"},{"atlas":"minecraft:particles","sprite":"generic_6",color:"white"}]

execute at @s run function code:tag/freeze_player
