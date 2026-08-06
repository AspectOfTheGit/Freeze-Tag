# Run as @s, at @s

# freeze display
particle snowflake ~ ~1 ~ 0.3 0.7 0.3 0.04 7
playsound minecraft:block.amethyst_block.break master @a ~ ~1 ~ 0.4 0.1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.4 2
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1
summon interaction ~ ~ ~ {height:-1.8,width:0.8,Tags:["freeze_display","new"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.0375f,0f,0f,0f,0f,0f,0f,0f,0.03125f,0f,0f,0f,1f],Tags:["new","freeze_display_0"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.0125f,0f,0f,0f,0.08f,0f,0f,0f,0.05625f,0f,0f,0f,1f],Tags:["new","freeze_display_1"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.05f,0f,0f,0f,0.1696875f,0f,0f,0f,0.05625f,0f,0f,0f,1f],Tags:["new","freeze_display_2"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.03125f,0f,0f,0f,0f,0f,0f,0f,0.1125f,0f,0f,0f,1f],Tags:["new","freeze_display_3"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.0375f,0f,0f,0f,0.1706875f,0f,0f,0f,0.075f,0f,0f,0f,1f],Tags:["new","freeze_display_4"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.025f,0f,0f,0f,0f,0f,0f,0f,0.08125f,0f,0f,0f,1f],Tags:["new","freeze_display_5"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.0125f,0f,0f,0f,0f,0f,0f,0f,0.0375f,0f,0f,0f,1f],Tags:["new","freeze_display_6"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0.05625f,0f,0f,0f,1f],Tags:["new","freeze_display_7"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.0375f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f],Tags:["new","freeze_display_8"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0f,0f,0f,0.1125f,0f,0f,0f,0f,0f,0f,0f,0.03125f,0f,0f,0f,1f],Tags:["new","freeze_display_9"]}]}
ride @n[tag=freeze_display,tag=new] mount @s
execute as @n[tag=freeze_display,tag=new] run function code:tag/freeze_anim/init
visibility @s hide @n[tag=new,type=!interaction]
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:ice",Properties:{}},transformation:[-1f,0f,0f,0.5f,0f,-1f,0f,0.25f,0f,0f,-1f,0.5f,0f,0f,0f,1f],Tags:["user_freeze_display","new"]}
ride @n[tag=user_freeze_display,tag=new] mount @s
visibility @a hide @n[tag=user_freeze_display,tag=new]
visibility @s show @n[tag=user_freeze_display,tag=new]

tag @e remove new