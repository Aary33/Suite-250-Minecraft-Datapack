#Lose Levels
execute as @a[scores={death_trigger=2}] store result score @s half_xp run data get entity @s XpLevel 0.5 
execute as @a[scores={half_xp=1..}] run experience add @s -1 levels 
execute as @a[scores={half_xp=1}] run experience add @s -1 points
execute as @a[scores={half_xp=1..}] run scoreboard players remove @s half_xp 1
tellraw @a[scores={death_trigger=2}] ["",{"text":"Half your experience just... ","color":"dark_green"},{"text":"vanished.","italic":true,"color":"gray"}]