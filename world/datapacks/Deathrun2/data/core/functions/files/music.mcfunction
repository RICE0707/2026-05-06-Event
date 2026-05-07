##
 # lobby_music.mcfunction
 # 
 #
 # Created by .
##
##Select Music
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] run scoreboard players set music_timer Music 0
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] run scoreboard players add select_music Music 1

##When button pressed change music, also reset the music timer so it will start from the beginning
execute if score select_music Music matches 6.. run scoreboard players set select_music Music 1
execute if score select_music Music matches ..0 run scoreboard players set select_music Music 1
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] run stopsound @a ambient

##When track selected make title action bar to everyone what has been chousen
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] if score select_music Music matches 1 run title @a actionbar [{"translate":"core.functions.files.music.1","bold": true,"color": "#ffffff"},{"translate":"core.functions.files.music.2","color":"#43f7df","bold": false}]
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] if score select_music Music matches 2 run title @a actionbar [{"translate":"core.functions.files.music.3","bold": true,"color": "#ffffff"},{"translate":"core.functions.files.music.4","color":"#52514f","bold": false}]
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] if score select_music Music matches 3 run title @a actionbar [{"translate":"core.functions.files.music.5","bold": true,"color": "#ffffff"},{"translate":"core.functions.files.music.6","color":"#f5bc36","bold": false}]
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] if score select_music Music matches 4 run title @a actionbar ["",{"translate":"core.functions.files.music.7","bold":true,"color":"white"},{"translate":"core.functions.files.music.8","color":"#FF0C53"},{"translate":"core.functions.files.music.9","color":"#631EA1"},{"translate":"core.functions.files.music.10","color":"#42A6FF"}]
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] if score select_music Music matches 5 run title @a actionbar {"translate":"core.functions.files.music.11","bold": false,"color": "#ff192d"}

##Chouse track
execute if score music_timer Music matches 1 if score select_music Music matches 1 run playsound minecraft:music_disc.otherside ambient @a 1202.50 -24.5 -59.50 6
execute if score music_timer Music matches 1 if score select_music Music matches 1 run playsound minecraft:music_disc.otherside ambient @a 1216.47 -22.00 -34.53 6
execute if score music_timer Music matches 1 if score select_music Music matches 1 run playsound minecraft:music_disc.otherside ambient @a 1195.50 -22.00 -31.53 6

execute if score music_timer Music matches 1 if score select_music Music matches 2 run playsound minecraft:music_disc.stal ambient @a 1202.50 -24.5 -59.50 6
execute if score music_timer Music matches 1 if score select_music Music matches 2 run playsound minecraft:music_disc.stal ambient @a 1216.47 -22.00 -34.53 6
execute if score music_timer Music matches 1 if score select_music Music matches 2 run playsound minecraft:music_disc.stal ambient @a 1195.50 -22.00 -31.53 6

execute if score music_timer Music matches 1 if score select_music Music matches 3 run playsound minecraft:music_disc.pigstep ambient @a 1202.50 -24.5 -59.50 6
execute if score music_timer Music matches 1 if score select_music Music matches 3 run playsound minecraft:music_disc.pigstep ambient @a 1216.47 -22.00 -34.53 6
execute if score music_timer Music matches 1 if score select_music Music matches 3 run playsound minecraft:music_disc.pigstep ambient @a 1195.50 -22.00 -31.53 6

execute if score music_timer Music matches 1 if score select_music Music matches 4 run playsound minecraft:music_disc.ward ambient @a 1202.50 -24.5 -59.50 6
execute if score music_timer Music matches 1 if score select_music Music matches 4 run playsound minecraft:music_disc.ward ambient @a 1216.47 -22.00 -34.53 6
execute if score music_timer Music matches 1 if score select_music Music matches 4 run playsound minecraft:music_disc.ward ambient @a 1195.50 -22.00 -31.53 6

##When music selected to disabled, then count to 66 (For the smooth transition between actionbar in lobby_startup) and then stop
execute unless score select_music Music matches 5 run scoreboard players add music_timer Music 1
execute if score select_music Music matches 5 unless score music_timer Music matches 66.. run scoreboard players add music_timer Music 1

##Keep the music looping
execute if score music_timer Music matches 3800.. run scoreboard players set music_timer Music 0
execute if score music_timer Music matches 3800.. run stopsound @a ambient

##Particles for the sound
execute unless score select_music Music matches 5 run particle note 1202.50 -24.5 -59.50 0.4 0.5 0.4 1 1 normal 
execute unless score select_music Music matches 5 run particle note 1216.47 -22.00 -34.53 0.4 0.5 0.4 1 1 normal 
execute unless score select_music Music matches 5 run particle note 1195.50 -22.00 -31.53 0.4 0.5 0.4 1 1 normal 


##Reset the button
execute if block 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=true] run setblock 1202 -26 -60 minecraft:oak_button[face=ceiling,facing=north,powered=false]







