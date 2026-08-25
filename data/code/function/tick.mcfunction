
execute as @a[tag=!joined] run function code:player_join
execute as @a[scores={leave=1..}] run function code:player_join
scoreboard players set @a leave 0

execute if score playing temp matches 0 as @a run data modify entity @s abilities.invulnerable set value 1b
execute if score playing temp matches 1 as @a[gamemode=!creative,tag=!tagged,team=!tagger] run data modify entity @s abilities.invulnerable set value 0b
execute as @a[team=tagger] run data modify entity @s abilities.invulnerable set value 1b

execute as @a[tag=tagged,tag=!notplaying] at @s run function code:tagged_tick
execute as @e[type=interaction,tag=freeze_display] at @s run function code:tagged_interaction_tick
execute as @a[team=tagger,tag=!notplaying] at @s run function code:tagger_tick

execute as @a[tag=!tagged] run data modify entity @s TicksFrozen set value 0s

execute as @e[type=block_display] unless score @s anim_frame matches -1 if score @s anim_wait matches ..0 at @s run function code:tag/freeze_anim/next
execute as @e[type=block_display] unless score @s anim_frame matches -1 unless score @s anim_wait matches ..0 run scoreboard players remove @s anim_wait 1

effect give @a night_vision infinite 0 true
effect give @a saturation infinite 0 true

execute if score playing temp matches 1 if score tagger_start_timer temp matches 1.. run scoreboard players remove tagger_start_timer temp 1
scoreboard players operation tagger_start_timer_s temp = tagger_start_timer temp
scoreboard players operation tagger_start_timer_s temp /= 20 const
execute if score tagger_start_timer temp matches 2.. run title @a actionbar {"color":"red","score":{name:"tagger_start_timer_s",objective:"temp"}}
execute if score tagger_start_timer temp matches 1 run title @a actionbar {"color":"dark_red","text":"Taggers released!"}
execute if score tagger_start_timer temp matches 1 as @a[team=tagger,tag=!notplaying] run attribute @s jump_strength base reset

execute if score playing temp matches 1 unless entity @a[team=tagger,tag=!notplaying] run function code:round/runners_win

execute if score playing temp matches 1 unless entity @a[team=!tagger,tag=!tagged,gamemode=adventure,tag=!notplaying] run function code:round/taggers_win

execute if score new_round_timer temp matches 1.. run scoreboard players remove new_round_timer temp 1
execute if score new_round_timer temp matches 0 run function code:round/new

execute if score playing temp matches 1 if score tagger_start_timer temp matches 0 run scoreboard players add round_timer temp 1

bossbar set timer players @a

execute store result storage code:freezetag temp.timer int 1 run scoreboard players get round_timer temp
scoreboard players operation time_left_s temp = round_time const
scoreboard players operation time_left_s temp -= round_timer temp
execute store result storage code:freezetag temp.seconds int 1 run scoreboard players operation time_left_s temp /= 20 const
execute store result storage code:freezetag temp.max int 1 run scoreboard players get round_time const
function code:set_bossbar with storage code:freezetag temp

execute if score playing temp matches 1 if score round_timer temp >= round_time const run function code:round/runners_win

execute as @a[team=tagger,tag=!notplaying] run attribute @s movement_speed base set 0.125
execute as @a[team=runner,tag=!tagged,tag=!notplaying] run attribute @s movement_speed base reset

execute if score round_timer temp matches 2000.. run effect give @a[team=runner,tag=!notplaying] glowing 1 0 true
execute if score round_timer temp matches 2000.. run title @a[tag=!tagged,tag=!notplaying] actionbar {color:"red",text:"Runners revealed!"}

tag @e remove valid

execute as @e[tag=freeze_display] on vehicle on passengers run tag @s add valid
execute as @e[tag=user_freeze_display] on vehicle on passengers run tag @s add valid

execute as @e[tag=!valid,tag=freeze_display] run function code:tag/remove_display
execute as @e[tag=!valid,tag=freeze_display] run kill
execute as @e[tag=!valid,tag=user_freeze_display] run function code:tag/remove_display
execute as @e[tag=!valid,tag=user_freeze_display] run kill


scoreboard players enable @a afk
# RETURN IS USED HERE. dont put anything important after.
execute as @a[scores={afk=1..},tag=!notplaying] run return run function code:spectate
execute as @a[scores={afk=1..}] run tag @s remove notplaying

scoreboard players set @a afk 0