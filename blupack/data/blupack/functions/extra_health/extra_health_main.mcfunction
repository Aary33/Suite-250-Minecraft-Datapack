#Add to current heart containers
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches ..8 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run scoreboard players add @e[limit=1,sort=nearest] extraHearts 2

#Add boost
#execute at @e run execute unless score @e[limit=1,sort=nearest] extraHearts matches 0 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect clear @e[limit=1,sort=nearest] minecraft:health_boost
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches 2 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 0 true
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches 4 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 1 true
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches 6 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 2 true
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches 8 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 3 true
#execute at @e run execute if score @e[limit=1,sort=nearest] extraHearts matches 10 run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 4 true



#Reset counter
#execute at @e run execute if score @e[limit=1,sort=nearest] eatGApple matches 1 run scoreboard players set @e[limit=1,sort=nearest] eatGApple 0

#On death reset
execute at @e[scores={respawn=1,extra_hearts=1}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 0 true
execute at @e[scores={respawn=1,extra_hearts=2}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 0 true
execute at @e[scores={respawn=1,extra_hearts=3}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 1 true
execute at @e[scores={respawn=1,extra_hearts=4}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 1 true
execute at @e[scores={respawn=1,extra_hearts=5}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 2 true
execute at @e[scores={respawn=1,extra_hearts=6}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 2 true
execute at @e[scores={respawn=1,extra_hearts=7}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 3 true
execute at @e[scores={respawn=1,extra_hearts=8}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 3 true
execute at @e[scores={respawn=1,extra_hearts=9}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 4 true
execute at @e[scores={respawn=1,extra_hearts=10}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 4 true
execute at @e[scores={respawn=1,extra_hearts=11}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 5 true
execute at @e[scores={respawn=1,extra_hearts=12}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 5 true
execute at @e[scores={respawn=1,extra_hearts=13}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 6 true
execute at @e[scores={respawn=1,extra_hearts=14}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 6 true
execute at @e[scores={respawn=1,extra_hearts=15}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 7 true
execute at @e[scores={respawn=1,extra_hearts=16}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 7 true
execute at @e[scores={respawn=1,extra_hearts=17}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 8 true
execute at @e[scores={respawn=1,extra_hearts=18}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 8 true
execute at @e[scores={respawn=1,extra_hearts=19}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 9 true
execute at @e[scores={respawn=1,extra_hearts=20}] run effect give @e[limit=1,sort=nearest] minecraft:health_boost 999999 9 true