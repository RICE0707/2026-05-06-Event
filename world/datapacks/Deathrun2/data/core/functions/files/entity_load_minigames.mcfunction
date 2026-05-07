##
 # entity_load_minigames.mcfunction
 # 
 #
 # Created by Lifeely.
##
##This function loads entity that are required for minigames and makes that other entitys dissapear

##Kill entitys
kill @e[tag=checkpoint_item]
kill @e[tag=trap_border]
kill @e[tag=mimic]
kill @e[tag=snow_shovel]
kill @e[tag=random_rotator]
kill @e[tag=gorge_ravenger]
kill @e[tag=bomb_hat]
kill @e[tag=gorge_the_god]
kill @e[tag=gorge_the_god_ice]
kill @e[tag=_crossy]
kill @e[tag=wrong_gate]

summon armor_stand 106.5 25 168.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["random_rotator"]}

##Minigame Red light green light
#Ender eye
execute if loaded -158 55 66 run summon item_display -158.5 55.5 66.5 {Rotation:[-90f,0f],billboard:"fixed",Tags:["trap_border","minigame_endereye"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.275f,0f,1f],scale:[9f,9f,0.1f]},item:{id:"minecraft:ender_eye",Count:1b}}

#Arrows on ground, to point towards where player must go
execute if loaded 18 -32 56 run summon text_display 18.5 -32.0 56.9 {Rotation:[90F,15F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,1f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.1","color":"white"}',background:16711680}
execute if loaded 19 -30 44 run summon text_display 19.0 -30.75 44.1 {Rotation:[-90F,-15F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,1f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[-1f,-1f,-1f]},text:'{"translate":"core.functions.files.entity_load_minigames.2","color":"white"}',background:16711680}

#Portal
execute if loaded -155 -43 79 run summon block_display -155.40 -43.00 79.50 {billboard:"fixed",Rotation:[90F,90F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[2.75f,0.3f,2.75f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 155 -43 79 run summon block_display -155.50 -43.00 79.50 {billboard:"fixed",Rotation:[90F,90F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[2.75f,0.3f,2.75f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded -200 -28 205 run summon block_display -200.5 -28.00 205.5 {billboard:"fixed",Rotation:[-90F,90F],Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[6.0f,0.3f,6.0f]},block_state:{Name:"minecraft:nether_portal"}}
# execute if loaded  run 
### MIDDLE PATH ---\
execute if loaded -17 -42 44 run summon text_display -17.5 -42 44.5 {Rotation:[102F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.3","color":"aqua"}',background:16711680}
execute if loaded -10 -42 56 run summon text_display -10.5 -42 56.5 {Rotation:[11F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.4","color":"gold"}',background:16711680}
execute if loaded -15 -42 51 run summon text_display -15.5 -42 51.5 {Rotation:[47F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.5","color":"#a3ed67"}',background:16711680}

execute if loaded -30 -38 60 run summon text_display -30.5 -38 60.5 {Rotation:[135F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.6","color":"#a3ed67"}',background:16711680}
execute if loaded -30 -38 66 run summon text_display -30.5 -38 66.5 {Rotation:[45F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.7","color":"#a3ed67"}',background:16711680}

execute if loaded -39 -38 58 run summon text_display -39.5 -38 58.5 {Rotation:[45F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.8","color":"#a3ed67"}',background:16711680}
execute if loaded -39 -38 68 run summon text_display -39.5 -38 68.5 {Rotation:[135F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.9","color":"#a3ed67"}',background:16711680}

execute if loaded -44 -38 62 run summon text_display -44.5 -38 62.5 {Rotation:[135F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.10","color":"#a3ed67"}',background:16711680}
execute if loaded -44 -38 64 run summon text_display -44.5 -38 64.5 {Rotation:[45F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.11","color":"#a3ed67"}',background:16711680}
execute if loaded -45 -38 63 run summon text_display -45.5 -38 63.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.12","color":"#a3ed67"}',background:16711680}


execute if loaded -58 -37 63 run summon text_display -58.5 -37.9 63.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.13","color":"#a3ed67"}',background:16711680}
execute if loaded -60 -36 46 run summon text_display -60.5 -36 46.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.14","color":"#a3ed67"}',background:16711680}
execute if loaded -60 -36 80 run summon text_display -60.5 -36 80.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.15","color":"#a3ed67"}',background:16711680}

execute if loaded -76 -36 66 run summon text_display -76.5 -36 66.5 {Rotation:[45F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.16","color":"#a3ed67"}',background:16711680}
execute if loaded -76 -36 60 run summon text_display -76.5 -36 60.5 {Rotation:[135F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.17","color":"#a3ed67"}',background:16711680}

execute if loaded -80 -36 71 run summon text_display -80.5 -36 71.5 {Rotation:[80F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.18","color":"#a3ed67"}',background:16711680}
execute if loaded -80 -36 55 run summon text_display -80.5 -36 55.5 {Rotation:[100F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.19","color":"#a3ed67"}',background:16711680}

execute if loaded -96 -36 53 run summon text_display -96.5 -36 53.5 {Rotation:[0F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.20","color":"#a3ed67"}',background:16711680}
execute if loaded -96 -36 73 run summon text_display -96.5 -36 73.5 {Rotation:[180F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.21","color":"#a3ed67"}',background:16711680}

execute if loaded -97 -36 63 run summon text_display -97.5 -36 63.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.75f,1f,0.75f]},text:'{"translate":"core.functions.files.entity_load_minigames.22","color":"#a3ed67"}',background:16711680}
### --- / 

###RIGHT PATH ---\
execute if loaded -44 -44 37 run summon text_display -44.5 -44 37.5 {Rotation:[120F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.23","color":"aqua"}',background:16711680}

execute if loaded -63 -45 26 run summon text_display -63.5 -45 26.5 {Rotation:[50F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.24","color":"aqua"}',background:16711680}

execute if loaded -91 -45 34 run summon text_display -91.5 -45 34.5 {Rotation:[80F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.25","color":"aqua"}',background:16711680}

execute if loaded -108 -43 38 run summon text_display -108.5 -43 38.5 {Rotation:[30F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.26","color":"aqua"}',background:16711680}

execute if loaded -118 -43 57 run summon text_display -118.5 -43 57.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.75f,1f,0.75f]},text:'{"translate":"core.functions.files.entity_load_minigames.27","color":"aqua"}',background:16711680}
### --- /

###LEFT PATH ---\
execute if loaded -31 -43 80 run summon text_display -31.5 -43 80.5 {Rotation:[50F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.28","color":"gold"}',background:16711680}

execute if loaded -48 -43 97 run summon text_display -48.5 -43 97.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.29","color":"gold"}',background:16711680}

execute if loaded -101 -43 92 run summon text_display -101.5 -43 92.5 {Rotation:[133F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.30","color":"gold"}',background:16711680}
execute if loaded -101 -43 96 run summon text_display -101.5 -43 96.5 {Rotation:[83F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.31","color":"gold"}',background:16711680}

execute if loaded -114 -43 81 run summon text_display -114.5 -43 81.5 {Rotation:[168F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.32","color":"gold"}',background:16711680}
execute if loaded -120 -43 99 run summon text_display -120.5 -43 99.5 {Rotation:[90F,0F],billboard:"fixed",Tags:["trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[-0.110f,0f,-0.5f],scale:[0.5f,1f,0.5f]},text:'{"translate":"core.functions.files.entity_load_minigames.33","color":"gold"}',background:16711680}
### --- /

##Killers/Runners in castle snipers minigame
execute if loaded -23 39 -830 run summon text_display -23.5 39 -830.5 {billboard:"horizontal",default_background:0b,shadow:1b,alignment:"center",Rotation:[0F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[37f,37f,37f]},text:'[{"translate":"core.functions.files.entity_load_minigames.34","color":"#ff2b2b","bold": true}]',background:16711680}
execute if loaded -23 39 -772 run summon text_display -23.5 39 -772.5 {billboard:"horizontal",default_background:0b,shadow:1b,alignment:"center",Rotation:[180F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[37f,37f,37f]},text:'[{"translate":"core.functions.files.entity_load_minigames.35","color":"#2b76ff","bold": true}]',background:16711680}

##Destroy the life block text
execute if loaded -23 15 -790 run summon text_display -23.40 15.00 -790.00 {billboard:"fixed",default_background:0b,shadow:1b,alignment:"center",Rotation:[180F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'[{"translate":"core.functions.files.entity_load_minigames.36","color":"white","bold": false}]',background:16711680}
execute if loaded -23 15 -790 run summon text_display -23.60 15.00 -814.00 {billboard:"fixed",default_background:0b,shadow:1b,alignment:"center",Rotation:[0F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'[{"translate":"core.functions.files.entity_load_minigames.37","color":"white","bold": false}]',background:16711680}

##Keep the life block text
execute if loaded -23 15 -790 run summon text_display -23.60 15.00 -789.00 {billboard:"fixed",default_background:0b,shadow:1b,alignment:"center",Rotation:[0F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'[{"translate":"core.functions.files.entity_load_minigames.38","color":"white","bold": false}]',background:16711680}
execute if loaded -23 15 -790 run summon text_display -23.40 15.00 -815.00 {billboard:"fixed",default_background:0b,shadow:1b,alignment:"center",Rotation:[180F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'[{"translate":"core.functions.files.entity_load_minigames.39","color":"white","bold": false}]',background:16711680}




##Minigame lobby Minigames names
execute if loaded 246 -38 117 run summon text_display 246.5 -38.5 117.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.40","color":"white"}',background:16711680}
execute if loaded 235 -38 109 run summon text_display 235.5 -38.5 109.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.41","color":"white"}',background:16711680}
execute if loaded 242 -38 111 run summon text_display 242.5 -38.5 111.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.42","color":"white"}',background:16711680}
execute if loaded 235 -38 133 run summon text_display 235.5 -38.5 133.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.43","color":"white"}',background:16711680}

execute if loaded 242 -38 131 run summon text_display 242.5 -38.5 131.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.44","color":"white"}',background:16711680}
execute if loaded 199 -38 117 run summon text_display 246.5 -38.5 125.5 {billboard:"vertical",alignment:"center",Tags:["trap_border"],brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"core.functions.files.entity_load_minigames.45","color":"white"}',background:16711680}

##Minigame lobby minigames portals to the minigames
execute if loaded 232 -42 110 run summon block_display 232.5 -42.25 110.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -46 110 run summon block_display 232.5 -46.25 110.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -50 110 run summon block_display 232.5 -50.25 110.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -54 110 run summon block_display 232.5 -54.25 110.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -58 110 run summon block_display 232.5 -58.25 110.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

execute if loaded 239 -42 112 run summon block_display 239.5 -42.25 112.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -46 112 run summon block_display 239.5 -46.25 112.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -50 112 run summon block_display 239.5 -50.25 112.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -54 112 run summon block_display 239.5 -54.25 112.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -58 112 run summon block_display 239.5 -58.25 112.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

execute if loaded 243 -42 118 run summon block_display 243.5 -42.25 118.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -46 118 run summon block_display 243.5 -46.25 118.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -50 118 run summon block_display 243.5 -50.25 118.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -54 118 run summon block_display 243.5 -54.25 118.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -58 118 run summon block_display 243.5 -58.25 118.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

execute if loaded 243 -42 126 run summon block_display 243.5 -42.25 126.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -46 126 run summon block_display 243.5 -46.25 126.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -50 126 run summon block_display 243.5 -50.25 126.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -54 126 run summon block_display 243.5 -54.25 126.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 243 -58 126 run summon block_display 243.5 -58.25 126.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

execute if loaded 239 -42 132 run summon block_display 239.5 -42.25 132.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -46 132 run summon block_display 239.5 -46.25 132.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -50 132 run summon block_display 239.5 -50.25 132.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -54 132 run summon block_display 239.5 -54.25 132.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 239 -58 132 run summon block_display 239.5 -58.25 132.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

execute if loaded 232 -42 132 run summon block_display 232.5 -42.25 134.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -46 132 run summon block_display 232.5 -46.25 134.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -50 132 run summon block_display 232.5 -50.25 134.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -54 132 run summon block_display 232.5 -54.25 134.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}
execute if loaded 232 -58 132 run summon block_display 232.5 -58.25 134.0 {billboard:"fixed",Rotation:[90F,00F],Tags:["border_08","trap_border"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[-1f,0f,0f,1f],translation:[2.5f,0f,0f],scale:[1.5f,0.3f,1.5f]},block_state:{Name:"minecraft:nether_portal"}}

##Text above minigames, to select the minigame
execute if loaded 246 -26 121 run summon text_display 246.5 -20 121.5 {billboard:"horizontal",default_background:0b,shadow:1b,alignment:"center",Rotation:[90F,0F],Tags:["endgame_portal_text","trap_border"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11f,11f,11f]},text:'[{"translate":"core.functions.files.entity_load_minigames.46","color":"#FFFFFF","bold":true},{"translate":"core.functions.files.entity_load_minigames.47","color":"#ff0655","bold":true}]',background:16711680}


tellraw @a[tag=!recorder,tag=debug] {"translate":"core.functions.files.entity_load_minigames.48"}