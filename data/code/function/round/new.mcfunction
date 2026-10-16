# Start a new round

execute if score playing temp matches 1 run return fail

execute store result score .players temp run execute if entity @a[tag=!notplaying]
execute if score .players temp matches ..1 run return run function code:round/not_enough_players
scoreboard players set notenoughplayers temp 0

execute store result storage code:freezetag temp.map int 1 run random value 0..3

function code:round/check_map with storage code:freezetag temp
