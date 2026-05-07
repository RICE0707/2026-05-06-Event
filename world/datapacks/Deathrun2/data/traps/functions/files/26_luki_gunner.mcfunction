##
 # 26_.mcfunction
 # 
 #
 # Created by .
##
# ##Enable Loop
scoreboard players set loop_26 loop_trap 1
scoreboard players add lukigun_loop Timer 1

execute if score lukigun_loop Timer matches 1 run playsound entity.illusioner.cast_spell record @a 177.47 -36.53 -1.06 2
execute if score lukigun_loop Timer matches 1 run playsound entity.illusioner.cast_spell record @a 191.00 -35.62 5.39 2
execute if score lukigun_loop Timer matches 1 run tag @p[tag=!recorder,x=177,y=-37,z=-2,limit=1,sort=nearest,tag=!runner,tag=!spectator] add luki_gunner

##Give player lukigun
execute as @a[tag=!recorder,tag=luki_gunner] at @s run item replace entity @s weapon.offhand with crossbow{HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:20s},{id:"minecraft:quick_charge",lvl:5s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
execute if score lukigun_loop Timer matches 1 run execute as @a[tag=!recorder,tag=luki_gunner] at @s run teleport @s ~ ~ ~ 90 30
execute as @a[tag=!recorder,tag=luki_gunner] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=rideable_turret,limit=1]
execute as @e[tag=!recorder,type=arrow] at @s run execute if entity @a[tag=!recorder,tag=luki_gunner,distance=..20] run tag @s add luki_gun_arrow

##Abort button behind the shooting zone
execute if block 191 -35 5 minecraft:polished_blackstone_button[face=wall,facing=west,powered=true] run scoreboard players set lukigun_loop Timer 240
execute if block 191 -35 5 minecraft:polished_blackstone_button[face=wall,facing=west,powered=true] run setblock 191 -35 5 minecraft:polished_blackstone_button[face=wall,facing=west,powered=false]


##When shooting time over, leave seat and teleport in front of next trap
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run ride @s dismount
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run clear @s crossbow
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run playsound entity.illusioner.mirror_move record @a ~ ~ ~ 2
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run teleport @s 195.5 -37 -1.8 0 30
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run particle cloud ~ ~0.2 ~ 0.25 0.25 0.25 0.125 20 normal
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run particle cloud 195.5 -36.5 -1.8 0.25 0.25 0.25 0.125 20 normal
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run playsound entity.illusioner.mirror_move record @a 195.5 -37 -1.8 2
execute if score lukigun_loop Timer matches 240.. run execute as @a[tag=!recorder,tag=luki_gunner] at @s run tag @s remove luki_gunner

##Break loop when done
execute if score lukigun_loop Timer matches 240.. run scoreboard players set loop_26 loop_trap 0
execute if score lukigun_loop Timer matches 240.. run scoreboard players set lukigun_loop Timer 0
scoreboard players set trap_26 trap_activated 1