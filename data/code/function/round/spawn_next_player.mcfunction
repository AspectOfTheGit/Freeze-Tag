
execute store result storage code:freezetag temp.index int 1 run scoreboard players add index temp 1

execute as @r[tag=!spawned,tag=!notplaying] run function code:round/get_spawnpoint with storage code:freezetag temp

execute if entity @a[tag=!spawned,tag=!notplaying] run function code:round/spawn_next_player