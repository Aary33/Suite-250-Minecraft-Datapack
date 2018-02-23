#Collect
scoreboard objectives add respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add left_game minecraft.custom:minecraft.leave_game
scoreboard objectives add mine_spawner minecraft.mined:minecraft.mob_spawner
scoreboard objectives add death_trigger deathCount
scoreboard objectives add half_xp deathCount
scoreboard objectives add random dummy
scoreboard objectives add y_pos dummy
scoreboard objectives add health dummy
scoreboard objectives add id_least dummy
scoreboard objectives add id_most dummy
scoreboard objectives add max_mana dummy


scoreboard objectives add integer dummy
scoreboard players set #one integer 1
scoreboard players set #two integer 2
scoreboard players set #four integer 4
scoreboard players set #ten integer 10

function s250pack:spells/spell_setup
function s250pack:plant_evolution/plant_setup
function s250pack:extra_health/extra_health_setup
function s250pack:xp_collector/xp_setup
function s250pack:bosses/boss_setup