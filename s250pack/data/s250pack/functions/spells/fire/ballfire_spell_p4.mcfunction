#Beam
advancement grant @s until s250pack:magic/spell_cast
scoreboard players remove @s mana 10
scoreboard players set @s cooldown -1
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","ballfire_proj","proj","spawned"]}
teleport @e[tag=spell,tag=ballfire_proj,limit=1,sort=nearest,tag=spawned] @s
teleport @e[tag=spell,tag=ballfire_proj,limit=1,sort=nearest,tag=spawned] ^ ^1.5 ^3
tag @e[tag=spell,tag=ballfire_proj,limit=1,sort=nearest,tag=spawned] remove spawned
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 5 .7
particle lava ~ ~ ~ 0.5 1 0.5 1 100 force