
title @a times 0 60 20
title @a title {text:"Taggers Win!",color:"red"}
scoreboard players set playing temp 0

scoreboard players set new_round_timer temp 120

execute as @a[gamemode=adventure,tag=tagged] run function code:killed

execute as @a[tag=tagged] run function code:tag/untag_player
tag @a remove tagged