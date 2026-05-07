##
 # 28_.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set loop_28 loop_trap 1 
scoreboard players add spike_logs_timer Timer 1

execute if score spike_logs_timer Timer matches 61.. run scoreboard players set loop_28 loop_trap 0
execute if score spike_logs_timer Timer matches 61.. run scoreboard players set spike_logs_timer Timer 0

execute if score spike_logs_timer Timer matches 1 run playsound entity.illusioner.prepare_mirror record @a 209 -40 4 0.5 2
execute if score spike_logs_timer Timer matches 1 run playsound entity.illusioner.prepare_mirror record @a 209 -40 6 0.5 2
execute if score spike_logs_timer Timer matches 1 run playsound entity.illusioner.prepare_mirror record @a 209 -40 8 0.5 2


execute if score spike_logs_timer Timer matches 1 run scoreboard players set SpikeLogs Timer 1 


execute if score spike_logs_timer Timer matches 35 run playsound entity.illusioner.cast_spell record @a 209 -40 4 0.5 2
execute if score spike_logs_timer Timer matches 45 run playsound entity.illusioner.cast_spell record @a 209 -40 6 0.5 2
execute if score spike_logs_timer Timer matches 55 run playsound entity.illusioner.cast_spell record @a 209 -40 8 0.5 2
execute if score spike_logs_timer Timer matches 60.. run scoreboard players set SpikeLogs Timer 0

scoreboard players set trap_28 trap_activated 1






