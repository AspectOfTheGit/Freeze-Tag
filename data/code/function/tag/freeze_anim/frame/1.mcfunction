
particle block{block_state:{Name:ice}} ~ ~0.5 ~ 0.15 0.3 0.15 0.7 4
particle snowflake ~ ~1 ~ 0.3 0.7 0.3 0.01 1
playsound block.glass.break master @a ~ ~0.4 ~ 0.05 0.5
data merge entity @s[tag=freeze_display_0] {transformation:[0.2732410977f,0f,-0.0732147315f,-0.06115f,0f,0.28288f,0f,0f,0.0732147315f,0f,0.2732410977f,-0.153875f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_1] {transformation:[0.307396235f,0f,0.0823665729f,-0.14955f,0f,0.31824f,0f,0.28288f,-0.0823665729f,0f,0.307396235f,-0.065475f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_2] {transformation:[0.1366205489f,0f,-0.0366073657f,-0.01695f,0f,0.14144f,0f,0.600015f,0.0366073657f,0f,0.1366205489f,-0.065475f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_3] {transformation:[0.1366205489f,0f,0.0366073657f,-0.08325f,0f,0.14144f,0f,0f,-0.0366073657f,0f,0.1366205489f,0.133425f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_4] {transformation:[0.11934f,0f,0f,-0.06115f,0f,0.11934f,0f,0.603551f,0f,0f,0.11934f,0.000825f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_5] {transformation:[0.2602925954f,0f,0.15028f,-0.10535f,0f,0.30056f,0f,0f,-0.15028f,0f,0.2602925954f,0.022925f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_6] {transformation:[0.3757065094f,0f,0.1006702558f,-0.14955f,0f,0.38896f,0f,0f,-0.1006702558f,0f,0.3757065094f,-0.131775f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_7] {transformation:[0.11934f,0f,0f,-0.19375f,0f,0.11934f,0f,0f,0f,0f,0.11934f,-0.065475f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_8] {transformation:[0.1152735881f,0f,-0.0308874648f,-0.06115f,0f,0.11934f,0f,0f,0.0308874648f,0f,0.1152735881f,-0.264375f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_9] {transformation:[0.1768f,0f,0f,0.20405f,0f,0.1768f,0f,0f,0f,0f,0.1768f,-0.153875f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
scoreboard players set @s anim_frame 2
scoreboard players set @s anim_wait 1