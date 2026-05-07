##
 # 27_.mcfunction
 # 
 #
 # Created by .
##
##Start loop
scoreboard players set loop_27 loop_trap 1 
scoreboard players add met_shower_timer Timer 1

##Break the loop after 5sec
execute if score met_shower_timer Timer matches 101.. run scoreboard players set loop_27 loop_trap 0
execute if score met_shower_timer Timer matches 101.. run scoreboard players set met_shower_timer Timer 0




##Start summoning fireballs with texture of netherite block and at the end an bigger explosion with an star texture
execute if score met_shower_timer Timer matches 1 run summon fireball 201 -5 10 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 7 run summon fireball 192 -5 5 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.1,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 14 run summon fireball 197 -5 0 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}

execute if score met_shower_timer Timer matches 26 run summon fireball 200 -5 5 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 30 run summon fireball 192 -5 2 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 40 run summon fireball 196 -5 1 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 56 run summon fireball 190 -5 9 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.1,-0.5,-0.1],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}

execute if score met_shower_timer Timer matches 67 run summon fireball 195 -5 9 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 78 run summon fireball 201 -5 3 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 85 run summon fireball 192 -5 2 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 94 run summon fireball 193 -5 9 {NoGravity:1b,Silent:1b,ExplosionPower:4b,power:[0.0,-0.5,0.0],Tags:["meteorite"],Item:{id:"minecraft:netherite_block",Count:1b}}
execute if score met_shower_timer Timer matches 50 run summon fireball 196 -5 5 {NoGravity:1b,Silent:1b,ExplosionPower:6b,power:[0.0,-0.03,0.0],Tags:["meteorite","big_one"],Item:{id:"minecraft:nether_star",Count:1b}}

scoreboard players set trap_27 trap_activated 1



















## 201 -41 10 R/D
## 191 -41 10 L/D
## 191 -41 0 L/U
## 201 -41 0 R/U
##


















