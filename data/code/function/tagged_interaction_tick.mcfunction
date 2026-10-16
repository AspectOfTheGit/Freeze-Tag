
execute on attacker if entity @s[team=runner,tag=!tagged,scores={no_tag=..0}] as @n[tag=freeze_display] on vehicle run function code:tag/untag_player
execute on attacker if entity @s[team=runner,tag=!tagged,scores={no_tag=..0}] run scoreboard players add @s players_untagged 1
data remove entity @s attack