execute on passengers run tag @s add current_passenger
data modify entity @s NoAI set from entity @e[tag=current_passenger,limit=1] Sitting
tag @e[tag=current_passenger] remove current_passenger
