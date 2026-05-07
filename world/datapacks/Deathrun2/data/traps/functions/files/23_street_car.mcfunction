##
 # 23_.mcfunction
 # 
 #
 # Created by .
##
##Start the loop
scoreboard players set loop_23 loop_trap 1

##Animation timer loop
scoreboard players add car_loop Timer 1
execute if score car_loop Timer matches 52.. run scoreboard players set loop_23 loop_trap 0
execute if score car_loop Timer matches 52.. run scoreboard players set car_loop Timer 0

##Lock and unlock the gate 
execute if score car_loop Timer matches 1 run clone 153 -46 33 148 -41 33 159 -41 34
execute if score car_loop Timer matches 1 run particle cloud 162.50 -39.70 34.50 1.2 0.3 0.3 0.02 25
execute if score car_loop Timer matches 1 run playsound block.anvil.land record @a 162.50 -39.70 34.50 1.5 1
execute if score car_loop Timer matches 51 run clone 153 -46 31 148 -41 31 159 -41 34
execute if score car_loop Timer matches 51 run particle cloud 162.50 -39.70 34.50 1.2 0.3 0.3 0.02 25
execute if score car_loop Timer matches 51 run playsound block.anvil.place record @a 162.50 -39.70 34.50 1.5 1.5
execute if score car_loop Timer matches 51 run clone 163 -60 31 160 -53 33 152 -19 39
execute if score car_loop Timer matches 51 run clone 163 -60 27 160 -53 29 152 -19 35

execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[x=162.5,z=38.5,distance=..15] if block ~ ~ ~ structure_void run function traps:files/_player_die

##Car engine sound

execute if score car_loop Timer matches 1 run playsound minecraft:block.anvil.step record @a 152 -19 35 1.25 2
execute if score car_loop Timer matches 2 run playsound minecraft:block.anvil.step record @a 152 -20 35 1.25 2
execute if score car_loop Timer matches 3 run playsound minecraft:block.anvil.step record @a 152 -21 35 1.25 2
execute if score car_loop Timer matches 5 run playsound minecraft:block.anvil.step record @a 153 -22 35 1.25 2
execute if score car_loop Timer matches 6 run playsound minecraft:block.anvil.step record @a 153 -23 35 1.25 2
execute if score car_loop Timer matches 7 run playsound minecraft:block.anvil.step record @a 153 -24 35 1.25 2
execute if score car_loop Timer matches 8 run playsound minecraft:block.anvil.step record @a 153 -25 35 1.25 2
execute if score car_loop Timer matches 9 run playsound minecraft:block.anvil.step record @a 153 -26 35 1.25 2
execute if score car_loop Timer matches 11 run playsound minecraft:block.anvil.step record @a 154 -27 35 1.25 2
execute if score car_loop Timer matches 12 run playsound minecraft:block.anvil.step record @a 154 -28 35 1.25 2
execute if score car_loop Timer matches 13 run playsound minecraft:block.anvil.step record @a 154 -29 35 1.25 2
execute if score car_loop Timer matches 14 run playsound minecraft:block.anvil.step record @a 154 -30 35 1.25 2
execute if score car_loop Timer matches 15 run playsound minecraft:block.anvil.step record @a 155 -31 35 1.25 2
execute if score car_loop Timer matches 16 run playsound minecraft:block.anvil.step record @a 155 -32 35 1.25 2
execute if score car_loop Timer matches 17 run playsound minecraft:block.anvil.step record @a 155 -33 35 1.25 2
execute if score car_loop Timer matches 19 run playsound minecraft:block.anvil.step record @a 156 -34 35 1.25 2
execute if score car_loop Timer matches 20 run playsound minecraft:block.anvil.step record @a 156 -35 35 1.25 2
execute if score car_loop Timer matches 21 run playsound minecraft:block.anvil.step record @a 156 -36 35 1.25 2
execute if score car_loop Timer matches 22 run playsound minecraft:block.anvil.step record @a 156 -37 35 1.25 2
execute if score car_loop Timer matches 23 run playsound minecraft:block.anvil.step record @a 156 -38 35 1.25 2
execute if score car_loop Timer matches 24 run playsound minecraft:block.anvil.step record @a 156 -39 35 1.25 2
execute if score car_loop Timer matches 25 run playsound minecraft:block.anvil.step record @a 156 -40 35 1.25 2
execute if score car_loop Timer matches 26 run playsound minecraft:block.anvil.step record @a 156 -41 35 1.25 2
execute if score car_loop Timer matches 27 run playsound minecraft:block.anvil.step record @a 156 -41 35 1.25 2
execute if score car_loop Timer matches 28 run playsound minecraft:block.anvil.step record @a 156 -41 35 1.25 2
execute if score car_loop Timer matches 29 run playsound minecraft:block.anvil.step record @a 156 -41 35 1.25 2
execute if score car_loop Timer matches 30 run playsound minecraft:block.anvil.step record @a 157 -41 35 1.25 2
execute if score car_loop Timer matches 31 run playsound minecraft:block.anvil.step record @a 158 -41 35 1.25 2
execute if score car_loop Timer matches 32 run playsound minecraft:block.anvil.step record @a 159 -41 35 1.25 2
execute if score car_loop Timer matches 33 run playsound minecraft:block.anvil.step record @a 160 -41 35 1.25 2
execute if score car_loop Timer matches 34 run playsound minecraft:block.anvil.step record @a 161 -41 35 1.25 2
execute if score car_loop Timer matches 35 run playsound minecraft:block.anvil.step record @a 162 -41 35 1.25 2
execute if score car_loop Timer matches 36 run playsound minecraft:block.anvil.step record @a 163 -41 35 1.25 2
execute if score car_loop Timer matches 37 run playsound minecraft:block.anvil.step record @a 164 -41 35 1.25 2
execute if score car_loop Timer matches 38 run playsound minecraft:block.anvil.step record @a 165 -41 35 1.25 2
execute if score car_loop Timer matches 39 run playsound minecraft:block.anvil.step record @a 166 -41 35 1.25 2
execute if score car_loop Timer matches 40 run playsound minecraft:block.anvil.step record @a 167 -41 35 1.25 2
execute if score car_loop Timer matches 41 run playsound minecraft:block.anvil.step record @a 168 -41 35 1.25 2
execute if score car_loop Timer matches 42 run playsound minecraft:block.anvil.step record @a 169 -41 35 1.25 2
execute if score car_loop Timer matches 43 run playsound minecraft:block.anvil.step record @a 170 -41 35 1.25 2
execute if score car_loop Timer matches 44 run playsound minecraft:block.anvil.step record @a 171 -41 35 1.25 2
execute if score car_loop Timer matches 45 run playsound minecraft:block.anvil.step record @a 172 -41 35 1.25 2
execute if score car_loop Timer matches 46 run playsound minecraft:block.anvil.step record @a 173 -41 35 1.25 2
execute if score car_loop Timer matches 47 run playsound minecraft:block.anvil.step record @a 174 -41 35 1.25 2
execute if score car_loop Timer matches 48 run playsound minecraft:block.anvil.step record @a 175 -41 35 1.25 2























##Blue and Red Car Animation
execute if score car_loop Timer matches 2 run clone 163 -60 33 160 -53 27 152 -19 35
execute if score car_loop Timer matches 3 run clone 163 -60 33 160 -53 27 152 -20 35
execute if score car_loop Timer matches 4 run clone 163 -60 33 160 -53 27 152 -21 35
execute if score car_loop Timer matches 5 run fill 152 -21 41 152 -15 35 air
execute if score car_loop Timer matches 5 run clone 163 -60 33 160 -53 27 153 -22 35
execute if score car_loop Timer matches 6 run clone 163 -60 33 160 -53 27 153 -23 35
execute if score car_loop Timer matches 7 run clone 163 -60 33 160 -53 27 153 -24 35
execute if score car_loop Timer matches 8 run clone 163 -60 33 160 -53 27 153 -25 35
execute if score car_loop Timer matches 9 run clone 163 -60 33 160 -53 27 153 -26 35
execute if score car_loop Timer matches 10 run fill 153 -26 41 153 -20 35 air
execute if score car_loop Timer matches 11 run clone 163 -60 33 160 -53 27 154 -27 35
execute if score car_loop Timer matches 12 run clone 163 -60 33 160 -53 27 154 -28 35
execute if score car_loop Timer matches 13 run clone 163 -60 33 160 -53 27 154 -29 35
execute if score car_loop Timer matches 14 run clone 163 -60 33 160 -53 27 154 -30 35
execute if score car_loop Timer matches 15 run fill 154 -30 41 154 -24 35 air
execute if score car_loop Timer matches 15 run clone 163 -60 33 160 -53 27 155 -31 35
execute if score car_loop Timer matches 16 run clone 163 -60 33 160 -53 27 155 -32 35
execute if score car_loop Timer matches 17 run clone 163 -60 33 160 -53 27 155 -33 35
execute if score car_loop Timer matches 18 run fill 155 -33 41 155 -27 35 air
execute if score car_loop Timer matches 19 run clone 163 -60 33 160 -53 27 156 -34 35
execute if score car_loop Timer matches 20 run clone 163 -60 33 160 -53 27 156 -35 35
execute if score car_loop Timer matches 21 run clone 163 -60 33 160 -53 27 156 -36 35
execute if score car_loop Timer matches 22 run clone 163 -60 33 160 -53 27 156 -37 35
execute if score car_loop Timer matches 23 run clone 163 -60 33 160 -53 27 156 -38 35
execute if score car_loop Timer matches 23 run fill 156 -39 41 158 -39 35 minecraft:structure_void
execute if score car_loop Timer matches 24 run clone 163 -60 33 160 -53 27 156 -39 35
execute if score car_loop Timer matches 24 run fill 156 -40 41 158 -40 35 minecraft:structure_void
execute if score car_loop Timer matches 24 run fill 156 -41 41 158 -41 35 minecraft:structure_void
execute if score car_loop Timer matches 25 run clone 163 -60 33 160 -53 27 156 -40 35
execute if score car_loop Timer matches 26 run clone 146 -58 41 142 -51 35 156 -41 35
execute if score car_loop Timer matches 27 run clone 157 -58 41 152 -53 35 156 -41 35
execute if score car_loop Timer matches 28 run clone 160 -56 35 166 -59 41 156 -41 35
execute if score car_loop Timer matches 29 run clone 159 -56 35 166 -59 41 156 -41 35

execute if score car_loop Timer matches 30 run clone 159 -56 35 166 -59 41 157 -41 35
execute if score car_loop Timer matches 31 run clone 159 -56 35 166 -59 41 158 -41 35
execute if score car_loop Timer matches 32 run clone 159 -56 35 166 -59 41 159 -41 35
execute if score car_loop Timer matches 33 run clone 159 -56 35 166 -59 41 160 -41 35
execute if score car_loop Timer matches 34 run clone 159 -56 35 166 -59 41 161 -41 35
execute if score car_loop Timer matches 35 run clone 159 -56 35 166 -59 41 162 -41 35
execute if score car_loop Timer matches 36 run clone 159 -56 35 166 -59 41 163 -41 35
execute if score car_loop Timer matches 37 run clone 159 -56 35 166 -59 41 164 -41 35
execute if score car_loop Timer matches 38 run clone 159 -56 35 166 -59 41 165 -41 35
execute if score car_loop Timer matches 39 run clone 159 -56 35 166 -59 41 166 -41 35
execute if score car_loop Timer matches 40 run clone 159 -56 35 166 -59 41 167 -41 35
execute if score car_loop Timer matches 41 run clone 159 -56 35 166 -59 41 168 -41 35
execute if score car_loop Timer matches 42 run clone 159 -56 35 166 -59 41 169 -41 35

execute if score car_loop Timer matches 43 run clone 165 -59 41 159 -56 35 170 -41 35
execute if score car_loop Timer matches 44 run clone 164 -59 41 159 -56 35 171 -41 35
execute if score car_loop Timer matches 45 run clone 163 -59 41 159 -56 35 172 -41 35
execute if score car_loop Timer matches 46 run clone 162 -59 41 159 -56 35 173 -41 35
execute if score car_loop Timer matches 47 run clone 161 -59 41 159 -56 35 174 -41 35
execute if score car_loop Timer matches 48 run clone 160 -59 41 159 -56 35 175 -41 35
execute if score car_loop Timer matches 49 run fill 176 -41 35 176 -39 41 air







##Explosion emiter
execute if score car_loop Timer matches 35 run particle explosion_emitter 172.24 -38.31 40.08 0 0 0 1 1 force
execute if score car_loop Timer matches 35 run playsound entity.generic.explode record @a 177.37 -40.00 40.31 3 1
execute if score car_loop Timer matches 35 run particle explosion_emitter 172.24 -38.31 36.08 0 0 0 1 1 force
execute if score car_loop Timer matches 35 run playsound entity.generic.explode record @a 177.02 -40.00 35.53 3 1

scoreboard players set trap_23 trap_activated 1