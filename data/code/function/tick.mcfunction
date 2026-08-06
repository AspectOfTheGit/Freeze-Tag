
execute as @a[gamemode=!creative,tag=!tagged] run data modify entity @s abilities.invulnerable set value 0b

execute as @a[tag=tagged] at @s run function code:tagged_tick
execute as @e[type=interaction,tag=freeze_display] at @s run function code:tagged_interaction_tick
execute as @a[team=tagger] at @s run function code:tagger_tick

execute as @a[tag=!tagged] run data modify entity @s TicksFrozen set value 0s

execute as @e[type=block_display] unless score @s anim_frame matches -1 if score @s anim_wait matches ..0 at @s run function code:tag/freeze_anim/next
execute as @e[type=block_display] unless score @s anim_frame matches -1 unless score @s anim_wait matches ..0 run scoreboard players remove @s anim_wait 1

effect give @a night_vision infinite 0 true
effect give @a saturation infinite 0 true

execute as @a[tag=!tagged] at @s on attacker if entity @s[team=tagger] as @p[distance=0] run function code:tag/tag_player