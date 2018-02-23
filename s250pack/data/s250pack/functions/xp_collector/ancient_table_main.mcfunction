#Test For Mana Flower Placement and Condition Testing
execute as @e[type=item,nbt={Item:{id:"minecraft:lilac",Count:1b,tag:{magic:1b}}},limit=1] at @s if entity @e[tag=xp_table,tag=locator,distance=0..2,scores={xp=200..}] if block ~ ~ ~ cauldron[level=0] unless entity @e[tag=ancient_table,tag=locator,distance=0..5] run scoreboard players set @s table 3
execute as @e[scores={table=3}] at @s at @e[tag=locator,tag=xp_table,distance=0..2,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1b,Marker:1b,Tags:["dummy","ancient_table","locator"],ArmorItems:[{id:"minecraft:player_head",Count:1b,tag:{Owner:[1l,1l]}},{},{},{}],DisabledSlots:2039583}
execute at @e[type=item,nbt={Item:{id:"minecraft:lilac",Count:1b,tag:{magic:1b}}},limit=1,scores={table=3}] align xyz run execute store result entity @e[tag=ancient_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[0] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:lilac",Count:1b,tag:{magic:1b}}},scores={table=3},limit=1,sort=nearest] Thrower.L 0.00000000001
execute at @e[type=item,nbt={Item:{id:"minecraft:lilac",Count:1b,tag:{magic:1b}}},limit=1,scores={table=3}] align xyz run execute store result entity @e[tag=ancient_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[1] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:lilac",Count:1b,tag:{magic:1b}}},scores={table=3},limit=1,sort=nearest] Thrower.M 0.00000000001
kill @e[scores={table=3}]
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] store result score @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] id_least run data get entity @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[0]
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] store result score @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] id_most run data get entity @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[1]
execute at @a if score @p id_least = @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_least if score @p id_most = @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_most run advancement grant @p until s250pack:magic/ancient_table_make

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run scoreboard players add @s recipe 0

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~3 ~2 ~ run tag @e[type=ender_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~-3 ~2 ~ run tag @e[type=ender_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~ ~2 ~3 run tag @e[type=ender_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~ ~2 ~-3 run tag @e[type=ender_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient

#Condition Testing
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~3 ~2 ~ if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~ ~2 ~3 if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~ ~2 ~-3 if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~-3 ~2 ~ if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if blocks ~-3 ~-1 ~-3 ~3 ~1 ~3 848 56 2513 masked run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if blocks ~-3 ~-1 ~-3 ~3 ~1 ~3 3 1 -6 masked run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~5 ~ glass run scoreboard players add @s condition_test 1
#Coords for Server: 3 1 -6
execute as @e[tag=locator,tag=ancient_table,scores={age=1,condition_test=..4}] at @s run summon item ~ ~0.5 ~ {Motion:[0.05,0.3,0.1],PickupDelay:10s,Item:{id:"minecraft:lilac",Count:1b,tag:{ench:[{id:0,lvl:1}],HideFlags:61,magic:1b,display:{Lore:["Placing loses its magical properties"],Name:"{\"text\":\"Mana Flower\",\"color\":\"light_purple\"}"}}}}
kill @e[tag=locator,tag=ancient_table,scores={age=1,condition_test=..4}]

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run kill @e[tag=locator,tag=xp_table,distance=0..1,limit=1,sort=nearest]
execute as @e[tag=locator,tag=ancient_table,scores={age=3}] at @s run execute as @e[tag=xp_table,tag=fill,limit=4,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_carpet}]}
execute as @e[tag=locator,tag=ancient_table,scores={age=3}] at @s run kill @e[tag=xp_table,tag=model,limit=4,sort=nearest]

#Creation: Particle Effects 
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~-0.15 ~0 ~-0.15 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~0.15 ~0 ~0.15 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~0.15 ~0.1 ~-0.15 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~-0.15 ~0.1 ~0.15 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~-0.25 ~0.2 ~-0.25 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~0.25 ~0.2 ~0.25 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~-0.25 ~0.2 ~0.25 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~0.25 ~0.2 ~-0.25 1 0 0.8 1 0
execute at @e[tag=locator,tag=ancient_table,scores={age=1..200}] positioned ~ ~ ~ run particle minecraft:ambient_entity_effect ~ ~0.1 ~ 1 0 0.8 1 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run kill @e[tag=xp_table,tag=fill,limit=4,sort=nearest]

#Creation: Blocks
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run effect give @a[distance=0..20] minecraft:mining_fatigue 5 3 true
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 10 .1
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run setblock ~ ~5 ~ glass destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian replace purpur_block
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 magma_block replace end_stone
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run setblock ~ ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=1,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=120}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=120}] positioned ~ ~ ~ run setblock ~ ~-1 ~-1 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=120}] positioned ~ ~ ~ run setblock ~1 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=120}] positioned ~ ~ ~ run setblock ~ ~-1 ~1 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=120}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~-2 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~ ~-1 ~-2 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~2 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~ ~-1 ~2 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~-3 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~ ~-1 ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~3 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~ ~-1 ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~-3 ~ ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~ ~ ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~3 ~ ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~ ~ ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~-3 ~1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~ ~1 ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~3 ~1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~ ~1 ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run setblock ~ ~ ~ minecraft:dropper[facing=up] destroy 
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run data merge block ~ ~ ~ {CustomName:"{\"text\":\"Ancient Imbruer\",\"color\":\"green\"}"}
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run particle minecraft:entity_effect ~ ~ ~ 0.8 0.5 0.8 1 50 force

#Creation: Ender Crystal Beam
tag @e[type=ender_crystal,scores={age=1}] add spawned

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.X int 1 run data get entity @s Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run data get entity @s Pos[1] -100
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Z int 1 run data get entity @s Pos[2]


execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.X int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200},limit=1,sort=nearest,distance=0..1] Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200},limit=1,sort=nearest,distance=0..1] Pos[2]

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result score @s y_pos run data get entity @s Pos[1]
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s run scoreboard players operation @s y_pos += #one integer
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run scoreboard players get @s y_pos

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] run data merge entity @s {ShowBottom:1b}

#Creation: Thunder FX
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run weather thunder
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 10 0.9
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run effect give @a[distance=0..100] minecraft:night_vision 2 0 true
execute as @e[tag=locator,tag=ancient_table,scores={age=202}] at @s run effect clear @a[distance=0..100] minecraft:night_vision
execute as @e[tag=locator,tag=ancient_table,scores={age=204}] at @s run effect give @a[distance=0..100] minecraft:night_vision 2 0 true
execute as @e[tag=locator,tag=ancient_table,scores={age=206}] at @s run effect clear @a[distance=0..100] minecraft:night_vision
execute as @e[tag=locator,tag=ancient_table,scores={age=208}] at @s run effect give @a[distance=0..100] minecraft:night_vision 2 0 true
execute as @e[tag=locator,tag=ancient_table,scores={age=210}] at @s run effect clear @a[distance=0..100] minecraft:night_vision

#Behavior: Idle
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=1..}] at @s run particle smoke ~ ~ ~ 0.5 0.3 0.5 0.01 10
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=1..}] at @s unless block ~ ~1 ~ lava[level=7] run setblock ~ ~1 ~ lava[level=7] replace
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=0}] at @s unless block ~ ~1 ~ water[level=7] run setblock ~ ~1 ~ water[level=7] replace
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~1 ~ fire run setblock ~ ~1 ~ fire replace
execute at @e[tag=locator,tag=ancient_table,scores={age=200..}] positioned ~ ~ ~ run particle minecraft:dust 1 0.9 1 20 ~ ~4.9 ~ 0.0 0.00 0.0 1 1 force
execute at @e[tag=locator,tag=ancient_table,scores={age=200..}] positioned ~ ~ ~ run particle minecraft:dust 1.0 0.5 1.0 4 ~ ~-0.3 ~ 0.4 0.00 0.4 1 5 force



# Test for Broken
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~ ~ dropper[facing=up] run scoreboard players set @s broken 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~5 ~ glass run scoreboard players set @s broken 1
execute as @e[tag=locator,tag=ancient_table,scores={age=201..}] at @s unless entity @s[scores={condition_test=5..}] run scoreboard players set @s broken 1
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run playsound minecraft:ambient.cave player @a ~ ~ ~ 5 .7
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.8 0.8 0.8 1 200 force
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @e[tag=model,tag=ancient_table,limit=1,sort=nearest,distance=0..3]
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run fill ~ ~ ~ ~ ~5 ~ air replace
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 obsidian replace bedrock
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5]
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @s
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s run scoreboard players set @s condition_test 0



#Behavior: Crafting Recipes
#--Fuel
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s positioned ~ ~1 ~ if entity @e[type=xp_bottle,distance=0..1] run tag @s add USED
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=0}] at @s run tag @s remove USED
scoreboard players add @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] animation 1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s run data merge block ~ ~ ~ {Lock:"Secret Passcode"}

#--Mob Crafter
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s run scoreboard players set @s recipe 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:experience_bottle",Count:1b,Slot:0b},{id:"minecraft:experience_bottle",Count:1b,Slot:1b},{id:"minecraft:experience_bottle",Count:1b,Slot:2b},{Count:1b,Slot:3b,tag:{element:"flame"}},{Count:1b,Slot:4b,tag:{scroll:"blank"}},{Count:1b,Slot:5b,tag:{element:"flame"}},{id:"minecraft:experience_bottle",Count:1b,Slot:6b},{id:"minecraft:experience_bottle",Count:1b,Slot:7b},{id:"minecraft:experience_bottle",Count:1b,Slot:8b}]} run scoreboard players set @s recipe 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:creeper_spawn_egg",Count:1b},{id:"minecraft:mob_spawner",Count:1b}]} run scoreboard players set @s recipe 2
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:zombie_spawn_egg",Count:1b},{id:"minecraft:mob_spawner",Count:1b}]} run scoreboard players set @s recipe 3
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:skeleton_spawn_egg",Count:1b},{id:"minecraft:mob_spawner",Count:1b}]} run scoreboard players set @s recipe 4
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:spider_spawn_egg",Count:1b},{id:"minecraft:mob_spawner",Count:1b}]} run scoreboard players set @s recipe 5


#Result: Crafting
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s run particle minecraft:dust 0 0 0 3 ~ ~0.5 ~ 0.1 0 0.1 0 3 normal
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1..}] at @s run particle minecraft:cloud ~ ~4.5 ~ 0 -0.3 0 1 0 normal
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1..,recipe=2}] at @s run tag @a[sort=nearest,limit=1,distance=0..5] add MADE_SPAWNER
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0 0.5 0 1 0 normal
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1}] at @s run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 5 0.1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 0.1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=10}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 0.3
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=20}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 0.5
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=30}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 0.7
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=40}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 0.9
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=50}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 1.1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=60}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 1.3
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=70}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 1.5
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=80}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 1.7
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=90}] at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 5 1.9
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 5 .1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run particle minecraft:totem_of_undying ~ ~4 ~ 1.2 1.2 1.2 0 100 normal

execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=2}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:mob_spawner",Count:1b,Slot:4b,tag:{display:{Name:"{\"text\":\"Creeper Spawner\"}"},BlockEntityTag:{SpawnCount:1,MaxNearbyEntities:6,SpawnRange:4,Delay:20,MinSpawnDelay:60,MaxSpawnDelay:120,RequiredPlayerRange:6,SpawnData:{id:"minecraft:creeper"}}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=3}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:mob_spawner",Count:1b,Slot:4b,tag:{display:{Name:"{\"text\":\"Zombie Spawner\"}"},BlockEntityTag:{SpawnCount:1,MaxNearbyEntities:6,SpawnRange:4,Delay:20,MinSpawnDelay:60,MaxSpawnDelay:120,RequiredPlayerRange:6,SpawnData:{id:"minecraft:zombie"}}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=4}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:mob_spawner",Count:1b,Slot:4b,tag:{display:{Name:"{\"text\":\"Skeleton Spawner\"}"},BlockEntityTag:{SpawnCount:1,MaxNearbyEntities:6,SpawnRange:4,Delay:20,MinSpawnDelay:60,MaxSpawnDelay:120,RequiredPlayerRange:6,SpawnData:{id:"minecraft:skeleton"}}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=5}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:mob_spawner",Count:1b,Slot:4b,tag:{display:{Name:"{\"text\":\"Spider Spawner\"}"},BlockEntityTag:{SpawnCount:1,MaxNearbyEntities:6,SpawnRange:4,Delay:20,MinSpawnDelay:60,MaxSpawnDelay:120,RequiredPlayerRange:6,SpawnData:{id:"minecraft:spider"}}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=1}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:filled_map",Count:1b,Slot:4b,tag:{map:101,display:{Name:"{\"text\":\"Ancient Scroll\",\"color\":\"gold\",\"bold\":\"true\"}",Lore:["Unleash the fury of one thousand suns","","Fire Knowledge Scroll", "Casting Power I"]},ench:[{id:0,lvl:1}],HideFlags:61,castPower:1b,scroll:"fire",hostileDrop:0b}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=1..}] at @s run scoreboard players set @s recipe 0

execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run tag @s add OUTPUT
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run tag @s remove USED
scoreboard players set @e[tag=locator,tag=ancient_table,scores={age=200..,animation=100}] animation 0

execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run particle minecraft:large_smoke ~ ~1 ~ 0 0.5 0 1 0 normal
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 5 1.9
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run advancement grant @a[tag=MADE_SPAWNER,distance=0..5] until s250pack:magic/spawner_craft
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run tag @a[tag=MADE_SPAWNER,distance=0..5] remove MADE_SPAWNER
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run tag @s remove OUTPUT