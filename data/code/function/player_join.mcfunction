
function code:tag/untag_player
gamemode spectator
team leave @s
effect clear

tag @s add joined

scoreboard players reset @s tagged_time_s
scoreboard players reset @s tagged_time_t