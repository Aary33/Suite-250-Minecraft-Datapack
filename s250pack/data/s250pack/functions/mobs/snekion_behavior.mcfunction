#Random Replace
execute as @e[type=zombie_pigman,scores={age=1}] at @s store result score @s random run data get entity @s UUIDLeast 0.0000000000000001
tag @e[type=zombie_pigman,scores={age=1,random=-500..-470}] add RANDOM_SNEKION

execute as @e[tag=RANDOM_SNEKION] at @s run summon minecraft:husk ~ ~ ~ {CustomName:"{\"text\":\"Snekion Mage\",\"color\":\"yellow\",\"bold\":\"false\"}",CustomNameVisible:1b,Silent:1b,PersistenceRequired:0b,CanPickUpLoot:0b,Health:40,Attributes:[{Name:"generic.followRange",Base:32},{Name:"generic.maxHealth",Base:40},{Name:"generic.movementSpeed",Base:0.2f},{Name:"generic.attackDamage",Base:16},{Name:"generic.knockbackResistance",Base:0.1}],DeathLootTable:"s250pack:entities/snekion",HandItems:[{id:"minecraft:fire_charge",tag:{display:{Name:"Magic"},ench:[{id:16,lvl:5},{id:20,lvl:2}]},Count:1},{id:"minecraft:filled_map",tag:{display:{Name:"Ancient Scroll"}},Count:1}],ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:12462865},ench:[{id:2,lvl:5},{id:8,lvl:5}]}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:0},ench:[{id:3,lvl:50}]}},{id:"minecraft:leather_chestplate",Count:1,tag:{display:{color:12462865},ench:[{id:3,lvl:50},{id:0,lvl:5}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"c94c13fd-72af-48ea-8a5e-1456cc281423",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVjNGViNGQxMGQ4NzdjYmJmMjFmYTRkNjc3Mzg1YjI0ZGQ1MWQwYjgxYzEwNmJmODY3M2YxOTk5ZWE5In19fQ=="}]}}}}],ActiveEffects:[{Id:12,Amplifier:1,Duration:2147483647,ShowParticles:0b},{Id:8,Amplifier:3,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1,Duration:2147483647,ShowParticles:0b}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Tags:["snekion"]}
#/give @p player_head{display:{Name:"Fire Demon"},SkullOwner:{Id:"c94c13fd-72af-48ea-8a5e-1456cc281423",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVjNGViNGQxMGQ4NzdjYmJmMjFmYTRkNjc3Mzg1YjI0ZGQ1MWQwYjgxYzEwNmJmODY3M2YxOTk5ZWE5In19fQ=="}]}}} 1


execute as @e[type=zombie_pigman,tag=RANDOM_SNEKION] at @s run teleport @s 0 -5 0
kill @e[type=zombie_pigman,scores={age=1},tag=RANDOM_SNEKION]

tag @e[tag=RANDOM_SNEKION] remove RANDOM_SNEKION


#Attack
scoreboard players add @e[tag=snekion] attack 1
execute as @e[tag=snekion,scores={attack=20..}] at @s run summon armor_stand ~ ~200 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","random","spawned"]}
execute as @e[tag=snekion,scores={attack=20..}] at @s positioned ~ ~200 ~ store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUIDLeast 0.00000000000000001
execute as @e[tag=snekion,scores={attack=20..,health=..20}] at @s run particle minecraft:dust 0.8 0.2 0 2 ~ ~ ~ 0.2 0 0.2 2 2 force
execute as @e[tag=snekion,scores={attack=20..,health=..20}] at @s run particle minecraft:dust 0.9 0.5 0 1 ~ ~1 ~ 2 2 2 2 1 force
execute as @e[tag=snekion,scores={attack=20..,health=..20}] at @s run particle minecraft:flame ~ ~2 ~ 0.0 1 0.0 0.1 0 force
execute as @e[tag=snekion,scores={attack=20..,health=21..}] at @s run particle minecraft:dust 0.9 0.5 0 2 ~ ~ ~ 0.2 0 0.2 2 2 force
execute as @e[tag=snekion,scores={attack=20..,health=21..}] at @s run particle minecraft:flame ~ ~2 ~ 0.0 1 0.0 0.04 0 force
execute as @e[tag=snekion,scores={attack=60..,random=-49..-49,health=0..}] at @s run tag @s add execute_ambient
execute as @e[tag=snekion,scores={attack=40..,random=-55..-53,health=21..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=0..4] run tag @s add execute_blow
execute as @e[tag=snekion,scores={attack=40..,random=-50..-49,health=21..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=2..14] run tag @s add execute_flame_1
execute as @e[tag=snekion,scores={attack=20..,random=-50..-49,health=..20}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=0..14] run tag @s add execute_flame_1
execute as @e[tag=snekion,scores={attack=40..,random=-48..-47,health=21..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=4..28] unless entity @a[distance=0..6] run tag @s add execute_meteor_2
execute as @e[tag=snekion,scores={attack=20..,random=-48..-47,health=..20}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=2..28] unless entity @a[distance=0..2] run tag @s add execute_meteor_2
execute as @e[tag=snekion,scores={attack=20..}] at @s positioned ~ ~200 ~ run kill @e[tag=random,limit=1,sort=nearest]

execute as @e[tag=snekion,tag=execute_ambient] at @s run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 2 .1

execute as @e[tag=snekion,tag=execute_flame_1] at @s run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[tag=snekion,tag=execute_flame_1] at @s positioned ^ ^ ^1 facing entity @p eyes run function s250pack:spells/fire/flame_spell_p1 
effect give @e[tag=snekion,tag=execute_flame_1] minecraft:slowness 1 100 true

execute as @e[tag=snekion,tag=execute_meteor_2] at @s run teleport @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=snekion,tag=execute_meteor_2] at @s positioned ^ ^ ^1 facing entity @p eyes run function s250pack:spells/fire/meteor_spell_p2
effect give @e[tag=snekion,tag=execute_meteor_2] minecraft:slowness 1 100 true

execute as @e[tag=snekion,tag=execute_blow] at @s run teleport @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=snekion,tag=execute_blow] at @s run summon fireball ~ ~2.2 ~ {power:[0.0,-1.0,0.0],direction:[0.0,0.0,0.0],ExplosionPower:2,Tags:["dummy","meteor"]}
execute as @e[tag=snekion,tag=execute_blow] at @s run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 air replace fire
execute as @e[tag=snekion,tag=execute_blow] at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 5 1
execute as @e[tag=snekion,tag=execute_blow] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal

scoreboard players set @e[tag=snekion,tag=execute_ambient] attack 0
scoreboard players set @e[tag=snekion,tag=execute_flame_1] attack 0
scoreboard players set @e[tag=snekion,tag=execute_meteor_2] attack 0
scoreboard players set @e[tag=snekion,tag=execute_blow] attack 0

tag @e[tag=snekion,tag=execute_ambient] remove execute_ambient
tag @e[tag=snekion,tag=execute_flame_1] remove execute_flame_1
tag @e[tag=snekion,tag=execute_meteor_2] remove execute_meteor_2
tag @e[tag=snekion,tag=execute_blow] remove execute_blow

#Ai
execute as @e[tag=snekion,scores={health=0..20}] at @s run data merge entity @s {Attributes:[{Name:"generic.movementSpeed",Base:0.3f}]}
execute as @e[tag=snekion] at @s store result score @s health run data get entity @s Health
execute as @e[tag=snekion,scores={attack=10..,health=..20}] at @s run execute as @e[type=arrow,distance=0..5] run data merge entity @s {Fire:100,Motion:[0.0,3.0,0.0]}
execute as @e[tag=snekion,scores={health=21..}] at @s run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 air replace fire
execute as @e[tag=snekion,scores={health=..20}] at @s run fill ~-0 ~-1 ~-0 ~0 ~1 ~0 fire replace air
execute as @e[tag=snekion] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian replace lava
execute as @a[advancements={s250pack:magic/snekion_encounter=false}] at @s if entity @e[tag=meteor,tag=meteor_proj,tag=hostile,distance=0..2] run tag @s add SNEKION_ENCOUNTER
execute as @e[tag=meteor,tag=meteor_proj,tag=hostile] at @s unless entity @a[distance=0..4] run execute as @a[tag=SNEKION_ENCOUNTER,advancements={s250pack:magic/snekion_encounter=false}] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.5
execute as @e[tag=meteor,tag=meteor_proj,tag=hostile] at @s unless entity @a[distance=0..4] run advancement grant @a[tag=SNEKION_ENCOUNTER,advancements={s250pack:magic/snekion_encounter=false}] until s250pack:magic/snekion_encounter
execute as @e[tag=meteor,tag=meteor_proj,tag=hostile] at @s unless entity @a[distance=0..4] run tag @a[tag=SNEKION_ENCOUNTER] remove SNEKION_ENCOUNTER
execute as @a at @s unless entity @e[tag=meteor,tag=meteor_proj,tag=hostile,distance=0..4] run tag @s remove SNEKION_ENCOUNTER
kill @e[tag=meteor,tag=meteor_proj,tag=hostile,scores={age=60..}]

execute as @a[nbt={Dimension:-1},advancements={minecraft:nether/root=true,s250pack:magic/nether_hard=false}] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
advancement grant @a[nbt={Dimension:-1},advancements={minecraft:nether/root=true,s250pack:magic/nether_hard=false}] until s250pack:magic/nether_hard

advancement grant @a[advancements={s250pack:magic/scroll_find=false},nbt={Inventory:[{tag:{scroll:"blank"}}]}] until s250pack:magic/scroll_find


execute as @e[nbt={HurtTime:10s},tag=snekion] at @s run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 5 1.65

