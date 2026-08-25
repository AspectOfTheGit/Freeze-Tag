
title @a times 0 60 20
title @a[gamemode=!creative] title {text:"Runners Win!",color:"aqua"}
scoreboard players set playing temp 0

scoreboard players set new_round_timer temp 120

execute as @a[tag=tagged] run function code:tag/untag_player
tag @a remove tagged

effect give @a[team=runner] glowing 6 0 true