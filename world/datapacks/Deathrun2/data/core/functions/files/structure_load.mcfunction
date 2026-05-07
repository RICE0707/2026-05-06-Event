##
 # structure_load.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function all the structures of the traps are set to their default position

##Enable forceload for structureload and entity  kill and at the end remove them
# Minigames 1
forceload add 29 282 -188 5
# Minigames 2
forceload add 34 311 388 168
# Deathrun
forceload add 281 -58 27 164

##02_Lopty
clone 75 -64 -33 63 -55 -22 69 -45 13

##06_Cross_Lights
clone 133 -57 26 132 -53 31 132 -42 37
fill 136 -38 33 142 -38 43 minecraft:green_concrete replace minecraft:red_concrete

##07_factory_planks
fill 136 -43 47 145 -44 53 air
clone 139 -56 48 137 -55 47 136 -44 47
clone 139 -55 47 137 -56 46 143 -44 52

##10_insta_freeze
clone 99 -64 67 90 -55 80 90 -44 67

##12_ice_spikes
clone 86 -60 85 73 -51 97 58 -36 85

##13_snowy_floor
clone 69 -56 111 60 -53 117 60 -44 111

##14_snow_shovel
clone 71 -58 120 76 -53 130 73 -43 120

##15_giant_snowball platform + ground
clone 96 -52 118 92 -55 114 83 -25 118
clone 95 -49 128 88 -55 121 82 -42 124

##16_gorge
clone 93 -64 131 87 -53 138 95 -45 131

##22_frog
clone 153 -56 86 148 -50 92 167 -40 53
fill 155 -37 53 167 -40 59 air

##23_street_car
fill 156 -38 41 176 -41 35 air
fill 159 -41 35 156 -11 41 air
fill 155 -33 41 155 -17 35 air
fill 154 -30 35 154 -19 41 air
fill 153 -26 41 153 -19 35 air
fill 152 -22 35 152 -19 41 air
clone 163 -60 27 160 -53 29 152 -19 35
clone 163 -60 31 160 -53 33 152 -19 39
clone 153 -46 31 148 -41 31 159 -41 34

##29_pirates
fill 227 -41 2 234 -41 11 minecraft:oak_trapdoor[facing=west,half=bottom,open=false] replace minecraft:oak_trapdoor
fill 239 -41 8 236 -41 6 minecraft:oak_trapdoor[facing=south,half=bottom,open=false] replace minecraft:oak_trapdoor

##31_pirate_hook
fill 236 -41 26 245 -36 29 air
clone 236 -59 32 232 -56 35 232 -42 26

##33_portal_swap
fill 218 -40 51 225 -38 58 minecraft:gray_concrete replace minecraft:orange_concrete
fill 218 -40 51 225 -38 58 minecraft:gray_stained_glass_pane replace minecraft:orange_stained_glass_pane

fill 226 -42 64 229 -37 61 minecraft:orange_concrete replace minecraft:gray_concrete
fill 226 -42 64 229 -37 61 minecraft:orange_stained_glass_pane replace minecraft:gray_stained_glass_pane

clone 270 -55 64 262 -50 72 232 -42 56

##35_lightning_wire
clone 217 -53 79 205 -51 86 202 -39 73

##36_wall_blades
fill 188 -37 79 200 -40 74 air

##37_backup_plan
fill 174 -39 86 167 -41 93 air
clone 190 -52 82 183 -51 89 167 -42 86

##Load the barrier for frog
clone 167 -56 67 169 -56 54 166 -39 50

##Sign in lobby
#Forward ps1- ps4
setblock 1195 -29 -54 warped_wall_sign[facing=east]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.2","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players add select_pshop_01 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1192 -29 -55 warped_wall_sign[facing=north]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.6","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players add select_pshop_02 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1191 -29 -52 warped_wall_sign[facing=west]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.10","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players add select_pshop_03 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1194 -29 -51 warped_wall_sign[facing=south]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.14","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players add select_pshop_04 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace

#Backwards ps1- ps4
setblock 1195 -29 -52 warped_wall_sign[facing=east]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.18","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players remove select_pshop_01 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1194 -29 -55 warped_wall_sign[facing=north]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.22","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players remove select_pshop_02 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1191 -29 -54 warped_wall_sign[facing=west]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.26","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players remove select_pshop_03 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1192 -29 -51 warped_wall_sign[facing=south]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.30","color":"white","clickEvent":{"action":"run_command","value":"scoreboard players remove select_pshop_04 _core_Pointshop 1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace

#select ps1-ps4
setblock 1195 -29 -53 warped_wall_sign[facing=east]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.34","color":"white","clickEvent":{"action":"run_command","value":"function pointshop:_pointshop_as_player_select1"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1193 -29 -55 warped_wall_sign[facing=north]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.38","color":"white","clickEvent":{"action":"run_command","value":"function pointshop:_pointshop_as_player_select2"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1191 -29 -53 warped_wall_sign[facing=west]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.42","color":"white","clickEvent":{"action":"run_command","value":"function pointshop:_pointshop_as_player_select3"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace
setblock 1193 -29 -51 warped_wall_sign[facing=south]{front_text:{has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"translate":"core.functions.files.structure_load.46","color":"white","clickEvent":{"action":"run_command","value":"function pointshop:_pointshop_as_player_select4"}}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b} replace

##Minigame TNT RUN 
clone 353 -45 315 321 -44 269 328 -58 189
clone 353 -51 315 321 -52 269 328 -52 189
clone 321 -59 315 353 -58 269 328 -45 189
clone 353 -61 315 321 -62 269 328 -62 189

##Minigame Simon Says
clone 14 -62 227 -4 -62 209 -4 -39 209
fill 3 -30 204 7 -34 204 air
fill 19 -30 216 19 -34 220 air
fill 7 -30 232 3 -34 232 air
fill -9 -30 220 -9 -34 216 air

##Remove forceload after all entitys killed/spawned
# Minigames 1
forceload remove 29 282 -188 5
# Minigames 2
forceload remove 34 311 388 168
# Deathrun
forceload remove 281 -58 27 164
