#Trig
#execute at @s[$rot_min] if entity @s[$rot_max] run summon armor_stand $pos {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","meteor_proj","summoner"]}]}
scoreboard players remove @s mana 5
scoreboard players set @s cooldown -1
execute at @s run summon armor_stand ^ ^10 ^10 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","meteor_proj","summoner"]}

advancement grant @s until s250pack:magic/spell_cast
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 5 .1
particle lava ~ ~1 ~ 0.5 0 0.5 0.01 10 normal