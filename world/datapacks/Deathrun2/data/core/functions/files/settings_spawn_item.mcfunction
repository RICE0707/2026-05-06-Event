##
 # settings_spawn_item.mcfunction
 # 
 #
 # Created by Lifeely.
##


##In This function spawn the items inside the selection box

kill @e[tag=!recorder,tag=settings_item]
kill @e[tag=!recorder,tag=settings_text]
kill @e[tag=!recorder,tag=settings_text_entrance]
kill @e[tag=!recorder,tag=unready_text]


## Button items 

### Gamemode
summon item_display 1158.50 -37.00 -49.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_gamemode"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### PVP
summon item_display 1158.50 -37.00 -47.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_pvp"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Easy Parkour
summon item_display 1158.50 -37.00 -51.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_easy_parkour"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Collisions
summon item_display 1156.50 -37.00 -47.50 {billboard:"fixed",item_display:"fixed",Rotation:[90F,0F],Tags:["settings_text","settings_item","setting_collisions"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Max.Killers
summon item_display 1160.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_max.killers"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Super Powers
summon item_display 1149.50 -37.00 -46.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_super_powers"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### True Deathrun
summon item_display 1158.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_true_deathrun"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Instant Gameover
summon item_display 1156.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_time_death"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Minigame
summon item_display 1149.50 -37.00 -48.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_minigame"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### How many checkpoints
summon item_display 1154.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_checkpoints"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Match lenght
summon item_display 1149.50 -37.00 -44.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_match_length"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Lives
summon item_display 1150.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_lives"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### CheckpointGiveLives
summon item_display 1152.50 -37.00 -43.50 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_checkpoint_give_lives"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Ingame music
summon item_display 1149.50 -37.00 -50.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_lobby_music"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Weather
summon item_display 1156.50 -37.00 -49.50 {billboard:"fixed",item_display:"fixed",Rotation:[90F,0F],Tags:["settings_text","settings_item","setting_weather"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Time
summon item_display 1156.50 -37.00 -51.50 {billboard:"fixed",item_display:"fixed",Rotation:[90F,0F],Tags:["settings_text","settings_item","setting_time"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Skip Cutscene
summon item_display 1150.50 -37.00 -55.50 {billboard:"fixed",item_display:"fixed",Rotation:[0F,0F],Tags:["settings_text","settings_item","setting_skip_cutscene"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Manual Settings
summon item_display 1149.50 -37.00 -52.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_manual_teams"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### Stamina
summon item_display 1149.50 -37.00 -54.50 {billboard:"fixed",item_display:"fixed",Rotation:[-90F,0F],Tags:["settings_text","settings_item","setting_stamina"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
### MinigameOnly
summon item_display 1152.50 -37.00 -55.50 {billboard:"fixed",item_display:"fixed",Rotation:[0F,0F],Tags:["settings_text","settings_item","setting_minigame_only"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}


## Text above selection

##Red = #fa2f2f
##Green = #b2ff40
##Blue = #2f76fa
##Gold = #ffc042
##White = white

### Gamemode
summon text_display 1158.50 -37.00 -49.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'{"translate":"core.functions.files.settings_spawn_item.1","color":"#b2ff40","bold":true}',background:16711680}
### PVP
summon text_display 1158.50 -37.00 -47.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'{"translate":"core.functions.files.settings_spawn_item.2","color":"#fa2f2f","bold":true}',background:16711680}
#### Easy Parkour
summon text_display 1158.50 -37.00 -51.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.3","color":"#2f76fa","bold":true}]',background:16711680}
summon text_display 1158.50 -37.00 -51.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.4","color":"white","bold":false}]',background:16711680}
#### Collisions
summon text_display 1156.50 -37.00 -47.50 {billboard:"fixed",Rotation:[90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.5","color":"#2f76fa","bold":true}]',background:16711680}
#### Max.Killers
summon text_display 1160.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.6","color":"#fa2f2f","bold":true}]',background:16711680}
summon text_display 1160.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.7","color":"white","bold":true}]',background:16711680}

#### Super Powers
summon text_display 1149.50 -37.00 -46.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.8","color":"#FFF700","bold":true},{"translate":"core.functions.files.settings_spawn_item.9","color":"#B3FF00"},{"translate":"core.functions.files.settings_spawn_item.10","color":"#00FF80"},{"translate":"core.functions.files.settings_spawn_item.11","color":"#00AAFF"},{"translate":"core.functions.files.settings_spawn_item.12","color":"#3300FF"}]',background:16711680}
summon text_display 1149.50 -37.00 -46.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.13","color":"#B300FF","bold":true},{"translate":"core.functions.files.settings_spawn_item.14","color":"#FF00D4"},{"translate":"core.functions.files.settings_spawn_item.15","color":"#FF006F"},{"translate":"core.functions.files.settings_spawn_item.16","color":"#FF0000"},{"translate":"core.functions.files.settings_spawn_item.17","color":"#FF5500"},{"translate":"core.functions.files.settings_spawn_item.18","color":"#FFBB00"}]',background:16711680}
#### True Deathrun
summon text_display 1158.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.05f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.19","color":"#ffc042","bold": true},{"translate":"core.functions.files.settings_spawn_item.20","color":"white","bold":true}]',background:16711680}
summon text_display 1158.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.21","color":"#fa2f2f","bold":true},{"translate":"core.functions.files.settings_spawn_item.22","color":"white","bold":true}]',background:16711680}
#### Instant Gameover
summon text_display 1156.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.4f,-0.49f],scale:[0.75f,0.75f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.23","color": "white","bold": true},{"translate":"core.functions.files.settings_spawn_item.24","color": "#fa2f2f","bold": true}]',background:16711680}
summon text_display 1156.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.2f,-0.49f],scale:[0.75f,0.75f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.25","color": "#fa2f2f","bold": true},{"translate":"core.functions.files.settings_spawn_item.26","color": "white","bold": true}]',background:16711680}
#### Minigame
summon text_display 1149.50 -37.00 -48.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.45f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.27","color":"#C3FF00","bold":true},{"translate":"core.functions.files.settings_spawn_item.28","color":"#55FF00"},{"translate":"core.functions.files.settings_spawn_item.29","color":"#00FF88"},{"translate":"core.functions.files.settings_spawn_item.30","color":"#03FFEE"},{"translate":"core.functions.files.settings_spawn_item.31","color":"#0080FF"},{"translate":"core.functions.files.settings_spawn_item.32","color":"#7700FF"},{"translate":"core.functions.files.settings_spawn_item.33","color":"#FF00B3"},{"translate":"core.functions.files.settings_spawn_item.34","color":"#FF0000"}]',background:16711680}
summon text_display 1149.50 -37.00 -48.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.25f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.35","color": "white","bold": true}]',background:16711680}
summon text_display 1149.50 -37.00 -48.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.05f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.36","color": "#2f76fa","bold": true},{"translate":"core.functions.files.settings_spawn_item.37","color": "#2f76fa","bold": true}]',background:16711680}
#### How many checkpoints
summon text_display 1154.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.25f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.38","color": "white","bold": true}]',background:16711680}
summon text_display 1154.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.39","color": "#b2ff40","bold": true}]',background:16711680}
#### Match lenght
summon text_display 1149.50 -37.00 -44.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.6f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.40","color": "white","bold": true},{"translate":"core.functions.files.settings_spawn_item.41","color": "#b2ff40"},{"translate":"core.functions.files.settings_spawn_item.42","color": "white"}]',background:16711680}
summon text_display 1149.50 -37.00 -44.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.43","color": "#b2ff40","bold": true}]',background:16711680}
summon text_display 1149.50 -37.00 -44.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.44","color": "white","bold": true}]',background:16711680}
#### Lives
summon text_display 1150.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.25f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.45","color": "white","bold": true}]',background:16711680}
summon text_display 1150.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.46","color": "#b2ff40","bold": true}]',background:16711680}
#### CheckpointGiveLives
summon text_display 1152.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.6f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.47","color": "white","bold": true},{"translate":"core.functions.files.settings_spawn_item.48","color": "#b2ff40"}]',background:16711680}
summon text_display 1152.50 -37.00 -43.50 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.4f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.49","color": "white","bold": true},{"translate":"core.functions.files.settings_spawn_item.50","color": "#b2ff40"}]',background:16711680}
#### Ingame music
summon text_display 1149.50 -37.00 -50.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.35f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.51","color":"#B300FF","bold":true},{"translate":"core.functions.files.settings_spawn_item.52","color":"#FF00D4"},{"translate":"core.functions.files.settings_spawn_item.53","color":"#FF006F"},{"translate":"core.functions.files.settings_spawn_item.54","color":"#FF0000"},{"translate":"core.functions.files.settings_spawn_item.55","color":"#FF5500"},{"translate":"core.functions.files.settings_spawn_item.56","color": "#2f76fa"}]',background:16711680}
summon text_display 1149.50 -37.00 -50.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.10f,-0.49f],scale:[1.0f,1.0f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.57","color": "white","bold": true}]',background:16711680}
#### Weather
summon text_display 1156.50 -37.00 -49.50 {billboard:"fixed",Rotation:[90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.58","color":"#FFE600","bold":true},{"translate":"core.functions.files.settings_spawn_item.59","color":"#FFFF00"},{"translate":"core.functions.files.settings_spawn_item.60","color":"#00AAFF"},{"translate":"core.functions.files.settings_spawn_item.61","color":"#0455E0"},{"translate":"core.functions.files.settings_spawn_item.62","color":"#033EA3"},{"translate":"core.functions.files.settings_spawn_item.63","color":"#1E0AA3"},{"translate":"core.functions.files.settings_spawn_item.64","color":"#4E39A3"}]',background:16711680}
#### Time
summon text_display 1156.50 -37.00 -51.50 {billboard:"fixed",Rotation:[90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.65","color":"#FFE600","bold":true},{"translate":"core.functions.files.settings_spawn_item.66","color":"#FFFF00"},{"translate":"core.functions.files.settings_spawn_item.67","color":"#033EA3"},{"translate":"core.functions.files.settings_spawn_item.68","color":"#1E0AA3"}]',background:16711680}
#### Skip Cutscene
summon text_display 1150.50 -37.00 -55.50 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.69","color": "#fa2f2f","bold": true}]',background:16711680}
summon text_display 1150.50 -37.00 -55.50 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.70","color": "#2f76fa","bold": true}]',background:16711680}
#### Manual Settings
summon text_display 1149.50 -37.00 -52.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.6f,-0.49f],scale:[0.6f,0.6f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.71","color": "#2f76fa","bold": true},{"translate":"core.functions.files.settings_spawn_item.72","color": "white","bold": true}]',background:16711680}
summon text_display 1149.50 -37.00 -52.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.45f,-0.49f],scale:[0.6f,0.6f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.73","color": "#white","bold": true}]',background:16711680}
summon text_display 1149.50 -37.00 -52.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.30f,-0.49f],scale:[0.6f,0.6f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.74","color": "#fa2f2f","bold": true}]',background:16711680}
#### Stamina
summon text_display 1149.50 -37.00 -54.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.75","color": "#2f76fa","bold": true}]',background:16711680}
summon text_display 1149.50 -37.00 -54.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.76","color": "#fa2f2f","bold": true}]',background:16711680}
#### Minigame Only
summon text_display 1152.50 -37.00 -55.50 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.3f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.77","color":"#C3FF00","bold":true},{"translate":"core.functions.files.settings_spawn_item.78","color":"#55FF00"},{"translate":"core.functions.files.settings_spawn_item.79","color":"#00FF88"},{"translate":"core.functions.files.settings_spawn_item.80","color":"#03FFEE"},{"translate":"core.functions.files.settings_spawn_item.81","color":"#0080FF"},{"translate":"core.functions.files.settings_spawn_item.82","color":"#7700FF"},{"translate":"core.functions.files.settings_spawn_item.83","color":"#FF00B3"},{"translate":"core.functions.files.settings_spawn_item.84","color":"#FF0000"}]',background:16711680}
summon text_display 1152.50 -37.00 -55.50 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.0f,-0.49f],scale:[1.2f,1.2f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.85","color": "#fa2f2f","bold": true}]',background:16711680}


##Selected Settings Screen inside the Settings room
#Logo
summon text_display 1171.50 -37.0 -55.50 {billboard:"fixed",alignment:"center",Tags:["settings_text","settings_selected_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3.8f,-0.49f],scale:[1.7f,1.7f,1f]},text:'[{"translate":"core.functions.files.settings_spawn_item.86"}]',background:16711680}


## Settings entrance text
summon text_display 1186.05 -26.875 -46.5 {glow_color_override:1b,alignment:"center",Rotation:[-90F,0F],Tags:["settings_text_entrance"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"translate":"core.functions.files.settings_spawn_item.87","color":"white","bold":true}',background:-16777216}

## Portal texture inside the settings room
summon block_display 1164.50 -40.10 -43.00 {glow_color_override:1b,Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,12f,0.1f]},block_state:{Name:"minecraft:nether_portal"}}


## Portal text
summon text_display 1202.5 -18.0 -56.5 {alignment:"center",Tags:["unready_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,-1f],scale:[2f,2f,2f]},text:'{"translate":"core.functions.files.settings_spawn_item.88","color":"white","bold":true}',background:16711680}
summon text_display 1202.5 -18.0 -60.5 {Rotation:[-180f,0f],alignment:"center",Tags:["unready_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,-1f],scale:[2f,2f,2f]},text:'{"translate":"core.functions.files.settings_spawn_item.89","color":"white","bold":true}',background:16711680}

summon text_display 1202.5 -18.5 -56.5 {alignment:"center",Tags:["unready_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,-1f],scale:[2f,2f,2f]},text:'[{"translate":"core.functions.files.settings_spawn_item.90","color":"dark_red","bold":true},{"translate":"core.functions.files.settings_spawn_item.91","color":"white"}]',background:16711680}
summon text_display 1202.5 -18.5 -60.5 {Rotation:[-180f,0f],alignment:"center",Tags:["unready_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,-1f],scale:[2f,2f,2f]},text:'[{"translate":"core.functions.files.settings_spawn_item.92","color":"dark_red","bold":true},{"translate":"core.functions.files.settings_spawn_item.93","color":"white"}]',background:16711680}

function core:files/update_settings


