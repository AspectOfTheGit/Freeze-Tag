
execute store result storage code:freezetag temp.index int 1 run scoreboard players set index temp 1

execute as @r[tag=!spawned] run function code:round/get_spawnpoint with storage code:freezetag temp

function code:round/spawn_next_player