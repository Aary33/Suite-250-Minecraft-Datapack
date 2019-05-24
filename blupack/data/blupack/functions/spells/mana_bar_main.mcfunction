#Trigger on player enter/leave
execute as @a[scores={age=1}] run tag @a add UPDATE
execute as @a[scores={left_game=2}] run tag @a add UPDATE

#Reassign Bossbars
execute as @a[tag=UPDATE] run bossbar set blupack:mana01 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana02 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana03 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana04 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana05 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana06 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana07 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana08 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana09 players
execute as @a[tag=UPDATE] run bossbar set blupack:mana10 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown01 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown02 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown03 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown04 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown05 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown06 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown07 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown08 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown09 players
execute as @a[tag=UPDATE] run bossbar set blupack:cooldown10 players

execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana01 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown01 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 1
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown03 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana02 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 2
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana03 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown03 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 3
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana04 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown04 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 4
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana05 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown05 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 5
tag @a[tag=UPDATE,limit=1] remove 
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana06 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown06 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 6
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana07 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown07 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 7
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana08 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown08 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 8
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana09 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown09 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 9
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:mana10 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set blupack:cooldown10 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 10
tag @a[tag=UPDATE,limit=1] remove UPDATE

#Update mana
scoreboard players set @a[scores={mana=..-1}] mana 0
scoreboard players set @a[scores={cooldown=..-1}] cooldown 0
execute as @a[tag=!UPDATE,scores={mana_id=1}] store result bossbar blupack:mana01 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result bossbar blupack:mana02 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result bossbar blupack:mana03 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result bossbar blupack:mana04 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result bossbar blupack:mana05 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result bossbar blupack:mana06 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result bossbar blupack:mana07 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result bossbar blupack:mana08 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result bossbar blupack:mana09 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result bossbar blupack:mana10 value run scoreboard players get @s mana


execute as @a[tag=!UPDATE,scores={mana_id=1}] store result score @s max_mana run bossbar get blupack:mana01 max
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result score @s max_mana run bossbar get blupack:mana02 max
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result score @s max_mana run bossbar get blupack:mana03 max
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result score @s max_mana run bossbar get blupack:mana04 max
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result score @s max_mana run bossbar get blupack:mana05 max
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result score @s max_mana run bossbar get blupack:mana06 max
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result score @s max_mana run bossbar get blupack:mana07 max
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result score @s max_mana run bossbar get blupack:mana08 max
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result score @s max_mana run bossbar get blupack:mana09 max
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result score @s max_mana run bossbar get blupack:mana10 max

execute as @a[tag=!UPDATE,scores={mana_id=1}] store result bossbar blupack:cooldown01 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result bossbar blupack:cooldown02 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result bossbar blupack:cooldown03 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result bossbar blupack:cooldown04 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result bossbar blupack:cooldown05 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result bossbar blupack:cooldown06 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result bossbar blupack:cooldown07 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result bossbar blupack:cooldown08 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result bossbar blupack:cooldown09 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result bossbar blupack:cooldown10 value run scoreboard players get @s cooldown




#Show visibility
execute as @a[tag=!UPDATE,scores={mana_id=1},tag=SHOW_MANA] run bossbar set blupack:cooldown01 visible true
execute as @a[tag=!UPDATE,scores={mana_id=2},tag=SHOW_MANA] run bossbar set blupack:cooldown02 visible true
execute as @a[tag=!UPDATE,scores={mana_id=3},tag=SHOW_MANA] run bossbar set blupack:cooldown03 visible true
execute as @a[tag=!UPDATE,scores={mana_id=4},tag=SHOW_MANA] run bossbar set blupack:cooldown04 visible true
execute as @a[tag=!UPDATE,scores={mana_id=5},tag=SHOW_MANA] run bossbar set blupack:cooldown05 visible true
execute as @a[tag=!UPDATE,scores={mana_id=6},tag=SHOW_MANA] run bossbar set blupack:cooldown06 visible true
execute as @a[tag=!UPDATE,scores={mana_id=7},tag=SHOW_MANA] run bossbar set blupack:cooldown07 visible true
execute as @a[tag=!UPDATE,scores={mana_id=8},tag=SHOW_MANA] run bossbar set blupack:cooldown08 visible true
execute as @a[tag=!UPDATE,scores={mana_id=9},tag=SHOW_MANA] run bossbar set blupack:cooldown09 visible true
execute as @a[tag=!UPDATE,scores={mana_id=10},tag=SHOW_MANA] run bossbar set blupack:cooldown10 visible true

execute as @a[tag=!UPDATE,scores={mana_id=1},tag=!SHOW_MANA] run bossbar set blupack:cooldown01 visible false
execute as @a[tag=!UPDATE,scores={mana_id=2},tag=!SHOW_MANA] run bossbar set blupack:cooldown02 visible false
execute as @a[tag=!UPDATE,scores={mana_id=3},tag=!SHOW_MANA] run bossbar set blupack:cooldown03 visible false
execute as @a[tag=!UPDATE,scores={mana_id=4},tag=!SHOW_MANA] run bossbar set blupack:cooldown04 visible false
execute as @a[tag=!UPDATE,scores={mana_id=5},tag=!SHOW_MANA] run bossbar set blupack:cooldown05 visible false
execute as @a[tag=!UPDATE,scores={mana_id=6},tag=!SHOW_MANA] run bossbar set blupack:cooldown06 visible false
execute as @a[tag=!UPDATE,scores={mana_id=7},tag=!SHOW_MANA] run bossbar set blupack:cooldown07 visible false
execute as @a[tag=!UPDATE,scores={mana_id=8},tag=!SHOW_MANA] run bossbar set blupack:cooldown08 visible false
execute as @a[tag=!UPDATE,scores={mana_id=9},tag=!SHOW_MANA] run bossbar set blupack:cooldown09 visible false
execute as @a[tag=!UPDATE,scores={mana_id=10},tag=!SHOW_MANA] run bossbar set blupack:cooldown10 visible false
