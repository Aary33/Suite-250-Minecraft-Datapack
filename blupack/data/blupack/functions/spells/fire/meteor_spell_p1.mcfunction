#Set Mana
scoreboard players remove @s mana 1
scoreboard players set @s cooldown -1
advancement grant @s until blupack:magic/spell_cast


#Summon Projectile and Velocity Vector
execute at @s positioned ^ ^ ^2 run summon fireball ~ ~ ~ {direction:[0.0,0.0,0.0],Motion:[0.0,0.0,0.0],ExplosionPower:1,Tags:["spell","meteor_proj","meteor","small","spawned"]}

execute as @s at @s store result score @s x_pos run data get entity @s Pos[0] 100000
execute as @s at @s store result score @s y_pos run data get entity @s Pos[1] 100000
execute as @s at @s store result score @s z_pos run data get entity @s Pos[2] 100000

execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result score @s x_pos run data get entity @s Pos[0] 100000
execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result score @s y_pos run data get entity @s Pos[1] 100000
execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result score @s z_pos run data get entity @s Pos[2] 100000

scoreboard players operation @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] x_pos -= @s x_pos
scoreboard players operation @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] y_pos -= @s y_pos
scoreboard players operation @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] z_pos -= @s z_pos

execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result entity @s direction[0] double 0.000007 run scoreboard players get @s x_pos
execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result entity @s direction[1] double 0.000007 run scoreboard players get @s y_pos
execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s store result entity @s direction[2] double 0.000007 run scoreboard players get @s z_pos

execute as @e[limit=1,distance=0..3,type=fireball,tag=spell,tag=meteor_proj,tag=meteor,tag=small,tag=spawned] at @s run tag @s remove spawned



advancement grant @s until blupack:magic/spell_cast

particle lava ~ ~1 ~ 0.5 0 0.5 0.01 10 normal