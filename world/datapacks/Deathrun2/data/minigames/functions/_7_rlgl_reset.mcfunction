##
 # _7_rlgl_reset.mcfunction
 # 
 #
 # Created by Lifeely.
##

##This function is just an simplified version of reseting all scoreboards to its primal phase

scoreboard objectives remove _mg_rlgl_walk_detect
scoreboard objectives remove _mg_rlgl_waterwalk_detect
scoreboard objectives remove _mg_rlgl_u_waterwalk_detect
scoreboard objectives remove _mg_rlgl_sprint_detect
scoreboard objectives remove _mg_rlgl_jump_detect
scoreboard objectives remove _mg_rlgl_shift_detect
scoreboard objectives remove _mg_rlgl_swim_detect
scoreboard objectives remove _mg_rlgl_fall_detect

scoreboard players set _redlight_chance_timer _minigame_rlgl 15
scoreboard players set _redlight_cooldown_timer _minigame_rlgl 65
scoreboard players set _redlight_chance_select _minigame_rlgl 0
