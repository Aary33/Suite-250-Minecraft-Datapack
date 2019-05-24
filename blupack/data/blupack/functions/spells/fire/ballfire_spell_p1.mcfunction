#Beam
scoreboard players remove @s mana 1
scoreboard players set @s cooldown -1
advancement grant @s until blupack:magic/spell_cast
summon tnt ^ ^1 ^6 {Fuse:60,Motion:[0.0,0.1,0.0],Tags:["spell","ballfire_proj","tnt"]}
execute positioned ^ ^1.1 ^6 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0 30 normal

playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 5 .1
particle dust 1 0 0 2 ~ ~ ~ 0.5 1 0.5 1 100 force