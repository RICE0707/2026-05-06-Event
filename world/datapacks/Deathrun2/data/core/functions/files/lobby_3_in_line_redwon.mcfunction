##
 # lobby_3_in_line_redwon.mcfunction
 # 
 #
 # Created by .
##

particle minecraft:dust 1 0.122 0.122 3 1237.0 -19.49 -41.50 0 2.5 2.5 0 70 normal
title @a times 5 40 5
title @a[tag=!recorder,x=1232,y=-19,z=-41,distance=..30] subtitle ["",{"translate":"core.functions.files.lobby_3_in_line_redwon.1","underlined":true,"color":"gold"},{"translate":"wtem.space","color":"gold"},{"translate":"core.functions.files.lobby_3_in_line_redwon.3","underlined":true,"color":"#FF2525"},{"translate":"wtem.space","color":"#FF2525"},{"translate":"core.functions.files.lobby_3_in_line_redwon.5","underlined":true,"color":"#1B7EF8"}]
title @a[tag=!recorder,x=1232,y=-19,z=-41,distance=..30] title [{"translate":"core.functions.files.lobby_3_in_line_redwon.6","color":"#ff2525"},{"translate":"core.functions.files.lobby_3_in_line_redwon.7","color":"aqua"}]
execute as @a[tag=!recorder,x=1232,y=-19,z=-41,distance=..30] at @s run playsound ui.toast.challenge_complete record @s ~ ~ ~ 0.3 1.6
scoreboard players set Reset 3_in_line 1
