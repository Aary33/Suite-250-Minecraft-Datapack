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