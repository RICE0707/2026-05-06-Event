##
 # _7_rlgl_check.mcfunction
 # 
 #
 # Created by Lifeely.
##

##This function gets random number for the redlight timer

##Summon area effect cloud and based on uuid get random number
kill @e[tag=!recorder,type=area_effect_cloud,tag=random_rlgl_uuid]
summon area_effect_cloud -63.5 -23 63.5 {Tags:["random_rlgl_uuid"]}
execute store result score _redlight_chance_select_calc _minigame_rlgl run data get entity @e[tag=!recorder,type=area_effect_cloud,tag=random_rlgl_uuid,limit=1] UUID[0] 1
scoreboard players operation _redlight_chance_select_calc _minigame_rlgl %= _redlight_chance _minigame_rlgl
scoreboard players operation _redlight_chance_select _minigame_rlgl = _redlight_chance_select_calc _minigame_rlgl
kill @e[tag=!recorder,type=area_effect_cloud,tag=random_rlgl_uuid]






