#Trigger on player enter/leave
execute as @a[scores={age=1}] run tag @a add UPDATE
execute as @a[scores={left_game=2}] run tag @a add UPDATE

#Reassign Bossbars
execute as @a[tag=UPDATE] run bossbar set s250pack:mana01 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana02 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana03 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana04 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana05 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana06 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana07 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana08 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana09 players
execute as @a[tag=UPDATE] run bossbar set s250pack:mana10 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown01 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown02 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown03 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown04 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown05 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown06 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown07 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown08 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown09 players
execute as @a[tag=UPDATE] run bossbar set s250pack:cooldown10 players

execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana01 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown01 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 1
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown03 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana02 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 2
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana03 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown03 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 3
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana04 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown04 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 4
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana05 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown05 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 5
tag @a[tag=UPDATE,limit=1] remove 
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana06 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown06 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 6
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana07 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown07 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 7
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana08 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown08 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 8
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana09 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown09 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 9
tag @a[tag=UPDATE,limit=1] remove UPDATE
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:mana10 players @s
execute as @a[tag=UPDATE,limit=1] run bossbar set s250pack:cooldown10 players @s
execute as @a[tag=UPDATE,limit=1] run scoreboard players set @s mana_id 10
tag @a[tag=UPDATE,limit=1] remove UPDATE

#Update mana
scoreboard players set @a[scores={mana=..-1}] mana 0
scoreboard players set @a[scores={cooldown=..-1}] cooldown 0
execute as @a[tag=!UPDATE,scores={mana_id=1}] store result bossbar s250pack:mana01 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result bossbar s250pack:mana02 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result bossbar s250pack:mana03 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result bossbar s250pack:mana04 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result bossbar s250pack:mana05 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result bossbar s250pack:mana06 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result bossbar s250pack:mana07 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result bossbar s250pack:mana08 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result bossbar s250pack:mana09 value run scoreboard players get @s mana
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result bossbar s250pack:mana10 value run scoreboard players get @s mana


execute as @a[tag=!UPDATE,scores={mana_id=1}] store result score @s max_mana run bossbar get s250pack:mana01 max
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result score @s max_mana run bossbar get s250pack:mana02 max
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result score @s max_mana run bossbar get s250pack:mana03 max
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result score @s max_mana run bossbar get s250pack:mana04 max
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result score @s max_mana run bossbar get s250pack:mana05 max
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result score @s max_mana run bossbar get s250pack:mana06 max
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result score @s max_mana run bossbar get s250pack:mana07 max
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result score @s max_mana run bossbar get s250pack:mana08 max
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result score @s max_mana run bossbar get s250pack:mana09 max
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result score @s max_mana run bossbar get s250pack:mana10 max

execute as @a[tag=!UPDATE,scores={mana_id=1}] store result bossbar s250pack:cooldown01 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=2}] store result bossbar s250pack:cooldown02 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=3}] store result bossbar s250pack:cooldown03 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=4}] store result bossbar s250pack:cooldown04 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=5}] store result bossbar s250pack:cooldown05 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=6}] store result bossbar s250pack:cooldown06 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=7}] store result bossbar s250pack:cooldown07 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=8}] store result bossbar s250pack:cooldown08 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=9}] store result bossbar s250pack:cooldown09 value run scoreboard players get @s cooldown
execute as @a[tag=!UPDATE,scores={mana_id=10}] store result bossbar s250pack:cooldown10 value run scoreboard players get @s cooldown




#Show visibility
execute as @a[tag=!UPDATE,scores={mana_id=1},tag=SHOW_MANA] run bossbar set s250pack:cooldown01 visible true
execute as @a[tag=!UPDATE,scores={mana_id=2},tag=SHOW_MANA] run bossbar set s250pack:cooldown02 visible true
execute as @a[tag=!UPDATE,scores={mana_id=3},tag=SHOW_MANA] run bossbar set s250pack:cooldown03 visible true
execute as @a[tag=!UPDATE,scores={mana_id=4},tag=SHOW_MANA] run bossbar set s250pack:cooldown04 visible true
execute as @a[tag=!UPDATE,scores={mana_id=5},tag=SHOW_MANA] run bossbar set s250pack:cooldown05 visible true
execute as @a[tag=!UPDATE,scores={mana_id=6},tag=SHOW_MANA] run bossbar set s250pack:cooldown06 visible true
execute as @a[tag=!UPDATE,scores={mana_id=7},tag=SHOW_MANA] run bossbar set s250pack:cooldown07 visible true
execute as @a[tag=!UPDATE,scores={mana_id=8},tag=SHOW_MANA] run bossbar set s250pack:cooldown08 visible true
execute as @a[tag=!UPDATE,scores={mana_id=9},tag=SHOW_MANA] run bossbar set s250pack:cooldown09 visible true
execute as @a[tag=!UPDATE,scores={mana_id=10},tag=SHOW_MANA] run bossbar set s250pack:cooldown10 visible true

execute as @a[tag=!UPDATE,scores={mana_id=1},tag=!SHOW_MANA] run bossbar set s250pack:cooldown01 visible false
execute as @a[tag=!UPDATE,scores={mana_id=2},tag=!SHOW_MANA] run bossbar set s250pack:cooldown02 visible false
execute as @a[tag=!UPDATE,scores={mana_id=3},tag=!SHOW_MANA] run bossbar set s250pack:cooldown03 visible false
execute as @a[tag=!UPDATE,scores={mana_id=4},tag=!SHOW_MANA] run bossbar set s250pack:cooldown04 visible false
execute as @a[tag=!UPDATE,scores={mana_id=5},tag=!SHOW_MANA] run bossbar set s250pack:cooldown05 visible false
execute as @a[tag=!UPDATE,scores={mana_id=6},tag=!SHOW_MANA] run bossbar set s250pack:cooldown06 visible false
execute as @a[tag=!UPDATE,scores={mana_id=7},tag=!SHOW_MANA] run bossbar set s250pack:cooldown07 visible false
execute as @a[tag=!UPDATE,scores={mana_id=8},tag=!SHOW_MANA] run bossbar set s250pack:cooldown08 visible false
execute as @a[tag=!UPDATE,scores={mana_id=9},tag=!SHOW_MANA] run bossbar set s250pack:cooldown09 visible false
execute as @a[tag=!UPDATE,scores={mana_id=10},tag=!SHOW_MANA] run bossbar set s250pack:cooldown10 visible false
