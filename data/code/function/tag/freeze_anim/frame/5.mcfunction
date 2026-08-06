
particle block{block_state:{Name:ice}} ~ ~0.9 ~ 0.28 0.65 0.28 0.7 3
particle snowflake ~ ~1 ~ 0.3 0.7 0.3 0.01 1
playsound block.glass.break master @a ~ ~1.7 ~ 0.05 0.5
data merge entity @s[tag=freeze_display_0] {transformation:[0.7569767515f,0f,-0.2028313093f,-0.304525f,0f,0.78368f,0f,0f,0.2028313093f,0f,0.7569767515f,-0.610125f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_1] {transformation:[0.8515988455f,0f,0.2281852229f,-0.549425f,0f,0.88164f,0f,0.78368f,-0.2281852229f,0f,0.8515988455f,-0.365225f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_2] {transformation:[0.3784883758f,0f,-0.1014156546f,-0.182075f,0f,0.39184f,0f,1.66225875f,0.1014156546f,0f,0.3784883758f,-0.365225f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_3] {transformation:[0.3784883758f,0f,0.1014156546f,-0.36575f,0f,0.39184f,0f,0f,-0.1014156546f,0f,0.3784883758f,0.1858f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_4] {transformation:[0.330615f,0f,0f,-0.304525f,0f,0.330615f,0f,1.67205475f,0f,0f,0.330615f,-0.18155f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_5] {transformation:[0.7211047127f,0f,0.41633f,-0.426975f,0f,0.83266f,0f,0f,-0.41633f,0f,0.7211047127f,-0.120325f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_6] {transformation:[1.0408430334f,0f,0.2788930502f,-0.549425f,0f,1.07756f,0f,0f,-0.2788930502f,0f,1.0408430334f,-0.5489f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_7] {transformation:[0.330615f,0f,0f,-0.671875f,0f,0.330615f,0f,0f,0f,0f,0.330615f,-0.365225f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_8] {transformation:[0.3193495671f,0f,-0.0855694586f,-0.304525f,0f,0.330615f,0f,0f,0.0855694586f,0f,0.3193495671f,-0.91625f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
data merge entity @s[tag=freeze_display_9] {transformation:[0.4898f,0f,0f,0.430175f,0f,0.4898f,0f,0f,0f,0f,0.4898f,-0.610125f,0f,0f,0f,1f],interpolation_duration:2,start_interpolation:0}
scoreboard players set @s anim_frame 6
scoreboard players set @s anim_wait 1