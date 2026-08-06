
playsound entity.warden.sonic_boom master @a[distance=.1..] ~ ~ ~ 1 1.3

function code:tag/untag_player
stopsound @s * entity.experience_orb.pickup
gamemode spectator

execute if entity @a[team=!tagger,tag=!tagged,gamemode=adventure] run title @s times 0 20 5

execute if entity @a[team=!tagger,tag=!tagged,gamemode=adventure] run title @s title ""
title @s subtitle {"text":"You died!","color":"#FF0000"}
title @s actionbar ""