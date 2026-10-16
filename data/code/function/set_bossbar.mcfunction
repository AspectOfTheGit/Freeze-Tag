
execute if score notenoughplayers temp matches 1 run bossbar set timer value 0
execute if score notenoughplayers temp matches 1 run bossbar set timer name {"color":"red","text":"Waiting for players"}

execute if score notenoughplayers temp matches 1 run return 0

$bossbar set timer value $(timer)
$bossbar set timer max $(max)
#$bossbar set timer name [{"color":"green","text":"Time "},{"color":"yellow","text":"($(seconds)s)"}]
$execute if score time_left_s temp matches ..1 run return run bossbar set timer name {"color":"red","text":"$(ticks)t"}
$bossbar set timer name {"color":"yellow","text":"$(seconds)s"}