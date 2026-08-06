# Start a new round

execute if score playing temp matches 1 run return fail

execute store result score .players temp run execute if entity @a
execute if score .players temp matches ..1 run return run function code:round/not_enough_players

tag @a remove spawned
gamemode adventure @a

title @a title ""

scoreboard players set playing temp 1

execute as @a run function code:tag/untag_player

#data remove storage code:freezetag temp.players
#execute as @a run data modify storage code:freezetag temp.players append from entity @s UUID

function code:round/spawn_players

scoreboard players set tagger_start_timer temp 400
scoreboard players set round_timer temp 0

execute as @r[gamemode=adventure,team=runner] run function code:round/choose_tagger
execute if score .players temp matches 7.. as @r[gamemode=adventure,team=runner] run function code:round/choose_tagger
