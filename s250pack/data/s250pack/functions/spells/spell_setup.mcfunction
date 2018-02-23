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

#Bossbars
bossbar create s250pack:mana01 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana01 color purple
bossbar set s250pack:mana01 style notched_6
bossbar set s250pack:mana01 max 6
bossbar set s250pack:mana01 value 0
bossbar create s250pack:mana02 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana02 color purple
bossbar set s250pack:mana02 style notched_6
bossbar set s250pack:mana02 max 6
bossbar set s250pack:mana02 value 0
bossbar create s250pack:mana03 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana03 color purple
bossbar set s250pack:mana03 style notched_6
bossbar set s250pack:mana03 max 6
bossbar set s250pack:mana03 value 0
bossbar create s250pack:mana04 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana04 color purple
bossbar set s250pack:mana04 style notched_6
bossbar set s250pack:mana04 max 6
bossbar set s250pack:mana04 value 0
bossbar create s250pack:mana05 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana05 color purple
bossbar set s250pack:mana05 style notched_6
bossbar set s250pack:mana05 max 6
bossbar set s250pack:mana05 value 0
bossbar create s250pack:mana06 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana06 color purple
bossbar set s250pack:mana06 style notched_6
bossbar set s250pack:mana06 max 6
bossbar set s250pack:mana06 value 0
bossbar create s250pack:mana07 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana07 color purple
bossbar set s250pack:mana07 style notched_6
bossbar set s250pack:mana07 max 6
bossbar set s250pack:mana07 value 0
bossbar create s250pack:mana08 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana08 color purple
bossbar set s250pack:mana08 style notched_6
bossbar set s250pack:mana08 max 6
bossbar set s250pack:mana08 value 0
bossbar create s250pack:mana09 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana09 color purple
bossbar set s250pack:mana09 style notched_6
bossbar set s250pack:mana09 max 6
bossbar set s250pack:mana09 value 0
bossbar create s250pack:mana10 {"text":"Mana","color":"dark_purple","bold":"true"}
bossbar set s250pack:mana10 color purple
bossbar set s250pack:mana10 style notched_6
bossbar set s250pack:mana10 max 6
bossbar set s250pack:mana10 value 0

bossbar create s250pack:cooldown01 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown01 color green
bossbar set s250pack:cooldown01 style progress
bossbar set s250pack:cooldown01 max 10000
bossbar set s250pack:cooldown01 value 0
bossbar create s250pack:cooldown02 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown02 color green
bossbar set s250pack:cooldown02 style progress
bossbar set s250pack:cooldown02 max 10000
bossbar set s250pack:cooldown02 value 0
bossbar create s250pack:cooldown03 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown03 color green
bossbar set s250pack:cooldown03 style progress
bossbar set s250pack:cooldown03 max 10000
bossbar set s250pack:cooldown03 value 0
bossbar create s250pack:cooldown04 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown04 color green
bossbar set s250pack:cooldown04 style progress
bossbar set s250pack:cooldown04 max 10000
bossbar set s250pack:cooldown04 value 0
bossbar create s250pack:cooldown05 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown05 color green
bossbar set s250pack:cooldown05 style progress
bossbar set s250pack:cooldown05 max 10000
bossbar set s250pack:cooldown05 value 0
bossbar create s250pack:cooldown06 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown06 color green
bossbar set s250pack:cooldown06 style progress
bossbar set s250pack:cooldown06 max 10000
bossbar set s250pack:cooldown06 value 0
bossbar create s250pack:cooldown07 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown07 color green
bossbar set s250pack:cooldown07 style progress
bossbar set s250pack:cooldown07 max 10000
bossbar set s250pack:cooldown07 value 0
bossbar create s250pack:cooldown08 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown08 color green
bossbar set s250pack:cooldown08 style progress
bossbar set s250pack:cooldown08 max 10000
bossbar set s250pack:cooldown08 value 0
bossbar create s250pack:cooldown09 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown09 color green
bossbar set s250pack:cooldown09 style progress
bossbar set s250pack:cooldown09 max 10000
bossbar set s250pack:cooldown09 value 0
bossbar create s250pack:cooldown10 {"text":"Cooldown","color":"green","bold":"false"}
bossbar set s250pack:cooldown10 color green
bossbar set s250pack:cooldown10 style progress
bossbar set s250pack:cooldown10 max 10000
bossbar set s250pack:cooldown10 value 0

#Freeze Objectives
scoreboard objectives add freeze dummy
scoreboard objectives add freeze_timer dummy