
execute as @a run data modify entity @s abilities.invulnerable set value 1b

execute as @a[tag=tagged] run data modify entity @s TicksFrozen set value 500s
execute as @a[tag=tagged] at @s run particle snowflake ~ ~1 ~ 0.1 0.6 0.1 0.01 1

execute as @a[tag=!tagged] run data modify entity @s TicksFrozen set value 0s

execute as @e[type=block_display] unless score @s anim_frame matches -1 if score @s anim_wait matches ..0 at @s run function code:tag/freeze_anim/next
execute as @e[type=block_display] unless score @s anim_frame matches -1 unless score @s anim_wait matches ..0 run scoreboard players remove @s anim_wait 1