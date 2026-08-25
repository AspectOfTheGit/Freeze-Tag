
gamemode spectator
function code:tag/untag_player
team leave @s
effect clear

tag @s add joined

scoreboard players reset @s tagged_time_s
scoreboard players reset @s tagged_time_t

attribute @s jump_strength base reset
attribute @s movement_speed base reset