
tag @a[tag=!notplaying] remove spawned
gamemode adventure @a[tag=!notplaying]

effect clear @a[tag=!notplaying]

title @a title ""

scoreboard players set playing temp 1

execute as @a[tag=!notplaying,tag=tagged] run function code:tag/untag_player

#data remove storage code:freezetag temp.players
#execute as @a run data modify storage code:freezetag temp.players append from entity @s UUID

function code:round/spawn_players

scoreboard players set tagger_start_timer temp 400
scoreboard players set round_timer temp 0

execute as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
execute if score .players temp matches 5.. as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
execute if score .players temp matches 8.. as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
execute if score .players temp matches 13.. as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
execute if score .players temp matches 18.. as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
execute if score .players temp matches 24.. as @r[gamemode=adventure,team=runner,tag=!notplaying] run function code:round/choose_tagger
