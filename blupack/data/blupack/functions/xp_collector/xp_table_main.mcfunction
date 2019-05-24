#Create Station
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1] run execute if entity @e[type=experience_orb,distance=0..2] if block ~ ~ ~ cauldron[level=0] align xyz unless entity @e[tag=xp_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 1
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1,scores={table=1}] run kill @e[type=experience_orb,distance=0..2]
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1,scores={table=1}] align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:1b,Tags:["dummy","xp_table","locator"],ArmorItems:[{id:"minecraft:player_head",Count:1b,tag:{Owner:[1l,1l]}},{},{},{}],DisabledSlots:2039583}
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1,scores={table=1}] align xyz run setblock ~ ~ ~ cauldron[level=0] replace
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1,scores={table=1}] align xyz run execute store result entity @e[tag=xp_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[0] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},scores={table=1},limit=1,sort=nearest] Thrower.L 0.00000000001
execute at @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1,scores={table=1}] align xyz run execute store result entity @e[tag=xp_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[1] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},scores={table=1},limit=1,sort=nearest] Thrower.M 0.00000000001
kill @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},scores={table=1}]
execute at @e[tag=locator,tag=xp_table,scores={age=1}] store result score @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] id_least run data get entity @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[0]
execute at @e[tag=locator,tag=xp_table,scores={age=1}] store result score @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] id_most run data get entity @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[1]
execute at @a[advancements={blupack:magic/xp_collect/xp_collect=false}] if score @p id_least = @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_least if score @p id_most = @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_most run playsound minecraft:ui.toast.challenge_complete player @p ~ ~ ~ 1 1.5
execute at @a if score @p id_least = @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_least if score @p id_most = @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_most run advancement grant @p until blupack:magic/xp_collect/xp_collect

scoreboard players add @e[tag=locator,tag=xp_table,scores={age=1}] xp 0
scoreboard players add @e[tag=locator,tag=xp_table,scores={age=1}] animation 0
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run particle minecraft:large_smoke ~ ~ ~ 0.5 0 0.5 0.2 200
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 0.2 10
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 .6
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~-0.5 ~-1.70 ~-0.5 run summon armor_stand ~0.821406 ~.57062 ~0.5 {Pose:{Head:[0f,90f,0f]},Small:1,DisabledSlots:2039583,Marker:1b,Invisible:1b,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:glass_bottle}],Fire:9999s,Tags:["dummy","xp_table","model","a"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~-0.5 ~-1.70 ~-0.5 run summon armor_stand ~0.5 ~.57062 ~0.181406 {Small:1,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:glass_bottle}],Fire:9999s,Tags:["dummy","xp_table","model","b"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~-0.5 ~-1.70 ~-0.5 run summon armor_stand ~0.181406 ~.57062 ~0.5 {Pose:{Head:[0f,-90f,0f]},Small:1,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:glass_bottle}],Fire:9999s,Tags:["dummy","xp_table","model","c"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~-0.5 ~-1.70 ~-0.5 run summon armor_stand ~0.5 ~.57062 ~1.201406 {Small:1,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:glass_bottle}],Fire:9999s,Tags:["dummy","xp_table","model","d"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~ ~ ~ run summon armor_stand ~ ~-1.68 ~ {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:lime_carpet}],Fire:9999s,Tags:["dummy","xp_table","a","fill"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~ ~ ~ run summon armor_stand ~ ~-1.68 ~ {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:lime_carpet}],Fire:9999s,Tags:["dummy","xp_table","b","fill"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~ ~ ~ run summon armor_stand ~ ~-1.68 ~ {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:lime_carpet}],Fire:9999s,Tags:["dummy","xp_table","c","fill"]}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={age=1}] run execute positioned ~ ~ ~ run summon armor_stand ~ ~-1.68 ~ {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{Count:1,id:lime_carpet}],Fire:9999s,Tags:["dummy","xp_table","d","fill"]}

#Behavior: Track
execute as @a run execute store result score @s xp run data get entity @s XpTotal
execute at @e[type=experience_orb] run execute store result score @e[type=experience_orb,limit=1,sort=nearest] xp run data get entity @e[type=experience_orb,limit=1,sort=nearest] Value
execute at @e[tag=locator,tag=xp_table,scores={xp=1..200}] positioned ~-0.5 ~-0.5 ~-0.5 run execute at @e[type=player,dx=0,dy=0,dz=0] run effect give @p minecraft:poison 1 10 true
execute at @e[tag=locator,tag=xp_table,scores={xp=..199}] positioned ~-0.5 ~-0.5 ~-0.5 run execute at @e[type=player,dx=0,dy=0,dz=0,scores={xp=1..}] run experience add @p -1 points
execute at @e[tag=locator,tag=xp_table,scores={xp=..199}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=player,dx=0,dy=0,dz=0,limit=1,sort=nearest,scores={xp=1..}] run scoreboard players add @e[tag=locator,tag=xp_table,limit=1,sort=nearest] xp 1
execute at @e[tag=locator,tag=xp_table,scores={xp=..199}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=player,dx=0,dy=0,dz=0,limit=1,sort=nearest,scores={xp=1..}] run particle minecraft:happy_villager ~0.5 ~0.2 ~0.5 0.3 0.5 0.3 1 1

#Behavior: XP Orb Attraction | Get Vector
execute as @e[tag=locator,tag=xp_table,scores={xp=..199,age=1}] at @s store result score @s x_pos run data get entity @s Pos[0] 100000
execute as @e[tag=locator,tag=xp_table,scores={xp=..199,age=1}] at @s positioned ~ ~1 ~ store result score @s y_pos run data get entity @s Pos[1] 100000
execute as @e[tag=locator,tag=xp_table,scores={xp=..199,age=1}] at @s store result score @s z_pos run data get entity @s Pos[2] 100000

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned] at @s store result score @s x_pos run data get entity @s Pos[0] 100000
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned] at @s store result score @s y_pos run data get entity @s Pos[1] 100000
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned] at @s store result score @s z_pos run data get entity @s Pos[2] 100000

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] y_pos -= @s y_pos

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] x_pos -= @s x_pos
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] y_pos -= @s y_pos
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] z_pos -= @s z_pos

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] x_pos *= #-one integer
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] y_pos *= #-one integer
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run scoreboard players operation @e[distance=0..5,type=experience_orb,tag=!motioned] z_pos *= #-one integer

#Behavior: XP Orb Attraction | Set Motion
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] at @s store result entity @s Motion[0] double 0.000009 run scoreboard players get @s x_pos
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] at @s store result entity @s Motion[1] double 0.00009 run scoreboard players get @s y_pos
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s as @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] at @s store result entity @s Motion[2] double 0.000009 run scoreboard players get @s z_pos

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] add motioned
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] add motioned
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=!motioned,scores={age=20..}] add motioned

execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=motioned,nbt={Motion:[0.0,0.0,0.0]}] remove motioned
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=motioned,nbt={Motion:[0.0,0.0,0.0]}] remove motioned
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s run tag @e[distance=0..5,type=experience_orb,tag=motioned,nbt={Motion:[0.0,0.0,0.0]}] remove motioned

#Behavior: XP Orb Attraction | Collect XP Orb
execute as @e[type=experience_orb,scores={age=1}] at @s run scoreboard players add @s animation 0
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s positioned ~ ~-1 ~ as @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest] at @s run scoreboard players add @s animation 1
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s positioned ~ ~-1 ~ if entity @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest,scores={animation=10..}] run scoreboard players operation @s xp += @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest,scores={animation=10..}] xp
execute as @e[tag=locator,tag=xp_table,scores={xp=..199}] at @s positioned ~ ~-1 ~ if entity @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest,scores={animation=10..}] run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 1 1
execute at @e[tag=locator,tag=xp_table,scores={xp=..199}] positioned ~ ~-1 ~ if entity @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest,scores={animation=10..}] run kill @e[type=experience_orb,distance=0..1.5,limit=1,sort=nearest,scores={animation=10..}]
execute as @e[tag=locator,tag=xp_table] at @s run execute unless block ~ ~ ~ cauldron[level=0] run scoreboard players set @s broken 1

#Behavior: Cosmetic
execute at @e[tag=model] run data merge entity @e[tag=model,limit=1,sort=nearest] {Fire:9999}
execute at @e[tag=locator,tag=xp_table,scores={xp=0}] run particle minecraft:smoke ~0 ~0 ~0 0 0.1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=1..}] run particle minecraft:ambient_entity_effect ~-0.15 ~0 ~-0.15 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=1..}] run particle minecraft:ambient_entity_effect ~0.15 ~0 ~0.15 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=100..}] run particle minecraft:ambient_entity_effect ~0.15 ~0.1 ~-0.15 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=100..}] run particle minecraft:ambient_entity_effect ~-0.15 ~0.1 ~0.15 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=150..}] run particle minecraft:ambient_entity_effect ~-0.25 ~0.2 ~-0.25 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=150..}] run particle minecraft:ambient_entity_effect ~0.25 ~0.2 ~0.25 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=200..}] run particle minecraft:ambient_entity_effect ~-0.25 ~0.2 ~0.25 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=200..}] run particle minecraft:ambient_entity_effect ~0.25 ~0.2 ~-0.25 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=200..}] run particle minecraft:ambient_entity_effect ~ ~0.5 ~ 0 1 0 1 0
execute at @e[tag=locator,tag=xp_table,scores={xp=..199}] run particle minecraft:mycelium ~ ~-0.5 ~ 3 0.2 3 1 1


#Behavior: Animation
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=0}] animation 0
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=1..49}] animation 1
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=50..99}] animation 2
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=100..149}] animation 3
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=150..199}] animation 4
scoreboard players set @e[tag=locator,tag=xp_table,scores={xp=200..}] animation 5
execute at @e[tag=locator,tag=xp_table,scores={animation=0..1}] run data merge entity @e[tag=model,tag=xp_table,tag=a,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:glass_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=2..}] run data merge entity @e[tag=model,tag=xp_table,tag=a,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:experience_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=..2}] run data merge entity @e[tag=model,tag=xp_table,tag=b,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:glass_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=3..}] run data merge entity @e[tag=model,tag=xp_table,tag=b,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:experience_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=..3}] run data merge entity @e[tag=model,tag=xp_table,tag=c,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:glass_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=4..}] run data merge entity @e[tag=model,tag=xp_table,tag=c,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:experience_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=..4}] run data merge entity @e[tag=model,tag=xp_table,tag=d,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:glass_bottle}]}
execute at @e[tag=locator,tag=xp_table,scores={animation=5..}] run data merge entity @e[tag=model,tag=xp_table,tag=d,tag=model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{Count:1,id:experience_bottle}]}

execute at @e[tag=locator,tag=xp_table,scores={animation=0}] positioned ~ ~-2 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=0},limit=1,sort=nearest] positioned ~ ~-1.68 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=0}] positioned ~ ~-2 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=0},limit=1,sort=nearest] positioned ~ ~-1.68 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=0}] positioned ~ ~-2 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=0},limit=1,sort=nearest] positioned ~ ~-1.68 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=0}] positioned ~ ~-2 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=0},limit=1,sort=nearest] positioned ~ ~-1.68 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1

execute at @e[tag=locator,tag=xp_table,scores={animation=1}] positioned ~ ~-2 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=1},limit=1,sort=nearest] positioned ~ ~-1.65 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=1}] positioned ~ ~-2 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=1},limit=1,sort=nearest] positioned ~ ~-1.65 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=1}] positioned ~ ~-2 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=1},limit=1,sort=nearest] positioned ~ ~-1.65 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=1}] positioned ~ ~-2 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=1},limit=1,sort=nearest] positioned ~ ~-1.65 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1

execute at @e[tag=locator,tag=xp_table,scores={animation=2}] positioned ~ ~-2 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=2},limit=1,sort=nearest] positioned ~ ~-1.58 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=2}] positioned ~ ~-2 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=2},limit=1,sort=nearest] positioned ~ ~-1.58 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=2}] positioned ~ ~-2 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=2},limit=1,sort=nearest] positioned ~ ~-1.58 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=2}] positioned ~ ~-2 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=2},limit=1,sort=nearest] positioned ~ ~-1.58 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1

execute at @e[tag=locator,tag=xp_table,scores={animation=3}] positioned ~ ~-2 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=3},limit=1,sort=nearest] positioned ~ ~-1.38 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=3}] positioned ~ ~-2 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=3},limit=1,sort=nearest] positioned ~ ~-1.38 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=3}] positioned ~ ~-2 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=3},limit=1,sort=nearest] positioned ~ ~-1.38 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=3}] positioned ~ ~-2 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=3},limit=1,sort=nearest] positioned ~ ~-1.38 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1

execute at @e[tag=locator,tag=xp_table,scores={animation=4}] positioned ~ ~-1 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=4},limit=1,sort=nearest] positioned ~ ~-1.18 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=4}] positioned ~ ~-1 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=4},limit=1,sort=nearest] positioned ~ ~-1.18 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=4}] positioned ~ ~-1 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=4},limit=1,sort=nearest] positioned ~ ~-1.18 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=4}] positioned ~ ~-1 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=4},limit=1,sort=nearest] positioned ~ ~-1.18 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1

execute at @e[tag=locator,tag=xp_table,scores={animation=5}] positioned ~ ~-1 ~ run execute as @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=5},limit=1,sort=nearest] positioned ~ ~-0.98 ~ run teleport @e[tag=a,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.00 ~0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=5}] positioned ~ ~-1 ~ run execute as @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=5},limit=1,sort=nearest] positioned ~ ~-0.98 ~ run teleport @e[tag=b,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.00 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=5}] positioned ~ ~-1 ~ run execute as @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=5},limit=1,sort=nearest] positioned ~ ~-0.98 ~ run teleport @e[tag=c,tag=fill,tag=xp_table,limit=1,sort=nearest] ~0.1 ~0.01 ~-0.1
execute at @e[tag=locator,tag=xp_table,scores={animation=5}] positioned ~ ~-1 ~ run execute as @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest,distance=0..1] positioned as @e[tag=locator,tag=xp_table,scores={animation=5},limit=1,sort=nearest] positioned ~ ~-0.98 ~ run teleport @e[tag=d,tag=fill,tag=xp_table,limit=1,sort=nearest] ~-0.1 ~0.005 ~0.1


#Behavior: Click
execute as @e[tag=locator,tag=xp_table,scores={xp=..49}] at @s run data merge entity @s {DisabledSlots:2039583,Marker:1b}
execute as @e[tag=locator,tag=xp_table,scores={xp=50..}] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}},distance=0..2] run data merge entity @s {DisabledSlots:1973790,Marker:0b}
execute as @e[tag=locator,tag=xp_table,scores={xp=50..},nbt={HandItems:[{Count:1b},{}]}] at @s run scoreboard players set @s click 1
execute as @e[tag=locator,tag=xp_table,scores={click=1},nbt={HandItems:[{id:"minecraft:glass_bottle",Count:1b},{}]}] at @s run scoreboard players set @s click 2
execute as @e[tag=locator,tag=xp_table,scores={click=2}] at @s run scoreboard players remove @s xp 50
execute at @e[tag=locator,tag=xp_table,scores={click=2}] run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 .7
execute at @e[tag=locator,tag=xp_table,scores={click=2}] run summon item ~ ~ ~ {Motion:[-0.05,0.4,0.1],PickupDelay:10s,Item:{id:"minecraft:experience_bottle",Count:1b}}
execute as @e[tag=locator,tag=xp_table,scores={click=2}] at @s run data merge entity @s {HandItems:[{},{}]}
execute at @e[tag=locator,tag=xp_table,scores={click=1}] run setblock ~ ~ ~ air destroy
execute at @e[tag=locator,tag=xp_table,scores={click=1}] run tellraw @a[distance=0..2] ["",{"text":"The item... ","color":"gray"},{"text":"vanished","italic":true,"color":"gray"},{"text":".","color":"gray"}]
execute as @e[tag=locator,tag=xp_table,scores={click=1..}] at @s run scoreboard players set @s click 0

#Destroy
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1,xp=1..}] run summon area_effect_cloud ~ ~-0.4 ~ {Particle:mobSpell,ReapplicationDelay:20,Radius:2f,RadiusPerTick:-0.05f,RadiusOnUse:-0.5f,Duration:100,DurationOnUse:0.0f,WaitTime:5,Color:2857986,Effects:[{Id:19,Amplifier:1,Duration:80}],Potion:"minecraft:poison"}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run summon item ~ ~-0.4 ~ {Motion:[0.0,0.2,0.0],Item:{id:"minecraft:hopper",Count:1b}}
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1,xp=1..}] run playsound minecraft:ambient.cave block @a ~ ~ ~ 1 1
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run particle minecraft:smoke ~ ~0 ~ 0.18 0 0.18 0.2 100
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=fill,tag=xp_table,tag=a,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=fill,tag=xp_table,tag=b,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=fill,tag=xp_table,tag=c,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=fill,tag=xp_table,tag=d,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=model,tag=xp_table,tag=a,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=model,tag=xp_table,tag=b,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=model,tag=xp_table,tag=c,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=model,tag=xp_table,tag=d,limit=1,sort=nearest]
execute at @e[tag=locator,tag=xp_table,limit=1,sort=nearest,scores={broken=1}] run kill @e[tag=locator,tag=xp_table,limit=1,sort=nearest]