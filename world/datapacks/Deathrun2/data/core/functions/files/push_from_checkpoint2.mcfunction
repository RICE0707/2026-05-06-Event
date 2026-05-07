##
 # push_from_checkpoint.mcfunction
 # 
 #
 # Created by Lifeely.
##

## In this function when player spawns inside checkpoint it gets pushed from it towards the map
execute as @s[tag=!spawning] at @s run summon armor_stand 158 -14 109 {Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,PersistenceRequired:1b,Motion:[0.0,0.333,-1.5],Tags:["spawning_armor_stand"]}
execute as @s[tag=!spawning] at @s run summon armor_stand 158.5 -41 93.5 {Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,PersistenceRequired:1b,Tags:["spawning_armor_stand"]}
execute as @s[tag=!spawning] at @s run tag @s add spawning
particle minecraft:happy_villager 158.50 -12.49 111.00 1 1 0 0 5 normal
effect clear @s
scoreboard players set @s anti_speedrun 100
effect give @s resistance 5 200 true
effect give @s regeneration 3 200 true
clear @s pufferfish{CustomModelData:201}
gamemode adventure @s
scoreboard players reset @s lived_for
effect clear @s levitation
function core:files/_player_reset_tags

setblock 1195 -29 -53 minecraft:warped_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"translate":"wtem.empty"}','{"color":"white","clickEvent":{"action":"run_command","value":"function pointshop:_pointshop_as_player_select1"},"translate":"core.functions.files.push_from_checkpoint2.6"}','{"translate":"wtem.empty"}','{"translate":"core.functions.files.push_from_checkpoint2.8","color":"gold","bold":true}']},is_waxed:1b}
