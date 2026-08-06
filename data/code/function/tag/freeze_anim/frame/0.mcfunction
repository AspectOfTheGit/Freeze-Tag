
particle block{block_state:{Name:ice}} ~ ~ ~ 0.1 0.1 0.1 0.7 3
playsound block.glass.break master @a ~ ~ ~ 0.05 0.5
data merge entity @s[tag=freeze_display_0] {transformation:[0.0772740661f,0f,-0.0207055236f,0.0375f,0f,0.08f,0f,0f,0.0207055236f,0f,0.0772740661f,0.03125f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_1] {transformation:[0.0869333244f,0f,0.0232937141f,0.0125f,0f,0.09f,0f,0.08f,-0.0232937141f,0f,0.0869333244f,0.05625f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_2] {transformation:[0.0386370331f,0f,-0.0103527618f,0.05f,0f,0.04f,0f,0.1696875f,0.0103527618f,0f,0.0386370331f,0.05625f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_3] {transformation:[0.0386370331f,0f,0.0103527618f,0.03125f,0f,0.04f,0f,0f,-0.0103527618f,0f,0.0386370331f,0.1125f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_4] {transformation:[0.03375f,0f,0f,0.0375f,0f,0.03375f,0f,0.1706875f,0f,0f,0.03375f,0.075f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_5] {transformation:[0.0736121593f,0f,0.0425f,0.025f,0f,0.085f,0f,0f,-0.0425f,0f,0.0736121593f,0.08125f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_6] {transformation:[0.1062518409f,0f,0.028470095f,0.0125f,0f,0.11f,0f,0f,-0.028470095f,0f,0.1062518409f,0.0375f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_7] {transformation:[0.03375f,0f,0f,0f,0f,0.03375f,0f,0f,0f,0f,0.03375f,0.05625f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_8] {transformation:[0.0325999966f,0f,-0.0087351428f,0.0375f,0f,0.03375f,0f,0f,0.0087351428f,0f,0.0325999966f,0f,0f,0f,0f,1f],interpolation_duration:0}
data merge entity @s[tag=freeze_display_9] {transformation:[0.05f,0f,0f,0.1125f,0f,0.05f,0f,0f,0f,0f,0.05f,0.03125f,0f,0f,0f,1f],interpolation_duration:0}
scoreboard players set @s anim_frame 1
scoreboard players set @s anim_wait 1