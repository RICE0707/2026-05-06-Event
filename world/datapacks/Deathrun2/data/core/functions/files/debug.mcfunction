##
 # debug.mcfunction
 # 
 #
 # Created by .
##




## Debug command to make arrows decorations. non despawnable/ killable by server

#execute as @e[tag=!recorder,type=arrow] at @s run data merge entity @s {life:-1,pickup:0b,Tags:["decoration"]}


## Backup Commands
#Settings texts

##Settings textdisplays
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.1","color":"#94EB13","bold":false}',background:16711680}

summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.2","color":"#EB2E10","bold":true}]',background:16711680}

summon text_display ~ ~2.5 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.3","color":"#00DBEB","italic":true},{"translate":"core.functions.files.debug.4","color":"yellow"}]',background:16711680}
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.5","color":"yellow","italic":true}',background:16711680}

summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.6","color":"#36BCFF"}',background:16711680}

summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.7","color":"dark_red","bold":true},{"translate":"core.functions.files.debug.8","color":"gold","bold":false}]',background:16711680}

summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.9","color":"#FFF700","bold":true},{"translate":"core.functions.files.debug.10","color":"#B3FF00"},{"translate":"core.functions.files.debug.11","color":"#00FF80"},{"translate":"core.functions.files.debug.12","color":"#00AAFF"},{"translate":"core.functions.files.debug.13","color":"#3300FF"},{"translate":"core.functions.files.debug.14","color":"#B300FF"},{"translate":"core.functions.files.debug.15","color":"#FF00D4"},{"translate":"core.functions.files.debug.16","color":"#FF006F"},{"translate":"core.functions.files.debug.17","color":"#FF0000"},{"translate":"core.functions.files.debug.18","color":"#FF5500"},{"translate":"core.functions.files.debug.19","color":"#FFBB00"}]',background:16711680}

summon text_display ~ ~2.0 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.20","color":"yellow","italic":true},{"translate":"core.functions.files.debug.21","color":"white","bold":true,"italic":false},{"translate":"core.functions.files.debug.22","color":"#FF1900","bold":true,"italic":false}]',background:16711680}

summon text_display ~ ~2.75 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.23","color":"white","bold":true},{"translate":"core.functions.files.debug.24","bold":true},{"translate":"core.functions.files.debug.25","color":"#FF1900"}]',background:16711680}
summon text_display ~ ~2.50 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.26","color":"white","italic":true}',background:16711680}
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.27","color":"#FF1900","bold":true}',background:16711680}

summon text_display ~ ~2.5 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.28","color":"#C3FF00","bold":true},{"translate":"core.functions.files.debug.29","color":"#55FF00"},{"translate":"core.functions.files.debug.30","color":"#00FF88"},{"translate":"core.functions.files.debug.31","color":"#03FFEE"},{"translate":"core.functions.files.debug.32","color":"#0080FF"},{"translate":"core.functions.files.debug.33","color":"#7700FF"},{"translate":"core.functions.files.debug.34","color":"#FF00B3"},{"translate":"core.functions.files.debug.35","color":"#FF0000"}]',background:16711680}

summon text_display ~ ~2.50 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.36","color":"white","italic":true}',background:16711680}
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.37","color":"#C3FF00","bold":true}',background:16711680}

summon text_display ~ ~2.50 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.38","color":"white","italic":true},{"translate":"core.functions.files.debug.39","color":"#C3FF00","bold":true,"italic":false},{"translate":"core.functions.files.debug.40","bold":false,"italic":true}]',background:16711680}
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.41","color":"#C3FF00","bold":true},{"translate":"core.functions.files.debug.42","color":"white","bold":false,"italic":true}]',background:16711680}

summon text_display ~ ~2.50 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.43","color":"white","italic":true}',background:16711680}
summon text_display ~ ~2.25 ~0.499 {billboard:"fixed",Rotation:[180F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.44","color":"#C3FF00","bold":true,"italic":false}',background:16711680}

summon text_display ~-0.499 ~2.50 ~-0.64 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.45","color":"white","italic":true},{"translate":"core.functions.files.debug.46","color": "#C3FF00","bold": true,"italic": false}]',background:16711680}
summon text_display ~-0.499 ~2.25 ~-0.50 {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.47","color":"white","italic":true},{"translate":"core.functions.files.debug.48","color": "#FF1900","bold": true,"italic": false}]',background:16711680}

summon text_display ~-0.499 ~2.50 ~ {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.49","color":"yellow","italic":true},{"translate":"core.functions.files.debug.50","color":"#C3FF00","bold":true,"italic":false},{"translate":"core.functions.files.debug.51","color":"#4DFF00","bold":true,"italic":false},{"translate":"core.functions.files.debug.52","color":"#00FFCC","bold":true,"italic":false},{"translate":"core.functions.files.debug.53","color":"#005EFF","bold":true,"italic":false},{"translate":"core.functions.files.debug.54","color":"#FF0080","bold":true,"italic":false}]',background:16711680}
summon text_display ~-0.499 ~2.25 ~ {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.55","color":"white","italic":true}',background:16711680}

summon text_display ~-0.499 ~2.25 ~ {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.56","color":"#FFE600","bold":true},{"translate":"core.functions.files.debug.57","color":"#FFFF00"},{"translate":"core.functions.files.debug.58","color":"#00AAFF"},{"translate":"core.functions.files.debug.59","color":"#0455E0"},{"translate":"core.functions.files.debug.60","color":"#033EA3"},{"translate":"core.functions.files.debug.61","color":"#1E0AA3"},{"translate":"core.functions.files.debug.62","color":"#4E39A3"}]',background:16711680}

summon text_display ~-0.499 ~2.50 ~ {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.63","color":"dark_red","bold":true,"italic":true}',background:16711680}
summon text_display ~-0.499 ~2.25 ~ {billboard:"fixed",Rotation:[-90F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'{"translate":"core.functions.files.debug.64","color":"#88FF00","bold":true}',background:16711680}

summon text_display ~ ~2.50 ~-0.499 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.65","color":"dark_red","bold":true}]',background:16711680}
summon text_display ~ ~2.25 ~-0.499 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.66","color":"white","bold":false,"italic": true}]',background:16711680}

summon text_display ~ ~2.25 ~-0.499 {billboard:"fixed",Rotation:[0F,0F],Tags:["settings_text"],brightness:{sky:15,block:15},text:'[{"translate":"core.functions.files.debug.67","color":"gold","bold":true}]',background:16711680}

##Backup Item display of selected thing
summon item_display 1173.5 -35.5 -43.0 {billboard:"fixed",item_display:"fixed",Rotation:[180F,0F],Tags:["settings_text","settings_item","setting_pvp"],brightness:{sky:11,block:10},item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}


say DANGER RELOAD MULTIPLE ENTITY SPAWNING