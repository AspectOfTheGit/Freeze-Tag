
gamerule spawn_mobs false
gamerule mob_griefing false
gamerule fire_spread_radius_around_player 0
gamerule immediate_respawn true
gamerule locator_bar false

tellraw @a { "color": "#00FF00", "text": "The Code is Load"}

scoreboard objectives add anim_frame dummy
scoreboard objectives add anim_wait dummy