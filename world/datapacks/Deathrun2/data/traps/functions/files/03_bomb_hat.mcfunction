##
 # 03_bomb_hat.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set trap_03 trap_activated 1
##Start Loop
scoreboard players set loop_03 loop_trap 1
scoreboard players add backpack_explode_timer Timer 1
execute if score backpack_explode_timer Timer matches 400.. run scoreboard players set loop_03 loop_trap 0
execute if score backpack_explode_timer Timer matches 400.. run scoreboard players set backpack_explode_timer Timer 0

## When no player has bomb backpack, then give player tag to get one, and teleport bomb towards the target, when bomb near player, then give them has_bomb_hat. When given tag, kill self
execute if score backpack_explode_timer Timer matches 1 run playsound entity.witch.throw record @a 91.50 -40.00 23.50 2 1.3
execute if score backpack_explode_timer Timer matches 1 run scoreboard players reset @a bomb_backpack_damagefromplayer
execute if score backpack_explode_timer Timer matches 1 run execute if score PVP Settings matches 0 run team modify player friendlyFire true
execute if score backpack_explode_timer Timer matches 1..4 run execute as @e[tag=!recorder,tag=bomb_hat] at @s run teleport @s ^ ^0.4 ^0.6 facing entity @p[tag=!recorder,tag=runner,distance=..15]
execute if score backpack_explode_timer Timer matches 5..15 run execute as @e[tag=!recorder,tag=bomb_hat] at @s run teleport @s ^ ^0.25 ^0.6 facing entity @p[tag=!recorder,tag=runner,distance=..15]
execute if score backpack_explode_timer Timer matches 16..35 run execute as @e[tag=!recorder,tag=bomb_hat] at @s run teleport @s ^ ^0.1 ^0.6 facing entity @p[tag=!recorder,tag=runner,distance=..15]
execute if score backpack_explode_timer Timer matches 1..35 run execute as @e[tag=!recorder,tag=bomb_hat] at @s run particle witch ~ ~ ~ 0 0 0 0 1 normal
execute if score backpack_explode_timer Timer matches 35.. unless entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run playsound entity.witch.hurt record @a ~ ~ ~ 1.5
execute if score backpack_explode_timer Timer matches 35.. unless entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run particle cloud ~ ~ ~ 0 0 0 0.23 20 normal
execute if score backpack_explode_timer Timer matches 35.. unless entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run kill @s

##When player got the bomb hat, playsound and some particle effect and at the end kill the item display entity.
execute if score backpack_explode_timer Timer matches 1.. run execute unless entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run execute if entity @a[tag=!recorder,tag=runner,distance=..0.5,tag=!has_bomb_hat] run playsound entity.witch.celebrate record @a ~ ~ ~ 1.5
execute if score backpack_explode_timer Timer matches 1.. run execute unless entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run tag @p[tag=!recorder,limit=1,distance=..0.5,tag=runner] add has_bomb_hat
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @a[tag=!recorder,tag=has_bomb_hat,tag=!bomb_hat_text] at @s run playsound block.iron_door.close record @s
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @a[tag=!recorder,tag=has_bomb_hat,tag=!bomb_hat_text] at @s run title @a times 5 40 5
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @a[tag=!recorder,tag=has_bomb_hat,tag=!bomb_hat_text] at @s run title @s title {"translate":"traps.functions.files.03_bomb_hat.1","color":"red"}
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @a[tag=!recorder,tag=has_bomb_hat,tag=!bomb_hat_text] at @s run title @s subtitle {"translate":"traps.functions.files.03_bomb_hat.2","color":"yellow","italic": true}
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @a[tag=!recorder,tag=has_bomb_hat,tag=!bomb_hat_text] at @s run tag @s add bomb_hat_text
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.23 20 normal
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run playsound block.iron_door.close record @a ~ ~ ~ 1.5 0.75 
execute if score backpack_explode_timer Timer matches 1.. run execute if entity @a[tag=!recorder,tag=has_bomb_hat] run execute as @e[tag=!recorder,tag=bomb_hat] at @s run kill @s

##The switch player system, when player with has_bomb_hat tag punches another player, the nearest player gets the hat.
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run tag @s add change_bomb_hat
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run tag @s remove bomb_hat_text
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run title @s title {"translate":"wtem.empty"}
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run title @s subtitle {"translate":"wtem.empty"}
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run tag @s remove has_bomb_hat
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=change_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run tag @p[tag=!recorder,tag=!has_bomb_hat,tag=runner,tag=!change_bomb_hat] add has_bomb_hat
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=change_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run clear @s pufferfish{CustomModelData:201}
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=change_bomb_hat] at @s run execute if score @s bomb_backpack_damagefromplayer matches 2.. run scoreboard players reset @a bomb_backpack_damagefromplayer
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=change_bomb_hat] at @s run tag @s remove change_bomb_hat

##Make small smoke particle above players head that have bomb hat

## When there is player with bomb backpack then start countdown
execute if score backpack_explode_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run item replace entity @s armor.head with pufferfish{HideFlags:255,CustomModelData:201,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02500000149011612,Operation:0,UUID:[I;-1409669619,1141788538,-1943182183,-261607151],Slot:"head"}]} 1

##Play ticking sound, when pvp was in settings disabled, then enable it and at the end disable again
execute if score backpack_explode_timer Timer matches 20 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 40 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 60 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 80 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 100 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 120 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 140 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 160 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 180 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 200 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 220 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.5
execute if score backpack_explode_timer Timer matches 230 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 240 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 250 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 260 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 270 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 280 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 290 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 300 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 310 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 320 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 330 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 340 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.7
execute if score backpack_explode_timer Timer matches 345 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 350 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 355 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 360 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 365 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 370 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 375 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 380 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 385 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 390 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 395 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound ui.button.click record @a ~ ~ ~ 0.5 1.9
execute if score backpack_explode_timer Timer matches 399 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run playsound entity.generic.explode record @a ~ ~ ~ 4 1
execute if score backpack_explode_timer Timer matches 399 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run particle explosion_emitter ~ ~0.5 ~ 0.3 0.3 0.3 0 5 normal
execute if score backpack_explode_timer Timer matches 399 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run clear @s pufferfish{CustomModelData:201}
execute if score backpack_explode_timer Timer matches 399 run execute as @a[tag=!recorder,tag=has_bomb_hat] at @s run function traps:files/_player_explode
execute if score backpack_explode_timer Timer matches 399 run execute if score PVP Settings matches 0 run team modify player friendlyFire false
execute if score backpack_explode_timer Timer matches 399 run tag @a remove has_bomb_hat
execute if score backpack_explode_timer Timer matches 399 run tag @a remove bomb_hat_text

##Give small buffs to the person wearing bomb_hat


