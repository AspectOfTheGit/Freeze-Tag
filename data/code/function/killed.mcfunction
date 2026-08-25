
playsound entity.warden.sonic_boom master @a[distance=.1..] ~ ~ ~ 1 1.3

stopsound @s * entity.experience_orb.pickup
gamemode spectator
function code:tag/untag_player

execute if entity @a[team=!tagger,tag=!tagged,gamemode=adventure] run title @s times 0 20 5

execute if score playing temp matches 1 run tellraw @a[team=runner] [{text:"☠ ",color:"red"},{selector:"@s",color:"dark_red"},{"text":" froze to death! ",color:"dark_red"}]
execute if score playing temp matches 1 run tellraw @a[team=!runner] [{text:"☠ ",color:"red"},{selector:"@s",color:"white"},{"text":" froze to death! ",color:"white"}]

execute if score playing temp matches 1 run title @s title ""
execute if score playing temp matches 1 run title @s subtitle {"text":"You died!","color":"#FF0000"}
title @s actionbar ""