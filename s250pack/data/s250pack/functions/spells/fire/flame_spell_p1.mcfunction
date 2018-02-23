#Execute Once
scoreboard players remove @s mana 1
scoreboard players set @s cooldown -1
advancement grant @s until s250pack:magic/spell_cast
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","a"]}
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=a] @s
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=a] ^ ^1.4 ^1
tag @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned] remove spawned
playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 5 .8
particle flame ~ ~1 ~ 0.5 1 0.5 0.01 100 normal