##
 # 33_.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set changed_portal TrapsData 1

fill 218 -40 51 225 -38 58 minecraft:orange_concrete replace minecraft:gray_concrete
fill 218 -40 51 225 -38 58 minecraft:orange_stained_glass_pane replace minecraft:gray_stained_glass_pane
particle dust 0.361 0.361 0.361 1.5 228.00 -38.75 63.00 0.6 0.9 0.6 0.03 50 normal
fill 236 -39 58 238 -41 60 air destroy
fill 226 -42 64 229 -37 61 minecraft:gray_concrete replace minecraft:orange_concrete
fill 226 -42 64 229 -37 61 minecraft:gray_stained_glass_pane replace minecraft:orange_stained_glass_pane
clone 270 -55 54 262 -50 62 232 -42 56

playsound minecraft:entity.illusioner.mirror_move record @a 221 -38 54 3 1.5
playsound minecraft:entity.illusioner.prepare_mirror record @a 228 -39 63 3 1.5

scoreboard players set trap_33 trap_activated 1












