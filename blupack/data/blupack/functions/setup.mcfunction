#Give Items
#Capitator: /give @p iron_axe{display:{Name:"{\"text\":\"Lumber's Axe\",\"color\":\"yellow\",\"bold\":\"false\"}",Lore:["{\"text\":\"Tree Capitator\",\"color\":\"gray\",\"bold\":\"false\",\"italic\":\"false\"}"]},Capitator:1b} 1

#Scrolls
#Ancient Scroll P1
#Fire Ancient Scroll P1

#Collect
scoreboard objectives add gamerule dummy
scoreboard objectives add respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add left_game minecraft.custom:minecraft.leave_game
scoreboard objectives add death_trigger deathCount
scoreboard objectives add y_pos dummy
scoreboard objectives add x_pos dummy
scoreboard objectives add z_pos dummy
scoreboard objectives add health dummy
scoreboard objectives add id_least dummy
scoreboard objectives add id_most dummy




scoreboard objectives add integer dummy
scoreboard players set #-one integer -1
scoreboard players set #one integer 1
scoreboard players set #two integer 2
scoreboard players set #four integer 4
scoreboard players set #five integer 5
scoreboard players set #ten integer 10

#== Setup ==

#Spells
function blupack:spells/spell_setup
#Death Penalty
function blupack:death_penalty/half_xp_setup
#Mobs
function blupack:mobs/mob_setup
#XP Collector
function blupack:xp_collector/xp_setup
#Bosses
function blupack:bosses/boss_setup
#Extra Health
function blupack:extra_health/extra_health_setup
#Plant Evolution
function blupack:plant_evolution/plant_setup
#Tree Capitator
function blupack:tree_capitator/tree_capitator_setup
#Custom Silk Touch
function blupack:custom_silk_touch/silk_touch_setup
