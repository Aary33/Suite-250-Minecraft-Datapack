#Beam
scoreboard players remove @s mana 4
scoreboard players set @s cooldown -1
advancement grant @s until s250pack:magic/spell_cast
summon tnt ^ ^1 ^6 {Fuse:60,Motion:[0.0,0.1,0.0],Tags:["spell","ballfire_proj","tnt"]}

playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 5 .1
particle dust 1 0 0 2 ~ ~ ~ 0.5 1 0.5 1 100 force