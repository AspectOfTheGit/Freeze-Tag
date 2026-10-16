
$execute store result score temp temp run data get storage code:freezetag maps[$(map)].minPlayers
# reroll if not in min player range
execute if score .players temp < temp temp run return run function code:round/new

$execute store result score temp temp run data get storage code:freezetag maps[$(map)].maxPlayers
# reroll if not in max player range
execute if score .players temp > temp temp run return run function code:round/new

scoreboard players set nightvision temp 1
$execute if data storage code:freezetag maps[$(map)].params{"no_nightvision":1b} run scoreboard players set nightvision temp 0

# map is gooh to goo
function code:round/map_good