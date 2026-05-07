##
 # _7_rlgl_laserkill.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Red light green light laser that kills that player
tag @s add eye_target
execute as @e[tag=!recorder,tag=minigame_endereye] at @s run teleport @s ~ ~ ~ facing entity @p[tag=!recorder,tag=eye_target,limit=1]

##When activated remove any movement detected
scoreboard players reset @s _mg_rlgl_walk_detect
scoreboard players reset @s _mg_rlgl_waterwalk_detect
scoreboard players reset @s _mg_rlgl_u_waterwalk_detect
scoreboard players reset @s _mg_rlgl_sprint_detect
scoreboard players reset @s _mg_rlgl_jump_detect
scoreboard players reset @s _mg_rlgl_shift_detect
scoreboard players reset @s _mg_rlgl_swim_detect
scoreboard players reset @s _mg_rlgl_fall_detect

##Particle laser towards player that got killed
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000500 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000490 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000480 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000470 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000460 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000450 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000440 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000430 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000420 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000410 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000400 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000390 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000380 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000370 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000360 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000350 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000340 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000330 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000320 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000310 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000300 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000290 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000285 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000280 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000275 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000270 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000265 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000260 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000255 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000250 0 force
execute positioned -157.50 55.00 66.50 facing entity @s eyes run particle glow_squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000245 0 force
playsound block.glass.break record @a ~ ~ ~ 1.5 1.6
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1.5 1.6
tag @s remove eye_target
tag @s add godmode_4sec
scoreboard players remove @s Lives 1
function traps:files/_player_die
