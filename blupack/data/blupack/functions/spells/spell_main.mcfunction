#Commands:
#/give @p filled_map{map:0,display:{Name:"{\"text\":\"Ancient Scroll\",\"color\":\"gray\",\"bold\":\"true\"}",Lore:["_-._._-"," ","???"]},ench:[{id:20,lvl:1}],HideFlags:61,scroll:"blank"}
#/give @p filled_map{map:1,display:{Name:"{\"text\":\"Ancient Scroll\",\"color\":\"gold\",\"bold\":\"true\"}",Lore:["_-._._-"," ","Casting Power I"]},ench:[{id:20,lvl:1}],HideFlags:61,scroll:"fire",castPower:1b}

#/give @p fire_charge{display:{Name:"{\"text\":\"Hellsky Elemental\",\"color\":\"gold\",\"false\":\"true\"}",Lore:["Summon a fireball"," ","Casting Power I","@ 1 Mana"]},ench:[{id:20,lvl:1}],HideFlags:61,element:"meteor",castPower:1b}
#/give @p fire_charge{display:{Name:"{\"text\":\"Hellsky Elemental\",\"color\":\"gold\",\"false\":\"true\"}",Lore:["Unleash the fury of one thousand suns."," ","Casting Power I","@ 5 Mana"]},ench:[{id:20,lvl:1}],HideFlags:61,element:"meteor",castPower:4b}

#/give @p magma_cream{display:{Name:"{\"text\":\"Ballfire Elemental\",\"color\":\"dark_red\",\"bold\":\"true\"}",Lore:["Crack the earth open."," ","Casting Power I","@ 1 Mana"]},ench:[{id:20,lvl:3}],HideFlags:61,element:"ballfire",castPower:1b}

#/give @p blaze_powder{display:{Name:"{\"text\":\"Flame Elemental\",\"color\":\"yellow\",\"bold\":\"false\"}",Lore:["Cast a trail of fire"," ","Casting Power I","@ 1 Mana"]},ench:[{id:20,lvl:1}],HideFlags:61,element:"flame",castPower:1b}
#/give @p blaze_powder{display:{Name:"{\"text\":\"Flame Elemental\",\"color\":\"yellow\",\"bold\":\"false\"}",Lore:["Cast fire hotter than the core"," ","Casting Power I","@ 2 Mana"]},ench:[{id:20,lvl:1}],HideFlags:61,element:"flame",castPower:4b}

#All Projectiles
scoreboard players add @e[tag=spell] proj_time 1

#Inventory Update and Checker ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


#----- Cast Power Checker -----
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:1b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] run tag @s add cast_power_1

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:2b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] run tag @s add cast_power_2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:2b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] run tag @s add cast_power_2

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:3b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] run tag @s add cast_power_3
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:3b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] run tag @s add cast_power_3
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:3b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:3b}}}] run tag @s add cast_power_3

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:4b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] run tag @s add cast_power_4
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:4b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] run tag @s add cast_power_4
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:4b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:3b}}}] run tag @s add cast_power_4
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{castPower:4b}}]}] if entity @s[nbt={SelectedItem:{tag:{castPower:4b}}}] run tag @s add cast_power_4
#-------------------------------------

tag @a[nbt={Inventory:[{Slot:-106b,tag:{scroll:"fire"}}]}] add scroll_fire
tag @a[nbt={SelectedItem:{tag:{element:"meteor"}}}] add element_meteor
tag @a[nbt={SelectedItem:{tag:{element:"ballfire"}}}] add element_ballfire
tag @a[nbt={SelectedItem:{tag:{element:"flame"}}}] add element_flame

scoreboard players add @a[tag=scroll_fire,tag=element_meteor] inventory_update 1
scoreboard players add @a[tag=scroll_fire,tag=element_ballfire] inventory_update 1
scoreboard players add @a[tag=scroll_fire,tag=element_flame] inventory_update 1

#----- Tag Remover -----
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{castPower:1b}}]}] unless entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] run tag @s remove cast_power_1
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{castPower:2b}}]}] unless entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] run tag @s remove cast_power_2
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{castPower:3b}}]}] unless entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:3b}}}] run tag @s remove cast_power_3
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{castPower:4b}}]}] unless entity @s[nbt={SelectedItem:{tag:{castPower:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:2b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:3b}}}] unless entity @s[nbt={SelectedItem:{tag:{castPower:4b}}}] run tag @s remove cast_power_4

tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{scroll:"fire"}}]}] remove scroll_fire
tag @a[nbt=!{SelectedItem:{tag:{element:"meteor"}}}] remove element_meteor
tag @a[nbt=!{SelectedItem:{tag:{element:"ballfire"}}}] remove element_ballfire
tag @a[nbt=!{SelectedItem:{tag:{element:"flame"}}}] remove element_flame

tag @a[scores={inventory_update=0}] add COOLDOWN_UPDATE
tag @a[scores={inventory_update=2}] add COOLDOWN_UPDATE


tag @a[scores={inventory_update=1}] add SHOW_MANA
tag @a[scores={inventory_update=0}] remove SHOW_MANA

scoreboard players set @a inventory_update 0

scoreboard players set @a[tag=COOLDOWN_UPDATE] cooldown 0
tag @a[tag=COOLDOWN_UPDATE] remove COOLDOWN_UPDATE
#-------------------------------------

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Standalone
tag @e[type=item,nbt={Item:{tag:{hostileDrop:1b}}}] add special_drop
tag @e[type=item,nbt={Item:{tag:{hostileDrop:1b}}}] add HOSTILE_DROP
tag @e[type=item,nbt={Item:{tag:{hostileDrop:0b}}}] add special_drop

execute as @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] run data merge entity @s {Item:{tag:{hostileDrop:0b}}}
execute as @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] at @s run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 air replace fire
execute as @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] at @s run particle minecraft:dust 1 1 1 2 ~ ~0.2 ~ 0.2 1 0.2 1 10 force
execute as @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] at @s run particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.01 20 force
execute as @e[tag=special_drop,tag=HOSTILE_DROP,nbt={Item:{tag:{dropper:"snekion"}}},scores={age=1},limit=1,sort=nearest] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 5 .1
tag @e[tag=special_drop,tag=HOSTILE_DROP,scores={age=1}] remove HOSTILE_DROP


execute as @e[tag=scroll_fire,tag=element_ballfire,scores={mana=10..,cooldown=10000..}] at @s run particle minecraft:dust 0.9 0 0.9 5 ~ ~ ~ 0.2 0 0.2 2 2 force
execute as @e[tag=scroll_fire,tag=element_meteor,scores={mana=5..,cooldown=10000..}] at @s run particle minecraft:dust 0.9 0 0.9 5 ~ ~ ~ 0.2 0 0.2 2 2 force
execute as @e[tag=scroll_fire,tag=element_flame,scores={mana=2..,cooldown=10000..}] at @s run particle minecraft:dust 0.9 0 0.9 5 ~ ~ ~ 0.2 0 0.2 2 2 force





#Cast Ballfire IV
scoreboard players add @e[tag=scroll_fire,tag=element_ballfire,tag=cast_power_4,scores={cooldown=..10000}] cooldown 100
execute as @e[tag=scroll_fire,tag=element_ballfire,tag=cast_power_4,scores={mana=60..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"ballfire",castPower:4b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @s run function blupack:spells/fire/ballfire_spell_p4

#Cast Ballfire I
scoreboard players add @e[tag=scroll_fire,tag=element_ballfire,tag=cast_power_1,scores={cooldown=..10000}] cooldown 1000
execute as @e[tag=scroll_fire,tag=element_ballfire,tag=cast_power_1,scores={mana=1..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"ballfire",castPower:1b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @s run function blupack:spells/fire/ballfire_spell_p1

#Ballfire Projectile
execute as @e[tag=ballfire_proj,tag=tnt] at @s run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0 1 0 1 0 force

execute as @e[tag=ballfire_proj,tag=proj,scores={proj_time=1}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11020559],FadeColors:[I;4332315]}]}}}}
execute as @e[tag=ballfire_proj,tag=proj,scores={proj_time=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","ballfire_proj","explosion"]}
execute as @e[tag=ballfire_proj,tag=proj,scores={proj_time=1}] at @s run teleport @s ^ ^ ^6
scoreboard players set @e[tag=ballfire_proj,tag=proj,scores={proj_time=4..}] proj_time 0
execute as @e[tag=ballfire_proj,tag=proj,scores={age=40}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;16232199],FadeColors:[I;16232199]}]}}}}
kill @e[tag=ballfire_proj,tag=proj,scores={age=40}]

execute as @e[tag=ballfire_proj,tag=explosion,scores={age=40}] at @s run summon creeper ~ ~-1 ~ {Fuse:0s,ExplosionRadius:4,ignited:1b,NoAI:1b,Silent:1b,Invulnerable:1,CustomName:"{\"text\":\"Ballfire\"}"}
kill @e[tag=ballfire_proj,tag=explosion,scores={age=40}]





#Cast Meteor IV
scoreboard players add @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_4,scores={cooldown=..10000}] cooldown 100
execute as @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_4,scores={mana=5..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"meteor",castPower:4b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @p run function blupack:spells/fire/meteor_spell_p4

#Cast Meteor II
scoreboard players add @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_2,scores={cooldown=..10000}] cooldown 250
execute as @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_2,scores={mana=2..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"meteor",castPower:2b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @p run function blupack:spells/fire/meteor_spell_p2

#Cast Meteor I
scoreboard players add @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_1,scores={cooldown=..10000}] cooldown 400
execute as @e[tag=scroll_fire,tag=element_meteor,tag=cast_power_1,scores={mana=1..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"meteor",castPower:1b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @p run function blupack:spells/fire/meteor_spell_p1


#Meteor Projectile
execute as @e[tag=meteor_proj,tag=summoner] at @s run particle minecraft:large_smoke ~ ~ ~ 3 0.1 3 0 60 force
execute as @e[tag=meteor_proj,tag=summoner,scores={age=20}] at @s run summon fireball ~2 ~ ~2 {direction:[0.3,-1.3,0.3],Motion:[0.0,-1.3,0.0],ExplosionPower:2,Tags:["spell","meteor_proj","meteor","small"]}
execute as @e[tag=meteor_proj,tag=summoner,scores={age=25}] at @s run summon fireball ~-2 ~ ~-2 {direction:[-0.3,-1.3,-0.3],Motion:[-0.3,-1.3,-0.3],ExplosionPower:2,Tags:["spell","meteor_proj","meteor","small"]}
execute as @e[tag=meteor_proj,tag=summoner,scores={age=30}] at @s run summon fireball ~-2 ~ ~2 {direction:[-0.3,-1.3,0.3],Motion:[-0.3,-1.3,0.3],ExplosionPower:2,Tags:["spell","meteor_proj","meteor","small"]}
execute as @e[tag=meteor_proj,tag=summoner,scores={age=35}] at @s run summon fireball ~2 ~ ~-2 {direction:[0.3,-1.3,-0.3],Motion:[0.3,-1.3,-0.3],ExplosionPower:2,Tags:["spell","meteor_proj","meteor","small"]}
execute as @e[tag=meteor_proj,tag=summoner,scores={age=60}] at @s run summon fireball ~ ~ ~ {direction:[0.0,-1.3,0.0],Motion:[0.0,-1.3,0.0],ExplosionPower:6,Tags:["spell","meteor_proj","meteor"]}

#Meteor Projectile P1
execute as @e[tag=meteor_proj,tag=meteor,tag=small,scores={age=1}] at @s run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 5 .8
execute as @e[tag=meteor_proj,tag=meteor,tag=small,scores={age=1}] at @s run particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 5 force

#Meteor Projectile P2
execute as @e[tag=meteor_proj,tag=meteor,tag=!small,scores={age=1}] at @s run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 5 .1
execute as @e[tag=meteor_proj,tag=meteor,tag=!small,scores={age=1}] at @s run particle minecraft:lava ~ ~ ~ 0.8 0.8 0.8 0 40 force
execute as @e[tag=meteor_proj,tag=meteor,tag=!small,scores={age=1..}] at @s run particle minecraft:flame ~ ~ ~ 0.0 0.0 0.0 0 1 force


execute as @e[tag=meteor_proj,tag=meteor,tag=small] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0 10 force
execute as @e[tag=meteor_proj,tag=meteor,tag=!small] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.8 0.8 0.8 0 40 force
kill @e[tag=meteor_proj,tag=meteor,scores={age=100..}]
kill @e[tag=meteor_proj,tag=summoner,scores={age=100..}]





#Cast Flame IV
scoreboard players add @e[tag=scroll_fire,tag=element_flame,tag=cast_power_4,scores={cooldown=..10000}] cooldown 400
execute as @e[tag=scroll_fire,tag=element_flame,tag=cast_power_4,scores={mana=10..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"flame",castPower:4b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @p run function blupack:spells/fire/flame_spell_p4

#Cast Flame I
scoreboard players add @e[tag=scroll_fire,tag=element_flame,tag=cast_power_1,scores={cooldown=..10000}] cooldown 1000
execute as @e[tag=scroll_fire,tag=element_flame,tag=cast_power_1,scores={mana=1..,cooldown=10000..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,ShowArms:1b,Invisible:1b,NoGravity:1,Marker:0b,Tags:["dummy","active_detector"],DisabledSlots:1973790}
execute as @e[tag=active_detector,nbt={HandItems:[{tag:{element:"flame",castPower:1b}},{}]}] at @s as @p[limit=1,scores={cooldown=10000..}] at @p run function blupack:spells/fire/flame_spell_p1

#Flame Projectile
execute as @e[tag=flame_proj,y_rotation=1..] at @s unless block ~ ~0.1 ~ air run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=flame_proj,y_rotation=1..] at @s unless block ~ ~-0.1 ~ air run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=flame_proj] at @s run teleport @s ^ ^ ^0.3
execute as @e[tag=flame_proj] at @s run setblock ~ ~ ~ fire keep
execute as @e[tag=flame_proj] at @s run setblock ~ ~-1 ~ fire keep
execute as @e[tag=flame_proj] at @s run setblock ~ ~-2 ~ fire keep
execute as @e[tag=flame_proj] at @s run particle flame ~ ~0.0 ~ 0.05 0 0.05 0.0 1 normal
execute as @e[tag=flame_proj] at @s run particle flame ~ ~0.0 ~ 0.4 0.1 0.4 0.01 2 normal
execute as @e[tag=flame_proj,scores={age=10..}] at @s as @e[tag=!dummy,type=!item,type=!experience_orb,distance=0..1] at @s run summon small_fireball ~ ~2.0 ~ {direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute as @e[tag=flame_proj,scores={age=10..}] at @s if entity @e[tag=!dummy,type=!item,type=!experience_orb,distance=0..1] run kill @s
execute as @e[tag=flame_proj,y_rotation=1..] at @s unless block ~ ~0.0 ~ air unless block ~ ~0.0 ~ fire unless block ~ ~ ~ lava run kill @s
kill @e[tag=flame_proj,scores={age=40},tag=!b,tag=!d]
kill @e[tag=flame_proj,scores={age=60}]







kill @e[tag=active_detector,scores={age=2..}] 




