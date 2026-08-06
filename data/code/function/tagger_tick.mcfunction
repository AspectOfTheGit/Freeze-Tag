# Runs on tick as each tagger

effect give @s glowing 5 0 true
title @s times 0 5 0

execute if entity @a[tag=tagged,team=runner,distance=..6] run title @s actionbar {"color":"red","text":"You're too close to a frozen player!"}