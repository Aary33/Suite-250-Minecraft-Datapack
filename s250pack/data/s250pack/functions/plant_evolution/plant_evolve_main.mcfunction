#Create Evolution
execute at @e[type=item,nbt={Item:{id:"minecraft:oak_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:birch_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:spruce_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:jungle_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves",Count:1b}},limit=1] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ dead_bush align xyz unless entity @e[tag=plant_table,tag=locator,dx=0,dy=1,dz=0,limit=1,sort=nearest] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,limit=1,scores={table=2}] align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:1b,Tags:["dummy","plant_table","locator"],ArmorItems:[{id:"minecraft:player_head",Count:1b,tag:{Owner:[1l,1l]}},{},{},{}],DisabledSlots:2039583}
kill @e[type=item,limit=1,scores={table=2}]
scoreboard players set @e[tag=locator,tag=plant_table,scores={age=1}] evolution 2
scoreboard players set @e[tag=locator,tag=plant_table,scores={age=1}] animation 0
execute at @e[tag=locator,tag=plant_table,scores={age=1}] run setblock ~ ~-1 ~ dirt destroy
execute at @e[tag=locator,tag=plant_table,scores={age=1}] run setblock ~ ~ ~ fern destroy
execute at @e[tag=locator,tag=plant_table,scores={age=1}] run kill @e[type=xp_orb,distance=0..2]

#Behavior: Fern Evolution
execute at @e[type=item,nbt={Item:{id:"minecraft:poppy",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ fern if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=2}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ fern if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=2}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=2}] run setblock ~ ~-1 ~ coarse_dirt destroy
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=2}] run setblock ~ ~ ~ pink_tulip destroy
execute at @e[type=item,scores={table=2}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=2}] evolution 3
kill @e[type=item,limit=1,scores={table=2}]

#Behavior: Tulip Evolution
execute at @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ pink_tulip if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=3}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=3}] run setblock ~ ~-1 ~ grass_block destroy
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=3}] run setblock ~ ~ ~ azure_bluet destroy
execute at @e[type=item,scores={table=2}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=3}] evolution 4
kill @e[type=item,limit=1,scores={table=2}]



#Behavior: All Final Stage Evolution
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ azure_bluet if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ azure_bluet if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run execute if entity @e[type=xp_orb,distance=0..2] if block ~ ~ ~ azure_bluet if entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] run scoreboard players set @e[limit=1,sort=nearest] table 2
execute at @e[type=item,scores={table=2}] align xyz run execute store result entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] ArmorItems[0].tag.Owner[0] long 1 run data get entity @e[type=item,scores={table=2},limit=1,sort=nearest] Thrower.L 0.00000000001
execute at @e[type=item,scores={table=2}] align xyz run execute store result entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] ArmorItems[0].tag.Owner[1] long 1 run data get entity @e[type=item,scores={table=2},limit=1,sort=nearest] Thrower.M 0.00000000001
execute at @e[type=item,scores={table=2}] store result score @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] id_least run data get entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] ArmorItems[0].tag.Owner[0]
execute at @e[type=item,scores={table=2}] store result score @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] id_most run data get entity @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] ArmorItems[0].tag.Owner[1]
execute at @a[advancements={s250pack:magic/plant_evolver=false}] if entity @e[type=item,scores={table=2},distance=0..4] if score @p id_least = @e[tag=plant_table,tag=locator,distance=0..4,limit=1,sort=nearest,scores={evolution=4}] id_least if score @p id_most = @e[tag=plant_table,tag=locator,distance=0..4,limit=1,sort=nearest,scores={evolution=4}] id_most run playsound minecraft:ui.toast.challenge_complete player @p ~ ~ ~ 1 1.5
execute at @a[advancements={s250pack:magic/plant_evolver=false}] if entity @e[type=item,scores={table=2},distance=0..4] if score @p id_least = @e[tag=plant_table,tag=locator,distance=0..4,limit=1,sort=nearest,scores={evolution=4}] id_least if score @p id_most = @e[tag=plant_table,tag=locator,distance=0..4,limit=1,sort=nearest,scores={evolution=4}] id_most run advancement grant @p only s250pack:magic/plant_evolver
execute at @e[type=item,scores={table=2}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] animation 1

#Behavior: Azure Bluet Evolution I
execute at @e[type=item,scores={table=2},nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] evolution 5
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=5}] run setblock ~ ~ ~ sunflower[half=lower] destroy
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=5}] run setblock ~ ~1 ~ sunflower[half=upper] destroy


#Behavior: Azure Bluet Evolution II
execute at @e[type=item,scores={table=2},nbt={Item:{id:"minecraft:beetroot",Count:1b}}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] evolution 6
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=6}] run setblock ~ ~ ~ rose_bush[half=lower] destroy
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=6}] run setblock ~ ~1 ~ rose_bush[half=upper] destroy

#Behavior: Azure Bluet Evolution III

execute at @e[type=item,scores={table=2},nbt={Item:{id:"minecraft:emerald",Count:1b}}] run scoreboard players set @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=4}] evolution 7
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=7}] run setblock ~ ~ ~ lilac[half=lower] destroy
execute at @e[type=item,scores={table=2}] run execute at @e[tag=plant_table,tag=locator,distance=0..1,limit=1,sort=nearest,scores={evolution=7}] run setblock ~ ~1 ~ lilac[half=upper] destroy

kill @e[type=item,scores={table=2}]



execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=5..},limit=1,sort=nearest,distance=0..6] run tag @s add PLANT_RANGE
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb] at @s unless entity @e[tag=locator,tag=plant_table,scores={evolution=5..},limit=1,sort=nearest,distance=0..6] run tag @s remove PLANT_RANGE
execute as @e[tag=!PLANT_RANGE,scores={buffDelay=-19..}] at @s run scoreboard players set @s buffDelay -20

#Behavior: Golden Flower
execute at @e[tag=locator,tag=plant_table,scores={evolution=5}] run particle minecraft:entity_effect ~ ~-0.4 ~ 1 1 0 1 0 normal
execute at @e[tag=locator,tag=plant_table,scores={evolution=5}] run execute at @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,distance=0..6] run particle minecraft:smoke ~ ~ ~ 0.25 0.5 0.25 0 1
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,tag=PLANT_RANGE] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=5},limit=1,sort=nearest,distance=0..6] run scoreboard players add @s buffDelay 1
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,scores={buffDelay=1},tag=PLANT_RANGE] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=5},limit=1,sort=nearest,distance=0..6] run effect give @s absorption 30 0 false
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,scores={buffDelay=600..},tag=PLANT_RANGE] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=5},limit=1,sort=nearest,distance=0..6] run scoreboard players set @s buffDelay 0

#Behavior: Death Flower
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run particle minecraft:smoke ~ ~ ~ 0.25 0.5 0.25 0 10 normal
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run particle minecraft:smoke ~ ~0.04 ~ 3 0.05 3 0 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run particle minecraft:mycelium ~ ~ ~ 3 0.5 3 0 2
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run execute at @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,distance=0..6] run particle minecraft:smoke ~ ~ ~ 0.25 0.5 0.25 0 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run effect give @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,distance=0..6] minecraft:wither 2 0 false
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] run effect give @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,distance=0..6] minecraft:blindness 2 0 false

#Behavior: Mana Flower
execute as @e[tag=locator,tag=plant_table,scores={evolution=7}] at @s run particle minecraft:witch ~ ~ ~ 0.4 1 0.4 0 1
execute as @e[tag=locator,tag=plant_table,scores={evolution=7}] at @s run execute at @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,distance=0..6] run particle minecraft:witch ~ ~ ~ 0.25 0.5 0.25 0 1

execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,tag=PLANT_RANGE] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=7},limit=1,sort=nearest,distance=0..6] run scoreboard players add @s buffDelay 1
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,scores={buffDelay=1},tag=PLANT_RANGE] at @s if score @s mana < @s max_mana if entity @e[tag=locator,tag=plant_table,scores={evolution=7},limit=1,sort=nearest,distance=0..6] run scoreboard players add @s mana 1
execute as @e[tag=!dummy,type=!item_frame,type=!item,type=!xp_orb,scores={buffDelay=40..},tag=PLANT_RANGE] at @s if entity @e[tag=locator,tag=plant_table,scores={evolution=7},limit=1,sort=nearest,distance=0..6] run scoreboard players set @s buffDelay 0


#Behavior: Break
execute at @e[tag=locator,tag=plant_table,scores={evolution=2}] unless block ~ ~ ~ fern run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=2}] broken 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=3}] unless block ~ ~ ~ pink_tulip run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=3}] broken 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=4}] unless block ~ ~ ~ azure_bluet run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=4}] broken 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=5}] unless block ~ ~ ~ sunflower run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=5}] broken 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=6}] unless block ~ ~ ~ rose_bush run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=6}] broken 1
execute at @e[tag=locator,tag=plant_table,scores={evolution=7}] unless block ~ ~ ~ lilac run scoreboard players set @e[tag=locator,tag=plant_table,limit=1,sort=nearest,scores={evolution=7}] broken 1

#Destroyed
execute at @e[tag=locator,tag=plant_table,scores={evolution=2..,broken=1}] run particle minecraft:ambient_entity_effect ~ ~-0.3 ~ 0.18 0.05 0.18 1 50
execute at @e[tag=locator,tag=plant_table,scores={evolution=3..,broken=1}] run particle minecraft:ambient_entity_effect ~ ~-0.3 ~ 0.2 0.1 0.2 1 50
execute at @e[tag=locator,tag=plant_table,scores={evolution=4..,broken=1}] run particle minecraft:ambient_entity_effect ~ ~-0.3 ~ 0.2 0.4 0.2 1 50
execute at @e[tag=locator,tag=plant_table,scores={evolution=5..,broken=1}] run particle minecraft:ambient_entity_effect ~ ~ ~ 0.2 2 0.2 1 50
execute at @e[tag=locator,tag=plant_table,scores={evolution=7,broken=1}] run summon item ~ ~ ~ {Motion:[0.0,0.15,0.0],Item:{id:"minecraft:lilac",Count:1b,tag:{ench:[{id:0,lvl:0}],HideFlags:61,magic:1b,display:{Lore:["Placing loses its magical properties"],Name:"{\"text\":\"Mana Flower\",\"color\":\"light_purple\"}"}}}}
kill @e[tag=locator,tag=plant_table,scores={broken=1}]