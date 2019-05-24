#Execute three ways
advancement grant @s until blupack:magic/spell_cast
scoreboard players remove @s mana 4
scoreboard players set @s cooldown -1
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","a"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","b"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","c"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","d"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","flame_proj","spawned","e"]}
teleport @e[tag=spell,tag=flame_proj,limit=3,sort=nearest,tag=spawned] @s
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=a] ^ ^1.5 ^1 ~20 ~1.5
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=b] ^ ^1.5 ^1 ~10 ~-1.5
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=c] ^ ^1.5 ^1 ~ ~1.5
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=d] ^ ^1.5 ^1 ~-10 ~-1.5
teleport @e[tag=spell,tag=flame_proj,limit=1,sort=nearest,tag=spawned,tag=e] ^ ^1.5 ^1 ~-20 ~1.5
tag @e[tag=spell,tag=flame_proj,limit=3,sort=nearest,tag=spawned] remove spawned
playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 5 .8
particle flame ~ ~1 ~ 0.5 1 0.5 0.01 100 normal