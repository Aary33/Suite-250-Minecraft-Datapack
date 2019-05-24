#Test For Mana Flower Placement and Condition Testing
execute as @e[type=item,nbt={Item:{id:"minecraft:peony",Count:1b,tag:{magic:1b}}},limit=1] at @s if entity @e[tag=xp_table,tag=locator,distance=0..2,scores={xp=200..}] if block ~ ~ ~ cauldron[level=0] unless entity @e[tag=ancient_table,tag=locator,distance=0..5] run scoreboard players set @s table 3
execute as @e[scores={table=3}] at @s at @e[tag=locator,tag=xp_table,distance=0..2,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1b,Marker:1b,Tags:["dummy","ancient_table","locator"],ArmorItems:[{id:"minecraft:player_head",Count:1b,tag:{Owner:[1l,1l]}},{},{},{}],DisabledSlots:2039583}
execute at @e[type=item,nbt={Item:{id:"minecraft:peony",Count:1b,tag:{magic:1b}}},limit=1,scores={table=3}] align xyz run execute store result entity @e[tag=ancient_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[0] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:peony",Count:1b,tag:{magic:1b}}},scores={table=3},limit=1,sort=nearest] Thrower.L 0.00000000001
execute at @e[type=item,nbt={Item:{id:"minecraft:peony",Count:1b,tag:{magic:1b}}},limit=1,scores={table=3}] align xyz run execute store result entity @e[tag=ancient_table,tag=locator,limit=1,sort=nearest] ArmorItems[0].tag.Owner[1] long 1 run data get entity @e[type=item,nbt={Item:{id:"minecraft:peony",Count:1b,tag:{magic:1b}}},scores={table=3},limit=1,sort=nearest] Thrower.M 0.00000000001
kill @e[scores={table=3}]
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] store result score @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] id_least run data get entity @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[0]
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] store result score @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] id_most run data get entity @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1}] ArmorItems[0].tag.Owner[1]

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run scoreboard players add @s recipe 0

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~3 ~2 ~ run tag @e[type=end_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~-3 ~2 ~ run tag @e[type=end_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~ ~2 ~3 run tag @e[type=end_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s positioned ~ ~2 ~-3 run tag @e[type=end_crystal,limit=1,sort=nearest,distance=0..1] add formation_ancient

#Condition Testing: Crystals
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~3 ~2 ~ if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~ ~2 ~3 if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~ ~2 ~-3 if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s positioned ~-3 ~2 ~ if entity @e[tag=formation_ancient,limit=1,sort=nearest,distance=0..1] run scoreboard players add @s condition_test 1

#Condition Testing: Obsidian Formation 
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-1 ~-1 ~-1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~1 ~-1 ~1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-1 ~-1 ~1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~1 ~-1 ~-1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-1 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~-1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~1 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~1 minecraft:obsidian run scoreboard players add @s condition_test 1

#Condition Testing: Obsidian Formation Pillar I
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-3 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-3 ~ ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-3 ~1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-2 ~-1 ~-1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-2 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-2 ~-1 ~1 minecraft:obsidian run scoreboard players add @s condition_test 1

#Condition Testing: Obsidian Formation Pillar II
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~3 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~3 ~ ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~3 ~1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~2 ~-1 ~-1 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~2 ~-1 ~ minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~2 ~-1 ~1 minecraft:obsidian run scoreboard players add @s condition_test 1

#Condition Testing: Obsidian Formation Pillar III
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~-3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~ ~-3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~1 ~-3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-1 ~-1 ~-2 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~-2 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~1 ~-1 ~-2 minecraft:obsidian run scoreboard players add @s condition_test 1

#Condition Testing: Obsidian Formation Pillar IV
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~ ~3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~1 ~3 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~-1 ~-1 ~2 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~ ~-1 ~2 minecraft:obsidian run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=1..200}] at @s if block ~1 ~-1 ~2 minecraft:obsidian run scoreboard players add @s condition_test 1

#Condition Testing: After Creation 
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~5 ~ minecraft:glass run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~ minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-1 ~-1 ~-1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~1 ~-1 ~1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-1 ~-1 ~1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~1 ~-1 ~-1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-1 ~-1 ~ minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~-1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~1 ~-1 ~ minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~1 minecraft:magma_block run scoreboard players add @s condition_test 1

#Condition Testing: After Creation Pillar I
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-3 ~-1 ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-3 ~ ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-3 ~1 ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-2 ~-1 ~-1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-2 ~-1 ~ minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-2 ~-1 ~1 minecraft:magma_block run scoreboard players add @s condition_test 1

#Condition Testing: After Creation Pillar II
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~3 ~-1 ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~3 ~ ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~3 ~1 ~ minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~2 ~-1 ~-1 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~2 ~-1 ~ minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~2 ~-1 ~1 minecraft:magma_block run scoreboard players add @s condition_test 1

#Condition Testing: After Creation Pillar III
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~-3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~-3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~1 ~-3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-1 ~-1 ~-2 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~-2 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~1 ~-1 ~-2 minecraft:magma_block run scoreboard players add @s condition_test 1

#Condition Testing: After Creation Pillar IV
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~1 ~3 minecraft:bedrock run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~-1 ~-1 ~2 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~-1 ~2 minecraft:magma_block run scoreboard players add @s condition_test 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~1 ~-1 ~2 minecraft:magma_block run scoreboard players add @s condition_test 1



#Illegal Formation
execute as @e[tag=locator,tag=ancient_table,scores={age=1,condition_test=..36}] at @s run summon item ~ ~0.5 ~ {Motion:[0.05,0.3,0.1],Item:{id:"minecraft:peony",Count:1b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,magic:1b,display:{Lore:["{\"text\":\"It doesn't taste very good.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Emits an aura that regenerates mana over time\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Mana Flower\",\"color\":\"light_purple\",\"italic\":\"false\"}"}}}}
kill @e[tag=locator,tag=ancient_table,scores={age=1,condition_test=..36}]

#If Formation Success
execute at @a if score @p id_least = @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_least if score @p id_most = @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={age=1},distance=0..4] id_most run advancement grant @p until blupack:magic/xp_collect/ancient_table_make
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
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] positioned ~ ~ ~ run setblock ~ ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=1,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=60}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~-1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=70}] positioned ~ ~ ~ run setblock ~1 ~-1 ~1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=80}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=90}] positioned ~ ~ ~ run setblock ~1 ~-1 ~-1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=100}] positioned ~ ~ ~ run setblock ~-2 ~-1 ~-1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=110}] positioned ~ ~ ~ run setblock ~2 ~-1 ~1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=120}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~-2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=130}] positioned ~ ~ ~ run setblock ~1 ~-1 ~2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=140}] positioned ~ ~ ~ run setblock ~1 ~-1 ~-2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=150}] positioned ~ ~ ~ run setblock ~-2 ~-1 ~1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=150}] positioned ~ ~ ~ run setblock ~2 ~-1 ~-1 magma_block destroy

execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~-1 ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~ ~-1 ~-1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~1 ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] positioned ~ ~ ~ run setblock ~ ~-1 ~1 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=160}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=170}] positioned ~ ~ ~ run setblock ~-2 ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=170}] positioned ~ ~ ~ run setblock ~ ~-1 ~-2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=170}] positioned ~ ~ ~ run setblock ~2 ~-1 ~ magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=170}] positioned ~ ~ ~ run setblock ~ ~-1 ~2 magma_block destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=170}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~-3 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~ ~-1 ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~3 ~-1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] positioned ~ ~ ~ run setblock ~ ~-1 ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=180}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=190}] positioned ~ ~ ~ run setblock ~-3 ~ ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=190}] positioned ~ ~ ~ run setblock ~ ~ ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=190}] positioned ~ ~ ~ run setblock ~3 ~ ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=190}] positioned ~ ~ ~ run setblock ~ ~ ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=190}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~-3 ~1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~ ~1 ~-3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~3 ~1 ~ bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run setblock ~ ~1 ~3 bedrock destroy
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},limit=4,sort=nearest]

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run scoreboard players set @s animation 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run setblock ~ ~ ~ minecraft:dropper[facing=up] destroy 
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run data merge block ~ ~ ~ {CustomName:"{\"text\":\"Ancient Imbruer\",\"color\":\"light_purple\",\"bold\":\"true\"}"}
execute at @e[tag=locator,tag=ancient_table,scores={age=200}] positioned ~ ~ ~ run particle minecraft:entity_effect ~ ~ ~ 0.8 0.5 0.8 1 50 force

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run summon armor_stand ~ ~-0.2 ~ {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1b,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{}],Fire:9999s,Tags:["dummy","ancient_table","model","a"]}
#/summon minecraft:armor_stand ~ ~1 ~ {ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"9f83c167-caf5-4297-a36e-913118b6d970",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjIzNmVmYzNiM2NlNDQyMDJmYTg4ZmMyN2FiMzAxNzZmZDM5NTM0ZDM1OGI1ZWEwZGZiOWM2MzQyNDE0ZSJ9fX0="}]}}}}]}

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=locator,tag=ancient_table,scores={age=220}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] run data merge entity @s {Invulnerable:0b}

#Ender Crystal Beam | Down
tag @e[type=end_crystal,scores={age=1}] add spawned

execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.X int 1 run data get entity @s Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run data get entity @s Pos[1] -100
execute as @e[tag=locator,tag=ancient_table,scores={age=1}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Z int 1 run data get entity @s Pos[2]

execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=1..}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.X int 1 run data get entity @s Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=1..}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run data get entity @s Pos[1] -100
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=1..}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Z int 1 run data get entity @s Pos[2]

#Ender Crystal Beam | Center
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] run data merge entity @s {ShowBottom:1b}

execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.X int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200},limit=1,sort=nearest,distance=0..1] Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200},limit=1,sort=nearest,distance=0..1] Pos[2]
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result score @s y_pos run data get entity @s Pos[1]
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s run scoreboard players operation @s y_pos += #one integer
execute as @e[tag=locator,tag=ancient_table,scores={age=200}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run scoreboard players get @s y_pos

execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.X int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0},limit=1,sort=nearest,distance=0..1] Pos[0]
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0},limit=1,sort=nearest,distance=0..1] Pos[2]
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result score @s y_pos run data get entity @s Pos[1]
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s run scoreboard players operation @s y_pos += #one integer
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0,animation=0}] at @s run execute as @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5] at @s store result entity @s BeamTarget.Y int 1 run scoreboard players get @s y_pos


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
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~1 ~ fire run setblock ~ ~1 ~ fire replace
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~ fire run setblock ~-3 ~2 ~ fire replace
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~ fire run setblock ~ ~2 ~-3 fire replace
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~ fire run setblock ~3 ~2 ~ fire replace
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~ fire run setblock ~ ~2 ~3 fire replace
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~-3 ~2 ~ air run setblock ~-3 ~2 ~ air replace
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~-3 air run setblock ~ ~2 ~-3 air replace
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~3 ~2 ~ air run setblock ~3 ~2 ~ air replace
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~2 ~3 air run setblock ~ ~2 ~3 air replace
execute at @e[tag=locator,tag=ancient_table,scores={age=200..}] positioned ~ ~ ~ run particle minecraft:dust 1 0.9 1 20 ~ ~4.9 ~ 0.0 0.00 0.0 1 1 force
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=1..}] at @s run particle minecraft:dust 0 0 0 3 ~ ~0.5 ~ 0.1 0 0.1 0 3 normal
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0}] positioned ~ ~ ~ run particle minecraft:dust 1.0 0.6 0.3 5 ~ ~-0.1 ~ 0.4 0.00 0.4 1 5 force
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=0}] positioned ~ ~ ~ run particle minecraft:dust 1.0 0.6 0.3 3 ~ ~-0.4 ~ 0.9 0.00 0.9 1 8 normal
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=0}] positioned ~ ~ ~ run particle minecraft:dust 1.0 0.9 0.4 5 ~ ~-0.1 ~ 0.4 0.00 0.4 1 5 force
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=0}] positioned ~ ~ ~ run particle minecraft:dust 1.0 0.9 0.4 3 ~ ~-0.4 ~ 0.9 0.00 0.9 1 8 normal
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=1..}] positioned ~ ~ ~ run particle minecraft:dust 1.0 1.0 1.0 6 ~ ~0.1 ~ 0.4 0.00 0.4 1 3 force
execute at @e[tag=locator,tag=ancient_table,scores={age=200..,recipe=1..,animation=1..}] positioned ~ ~ ~ run particle minecraft:dust 1.0 1.0 1.0 3 ~ ~-0.4 ~ 1 0.00 1 1 1 normal



# Test for Broken
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~ ~ dropper[facing=up] run scoreboard players set @s broken 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s unless block ~ ~5 ~ glass run scoreboard players set @s broken 1
execute as @e[tag=locator,tag=ancient_table,scores={age=201..}] at @s unless entity @s[scores={condition_test=38..}] run scoreboard players set @s broken 1

execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run playsound minecraft:ambient.cave player @a ~ ~ ~ 5 .7
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.8 0.8 0.8 1 200 force
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @e[tag=model,tag=ancient_table,limit=1,sort=nearest,distance=0..3]
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run fill ~ ~ ~ ~ ~5 ~ air replace
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 obsidian replace bedrock
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 obsidian replace magma_block
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @e[tag=formation_ancient,limit=4,sort=nearest,distance=0..5]
execute as @e[tag=locator,tag=ancient_table,limit=1,sort=nearest,scores={broken=1}] at @s run kill @s
execute as @e[tag=locator,tag=ancient_table,scores={age=1..}] at @s run scoreboard players set @s condition_test 0



#Behavior: Crafting Recipes
#--Fuel
execute as @e[tag=!USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s positioned ~ ~1 ~ if entity @e[type=experience_bottle,distance=0..1] run tag @s add USED
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,recipe=0}] at @s run tag @s remove USED
scoreboard players add @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] animation 1
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..}] at @s run data merge block ~ ~ ~ {Lock:"Secret Passcode"}

#--Mob Crafter
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s run scoreboard players set @s recipe 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s run scoreboard players set @s filled_slots 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:0b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:1b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:2b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:3b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:4b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:5b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:6b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:7b}]} run scoreboard players add @s filled_slots 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{Slot:8b}]} run scoreboard players add @s filled_slots 1


#Freeform Recipes
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=1..}] at @s run scoreboard players set @s recipe 0
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:creeper_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 1
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:zombie_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 2
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:skeleton_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 3
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:spider_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 4
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:cave_spider_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 5
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:blaze_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 6
execute as @e[tag=locator,tag=ancient_table,scores={age=200..,filled_slots=2}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:silverfish_spawn_egg",Count:1b},{id:"minecraft:spawner",Count:1b}]} run scoreboard players set @s recipe 7

#Non-Freeform Recipes
execute as @e[tag=locator,tag=ancient_table,scores={age=200..}] at @s if block ~ ~ ~ dropper{Items:[{id:"minecraft:experience_bottle",Count:1b,Slot:0b},{id:"minecraft:experience_bottle",Count:1b,Slot:1b},{id:"minecraft:experience_bottle",Count:1b,Slot:2b},{Count:1b,Slot:3b,tag:{element:"flame"}},{Count:1b,Slot:4b,tag:{scroll:"blank"}},{Count:1b,Slot:5b,tag:{element:"flame"}},{id:"minecraft:experience_bottle",Count:1b,Slot:6b},{id:"minecraft:experience_bottle",Count:1b,Slot:7b},{id:"minecraft:experience_bottle",Count:1b,Slot:8b}]} run scoreboard players set @s recipe 8


#Result: Crafting Animation
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1}] at @s run execute as @e[tag=model,tag=ancient_table,limit=1,sort=nearest] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1b,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"9f83c167-caf5-4297-a36e-913118b6d970",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjIzNmVmYzNiM2NlNDQyMDJmYTg4ZmMyN2FiMzAxNzZmZDM5NTM0ZDM1OGI1ZWEwZGZiOWM2MzQyNDE0ZSJ9fX0="}]}}}}],Fire:9999s,Tags:["dummy","ancient_table","model","a"]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1..}] at @s run particle minecraft:cloud ~ ~4.5 ~ 0 -0.3 0 1 0 normal
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=1..}] at @s run execute as @e[tag=model,tag=ancient_table,limit=1,sort=nearest] at @s run teleport @s ~ ~ ~ ~5 ~
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
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run execute as @e[tag=model,tag=ancient_table,limit=1,sort=nearest] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]},Small:0,DisabledSlots:2039583,Marker:1b,Invisible:1b,NoGravity:1,NoBasePlate:1b,ArmorItems:[{},{},{},{}],Fire:9999s,Tags:["dummy","ancient_table","model","a"]}


#Result: Output, Spawners
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=1}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"You wouldn't want this near your house.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Creepers\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Creeper Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:creeper"},Weight:1}],SpawnData:{id:"minecraft:creeper"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=2}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"Smells awful.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Zombies\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Zombie Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:zombie"},Weight:1}],SpawnData:{id:"minecraft:zombie"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=3}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"A wolf's dream come true.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Skeletons\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Skeleton Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:skeleton"},Weight:1}],SpawnData:{id:"minecraft:skeleton"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=4}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"Slurp.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Spiders\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Spider Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:spider"},Weight:1}],SpawnData:{id:"minecraft:spider"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=5}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"Prefers to spawn indoors, deep underground.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Cave Spiders\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Cave Spider Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:cave_spider"},Weight:1}],SpawnData:{id:"minecraft:cave_spider"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=6}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"Hot, handle with care.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Blazes\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Blaze Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:blaze"},Weight:1}],SpawnData:{id:"minecraft:blaze"},Delay:-1s}}}]}
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=7}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:spawner",Count:1b,Slot:4b,tag:{Enchantments:[{id:0,lvl:0}],HideFlags:61,display:{Lore:["{\"text\":\"Don't let the silverbugs bite.\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"Spawns Silverfish\",\"color\":\"blue\",\"italic\":\"false\"}"],Name:"{\"text\":\"Silverfish Spawner\",\"color\":\"light_green\",\"italic\":\"false\"}"},BlockEntityTag:{SpawnPotentials:[{Entity:{id:"minecraft:silverfish"},Weight:1}],SpawnData:{id:"minecraft:silverfish"},Delay:-1s}}}]}

#Result: Output, Spells
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100,recipe=8}] at @s run data merge block ~ ~ ~ {Lock:"",Items:[{id:"minecraft:filled_map",Count:1b,Slot:4b,tag:{map:101,display:{Name:"{\"text\":\"Ancient Scroll\",\"color\":\"gold\",\"bold\":\"true\"}",Lore:["Unleash the fury of one thousand suns","","Fire Knowledge Scroll", "Casting Power I"]},ench:[{id:0,lvl:1}],HideFlags:61,castPower:1b,scroll:"fire",hostileDrop:0b}}]}



#Result: Complete
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run tag @s add OUTPUT
execute as @e[tag=USED,tag=locator,tag=ancient_table,scores={age=200..,animation=100}] at @s run tag @s remove USED
scoreboard players set @e[tag=locator,tag=ancient_table,scores={age=200..,animation=100}] animation 0

execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run particle minecraft:large_smoke ~ ~1 ~ 0 0.5 0 1 0 normal
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run particle minecraft:cloud ~ ~1 ~ 0.5 0.0 0.5 0.4 100 normal
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 5 1.9
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run advancement grant @a[tag=MADE_SPAWNER,distance=0..5] until blupack:magic/xp_collect/spawner_craft
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run tag @a[tag=MADE_SPAWNER,distance=0..5] remove MADE_SPAWNER
execute as @e[tag=locator,tag=!USED,tag=ancient_table,scores={age=200..},tag=OUTPUT] at @s if block ~ ~ ~ dropper{Items:[]} run tag @s remove OUTPUT