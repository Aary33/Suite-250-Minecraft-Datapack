#ID
execute at @e[scores={age=1},tag=!dummy] store result score @e[scores={age=1},tag=!dummy,limit=1,sort=nearest] id_least run data get entity @e[scores={age=1},tag=!dummy,limit=1,sort=nearest] UUIDLeast 0.00000000001
execute at @e[scores={age=1},tag=!dummy] store result score @e[scores={age=1},tag=!dummy,limit=1,sort=nearest] id_most run data get entity @e[scores={age=1},tag=!dummy,limit=1,sort=nearest] UUIDMost 0.00000000001

#Death/Leave
scoreboard players set @a[scores={death_trigger=3}] death_trigger 0
scoreboard players add @a[scores={death_trigger=1..}] death_trigger 1
scoreboard players set @a[scores={left_game=3}] left_game 0
scoreboard players add @a[scores={left_game=1..}] left_game 1

#Age
scoreboard players add @e age 1

#Functions

#Spells
function blupack:spells/spell_main
function blupack:spells/mana_bar_main

#Death Penalty
function blupack:death_penalty/half_xp_main

#Plant Evolution
function blupack:plant_evolution/plant_evolve_main

#XP Collector
function blupack:xp_collector/xp_table_main

#Ancient Imbruer
function blupack:xp_collector/ancient_table_main

#Mobs
function blupack:mobs/snekion_behavior_main

#Bosses
function blupack:bosses/snek/snek_main

#Custom Silk Touch
function blupack:custom_silk_touch/silk_touch_main

#Tree Capitator
function blupack:tree_capitator/tree_capitator_main

#Enter Message
function blupack:enter_message


