#Silk Touch
execute as @a[scores={mine_spawner=1..},nbt={SelectedItem:{tag:{ench:[{id:33}]}}}] at @s run give @p mob_spawner 1
scoreboard players set @a[scores={mine_spawner=1..}] mine_spawner 0