#Resetting Scores
tag @a[scores={mine_oak=1..}] add MINED_LOG
tag @a[scores={mine_spruce=1..}] add MINED_LOG
tag @a[scores={mine_birch=1..}] add MINED_LOG
tag @a[scores={mine_d_oak=1..}] add MINED_LOG
tag @a[scores={mine_acacia=1..}] add MINED_LOG
tag @a[scores={mine_jungle=1..}] add MINED_LOG

execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run advancement grant @s only blupack:magic/find_axe

execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_log"}}] add LOG_CAPITATE
execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_log"}}] add LOG_CAPITATE
execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:birch_log"}}] add LOG_CAPITATE
execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_log"}}] add LOG_CAPITATE
execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:acacia_log"}}] add LOG_CAPITATE
execute as @a[tag=MINED_LOG,nbt={SelectedItem:{tag:{Capitator:1b}}}] at @s run tag @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log"}}] add LOG_CAPITATE

#Oak Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ oak_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ oak_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 oak_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ oak_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 oak_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 oak_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 oak_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 oak_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 oak_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ oak_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 oak_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ oak_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 oak_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 oak_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 oak_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 oak_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 oak_log run setblock ~1 ~ ~-1 air destroy

#Spurce Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ spruce_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ spruce_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 spruce_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ spruce_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 spruce_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 spruce_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 spruce_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 spruce_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 spruce_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ spruce_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 spruce_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ spruce_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 spruce_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 spruce_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 spruce_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 spruce_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 spruce_log run setblock ~1 ~ ~-1 air destroy

#Birch Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ birch_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ birch_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 birch_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ birch_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 birch_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 birch_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 birch_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 birch_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 birch_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ birch_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 birch_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ birch_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 birch_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 birch_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 birch_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 birch_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 birch_log run setblock ~1 ~ ~-1 air destroy

#Dark Oak Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ dark_oak_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ dark_oak_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 dark_oak_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ dark_oak_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 dark_oak_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 dark_oak_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 dark_oak_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 dark_oak_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 dark_oak_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ dark_oak_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 dark_oak_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ dark_oak_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 dark_oak_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 dark_oak_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 dark_oak_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 dark_oak_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 dark_oak_log run setblock ~1 ~ ~-1 air destroy

#Acacia Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ acacia_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ acacia_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 acacia_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ acacia_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 acacia_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 acacia_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 acacia_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 acacia_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 acacia_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ acacia_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 acacia_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ acacia_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 acacia_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 acacia_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 acacia_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 acacia_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 acacia_log run setblock ~1 ~ ~-1 air destroy

#Jungle Log Detect
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~ jungle_log run setblock ~ ~1 ~ air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~ jungle_log run setblock ~1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~1 jungle_log run setblock ~ ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~ jungle_log run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~1 ~-1 jungle_log run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~1 jungle_log run setblock ~1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~-1 jungle_log run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~1 ~1 jungle_log run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~1 ~-1 jungle_log run setblock ~1 ~1 ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~ jungle_log run setblock ~1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~1 jungle_log run setblock ~ ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~ jungle_log run setblock ~-1 ~ ~ air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~ ~ ~-1 jungle_log run setblock ~ ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~1 jungle_log run setblock ~1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~-1 jungle_log run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~-1 ~ ~1 jungle_log run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s if block ~1 ~ ~-1 jungle_log run setblock ~1 ~ ~-1 air destroy

execute as @e[tag=LOG_CAPITATE,scores={age=1}] at @s positioned ~-1 ~ ~-1 run tag @e[type=item,limit=12,sort=nearest,dx=3,dy=2,dz=3,tag=!LOG_CAPITATE] add LOG_CAPITATE
execute as @e[tag=LOG_CAPITATE,scores={age=2}] at @s run tag @s remove LOG_CAPITATE

scoreboard players set @a[scores={mine_oak=1..}] mine_oak 0
scoreboard players set @a[scores={mine_spruce=1..}] mine_spruce 0
scoreboard players set @a[scores={mine_birch=1..}] mine_birch 0
scoreboard players set @a[scores={mine_d_oak=1..}] mine_d_oak 0
scoreboard players set @a[scores={mine_acacia=1..}] mine_acacia 0
scoreboard players set @a[scores={mine_jungle=1..}] mine_jungle 0
tag @a[tag=MINED_LOG] remove MINED_LOG
