#Ice: Projectile Movement
execute at @e[type=armor_stand,tag=ice_spell] run teleport @e[type=armor_stand] ^ ^ ^1
execute at @e[type=armor_stand,tag=ice_spell] run particle minecraft:dripping_water ~ ~1 ~ 0.05 0.05 0.05 0.03 2 force
execute at @e[type=armor_stand,tag=ice_spell] run particle minecraft:cloud ~ ~1 ~ 0.02 0.02 0.02 0.01 3 force

#Ice: Collision
execute at @e[type=armor_stand,tag=ice_spell] run execute if score @e[type=armor_stand,tag=ice_spell,sort=nearest,limit=1] collide matches 2 run execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,distance=0..2,limit=1,type=!armor_stand,sort=nearest] run scoreboard players set @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,distance=0..2,limit=1,type=!armor_stand,sort=nearest] freeze 1
execute at @e[type=armor_stand,tag=ice_spell] run execute if score @e[type=armor_stand,tag=ice_spell,sort=nearest,limit=1] collide matches 2 run execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,distance=0..2,limit=1,type=!armor_stand,sort=nearest] run summon fireworks_rocket ~ ~2.5 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4379647],FadeColors:[I;14939391]}]}}}}
execute at @e[type=armor_stand,tag=ice_spell] run execute if score @e[type=armor_stand,tag=ice_spell,sort=nearest,limit=1] collide matches 2 run execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,distance=0..2,limit=1,type=!armor_stand,sort=nearest] run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 4 1
execute at @e[type=armor_stand,tag=ice_spell] run execute if score @e[type=armor_stand,tag=ice_spell,sort=nearest,limit=1] collide matches 1.. run kill @e[limit=1,sort=nearest]

#Ice: Freeze Start
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 align xyz run teleport ~ ~ ~
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run fill ~-1 ~-1 ~ ~1 ~1 ~ packed_ice keep
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run fill ~ ~-1 ~-1 ~ ~1 ~1 packed_ice keep
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run fill ~ ~2 ~ ~ ~2 ~ packed_ice keep
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,DisabledSlots:2039583,Tags:["freeze_locator","dummy"]}
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run effect give @e[limit=1,sort=nearest] minecraft:mining_fatigue 40 40 true
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run effect give @e[limit=1,sort=nearest] minecraft:slowness 2 40 true
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run scoreboard players set @e[limit=1,sort=nearest,tag=freeze_locator] freeze_timer 40
execute at @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] run execute if score @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand,limit=1,sort=nearest] freeze matches 1 run scoreboard players set @e[tag=!spell,tag=!dummy,type=!item_frame,type=!item,type=!armor_stand] freeze 0

#Ice: Freeze Time Handler
scoreboard players remove @e[tag=freeze_locator] freeze_timer 1
execute at @e[tag=freeze_locator] run execute if score @e[limit=1,sort=nearest,tag=freeze_locator] freeze_timer matches 1 run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace packed_ice
execute at @e[tag=freeze_locator] run execute if score @e[limit=1,sort=nearest,tag=freeze_locator] freeze_timer matches 1 run kill @e[limit=1,sort=nearest,tag=freeze_locator]