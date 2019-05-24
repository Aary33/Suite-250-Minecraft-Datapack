#Cast Individual Spells
scoreboard objectives add age dummy
scoreboard objectives add attack dummy
scoreboard objectives add mana dummy
scoreboard objectives add mana_id dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add inventory_update dummy
scoreboard objectives add mana_id dummy
scoreboard objectives add collide dummy
scoreboard objectives add cast dummy
scoreboard objectives add proj_time dummy
scoreboard objectives add condition_test dummy
scoreboard objectives add max_mana dummy

#Bossbars
bossbar add blupack:mana01 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana01 color purple
bossbar set blupack:mana01 style notched_6
bossbar set blupack:mana01 max 6
bossbar set blupack:mana01 value 0
bossbar add blupack:mana02 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana02 color purple
bossbar set blupack:mana02 style notched_6
bossbar set blupack:mana02 max 6
bossbar set blupack:mana02 value 0
bossbar add blupack:mana03 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana03 color purple
bossbar set blupack:mana03 style notched_6
bossbar set blupack:mana03 max 6
bossbar set blupack:mana03 value 0
bossbar add blupack:mana04 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana04 color purple
bossbar set blupack:mana04 style notched_6
bossbar set blupack:mana04 max 6
bossbar set blupack:mana04 value 0
bossbar add blupack:mana05 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana05 color purple
bossbar set blupack:mana05 style notched_6
bossbar set blupack:mana05 max 6
bossbar set blupack:mana05 value 0
bossbar add blupack:mana06 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana06 color purple
bossbar set blupack:mana06 style notched_6
bossbar set blupack:mana06 max 6
bossbar set blupack:mana06 value 0
bossbar add blupack:mana07 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana07 color purple
bossbar set blupack:mana07 style notched_6
bossbar set blupack:mana07 max 6
bossbar set blupack:mana07 value 0
bossbar add blupack:mana08 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana08 color purple
bossbar set blupack:mana08 style notched_6
bossbar set blupack:mana08 max 6
bossbar set blupack:mana08 value 0
bossbar add blupack:mana09 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana09 color purple
bossbar set blupack:mana09 style notched_6
bossbar set blupack:mana09 max 6
bossbar set blupack:mana09 value 0
bossbar add blupack:mana10 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set blupack:mana10 color purple
bossbar set blupack:mana10 style notched_6
bossbar set blupack:mana10 max 6
bossbar set blupack:mana10 value 0

bossbar add blupack:cooldown01 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown01 color green
bossbar set blupack:cooldown01 style progress
bossbar set blupack:cooldown01 max 10000
bossbar set blupack:cooldown01 value 0
bossbar add blupack:cooldown02 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown02 color green
bossbar set blupack:cooldown02 style progress
bossbar set blupack:cooldown02 max 10000
bossbar set blupack:cooldown02 value 0
bossbar add blupack:cooldown03 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown03 color green
bossbar set blupack:cooldown03 style progress
bossbar set blupack:cooldown03 max 10000
bossbar set blupack:cooldown03 value 0
bossbar add blupack:cooldown04 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown04 color green
bossbar set blupack:cooldown04 style progress
bossbar set blupack:cooldown04 max 10000
bossbar set blupack:cooldown04 value 0
bossbar add blupack:cooldown05 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown05 color green
bossbar set blupack:cooldown05 style progress
bossbar set blupack:cooldown05 max 10000
bossbar set blupack:cooldown05 value 0
bossbar add blupack:cooldown06 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown06 color green
bossbar set blupack:cooldown06 style progress
bossbar set blupack:cooldown06 max 10000
bossbar set blupack:cooldown06 value 0
bossbar add blupack:cooldown07 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown07 color green
bossbar set blupack:cooldown07 style progress
bossbar set blupack:cooldown07 max 10000
bossbar set blupack:cooldown07 value 0
bossbar add blupack:cooldown08 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown08 color green
bossbar set blupack:cooldown08 style progress
bossbar set blupack:cooldown08 max 10000
bossbar set blupack:cooldown08 value 0
bossbar add blupack:cooldown09 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown09 color green
bossbar set blupack:cooldown09 style progress
bossbar set blupack:cooldown09 max 10000
bossbar set blupack:cooldown09 value 0
bossbar add blupack:cooldown10 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set blupack:cooldown10 color green
bossbar set blupack:cooldown10 style progress
bossbar set blupack:cooldown10 max 10000
bossbar set blupack:cooldown10 value 0

#Freeze Objectives
scoreboard objectives add freeze dummy
scoreboard objectives add freeze_timer dummy