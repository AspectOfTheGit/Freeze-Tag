
gamemode spectator
function code:tag/untag_player
team leave @s
effect clear

tag @s add joined

scoreboard players reset @s tagged_time_s
scoreboard players reset @s tagged_time_t

scoreboard players set @s no_tag 0

attribute @s jump_strength base reset
attribute @s movement_speed base reset