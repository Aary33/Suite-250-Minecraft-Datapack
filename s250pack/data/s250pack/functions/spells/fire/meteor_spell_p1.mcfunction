#Trig
#execute at @s[$rot_min] if entity @s[$rot_max] run summon armor_stand $pos {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["dummy","spell","meteor_proj","summoner"]}]}
scoreboard players remove @s mana 1
scoreboard players set @s cooldown -1
execute at @s run summon fireball ^ ^1.4 ^2 {direction:[0.0,0.0,0.0],Motion:[0.0,0.0,0.0],ExplosionPower:2,Tags:["spell","meteor_proj","meteor","small"]}
advancement grant @s until s250pack:magic/spell_cast

particle lava ~ ~1 ~ 0.5 0 0.5 0.01 10 normal