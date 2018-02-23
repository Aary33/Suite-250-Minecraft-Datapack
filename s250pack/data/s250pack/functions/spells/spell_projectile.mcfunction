#Common Casting Spells
scoreboard players add @e age 1
execute at @a run execute if score @p cast matches 1 if score @e[type=armor_stand,tag=spell,sort=nearest,limit=1] age matches 1.. run teleport @e[tag=spell,sort=nearest,limit=1] @p
execute at @a run execute if score @p cast matches 1 if score @e[type=armor_stand,tag=spell,sort=nearest,limit=1] age matches 1.. run teleport @e[tag=spell,sort=nearest,limit=1] ^ ^0.7 ^1
execute at @a run execute if score @p cast matches 1.. run scoreboard players set @p cast 0

#General Spell Behavior Handling
execute at @e[tag=spell] run execute if score @e[tag=spell,limit=1,sort=nearest] age matches 300.. run kill @e[tag=spell,limit=1,sort=nearest]
execute at @e[tag=spell] positioned ~ ~1 ~ run execute unless block ~ ~ ~ air run scoreboard players set @e[tag=spell,limit=1,sort=nearest] collide 1
execute at @e[tag=spell] positioned ~ ~1 ~ run execute if score @e[tag=spell,limit=1,sort=nearest] age matches 3.. run execute if entity @e[distance=..2,tag=!spell,tag=!dummy,type=!item] run scoreboard players set @e[tag=spell,limit=1,sort=nearest] collide 2

#Ice Spell