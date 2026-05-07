##
 # 06_.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set trap_06 trap_activated 1
##Start Loop
scoreboard players set loop_06 loop_trap 1
scoreboard players add cross_light_timer Timer 1

##Check for player in the area if yes teleport them into jail
execute if score cross_light_timer Timer matches 1 run fill 136 -38 33 142 -38 43 minecraft:red_concrete replace minecraft:green_concrete
execute if score cross_light_timer Timer matches 1 run fill 133 -41 38 133 -39 40 air destroy
execute if score cross_light_timer Timer matches 1 run clone 130 -57 26 129 -53 31 132 -42 37
execute if score cross_light_timer Timer matches 1..60 as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ gilded_blackstone run tag @s add teleport_cell
execute if score cross_light_timer Timer matches 60 run fill 136 -38 33 142 -38 43 minecraft:green_concrete replace minecraft:red_concrete

##Teleport towards cell
execute as @a[tag=!recorder,tag=teleport_cell] at @s run teleport @s ^0.3 ^0.1 ^0.6 facing entity @e[tag=!recorder,tag=prison_cell,limit=1,sort=nearest]
execute as @a[tag=!recorder,tag=teleport_cell] at @s if entity @e[tag=!recorder,tag=prison_cell,distance=..0.75] run tag @s add prison_die
execute as @a[tag=!recorder,tag=teleport_cell] at @s if entity @e[tag=!recorder,tag=prison_cell,distance=..0.75] run tag @s remove teleport_cell

execute if score cross_light_timer Timer matches 100 run summon pillager 129.0 -40.44 38.0 {Rotation:[-35F,15F],Tags:["prisoner"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:5s},{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;12763842],FadeColors:[I;16777215]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;0],FadeColors:[I;10261909]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;16777215]}]}}}],Charged:1b}},{}]}
execute if score cross_light_timer Timer matches 100 run summon pillager 128.6 -40.44 39.3 {Rotation:[-85F,36F],Tags:["prisoner"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:5s},{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;12763842],FadeColors:[I;16777215]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;0],FadeColors:[I;10261909]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;16777215]}]}}}],Charged:1b}},{}]}
execute if score cross_light_timer Timer matches 100 run summon pillager 128.7 -40.44 40.8 {Rotation:[-125F,20F],Tags:["prisoner"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:5s},{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;12763842],FadeColors:[I;16777215]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;0],FadeColors:[I;10261909]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;16777215]}]}}}],Charged:1b}},{}]}
execute if score cross_light_timer Timer matches 100 run summon pillager 131.7 -41 41.5 {Rotation:[145F,5F],Tags:["prisoner"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:5s},{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;12763842],FadeColors:[I;16777215]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;0],FadeColors:[I;10261909]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;16777215]}]}}}],Charged:1b}},{}]}
execute if score cross_light_timer Timer matches 100 run summon pillager 128.3 -41 38.3 {Rotation:[-55F,14F],Tags:["prisoner"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:5s},{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;12763842],FadeColors:[I;16777215]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;0],FadeColors:[I;10261909]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;16777215]}]}}}],Charged:1b}},{}]}
execute if score cross_light_timer Timer matches 100 run execute as @e[tag=!recorder,tag=prisoner] at @s run particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5 normal
execute if score cross_light_timer Timer matches 100 run execute as @e[tag=!recorder,tag=prisoner] at @s run playsound entity.enderman.teleport record @a ~ ~ ~ 0.7 1

execute if score cross_light_timer Timer matches 130 run fill 133 -39 40 133 -41 38 minecraft:black_concrete
execute if score cross_light_timer Timer matches 130 run fill 133 -39 38 132 -41 38 minecraft:white_concrete



##Break loop when done and remove teleport_cell tag
execute if score cross_light_timer Timer matches 152.. run execute as @a[tag=!recorder,tag=prison_die] at @s run function traps:files/_player_die
execute if score cross_light_timer Timer matches 152.. run kill @e[tag=!recorder,tag=prisoner]
execute if score cross_light_timer Timer matches 152.. run summon fireball 128.68 -39.00 39.54 {ExplosionPower:0b,power:[-0.5,-0.1,0.0],Tags:["prisoner_fireball"]}
execute if score cross_light_timer Timer matches 152.. run tag @a[tag=!recorder,tag=teleport_cell] remove teleport_cell
execute if score cross_light_timer Timer matches 152.. run scoreboard players set loop_06 loop_trap 0
execute if score cross_light_timer Timer matches 152.. run scoreboard players set cross_light_timer Timer 0






