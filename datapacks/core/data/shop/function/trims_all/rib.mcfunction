
# Item: Rib Armor Trim
# Price: 4 Gold Nugget(s)

execute as @a at @s store result score @s currency run clear @s gold_nugget 0
execute as @a at @s if score @s currency matches 4.. run give @s minecraft:rib_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 4.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a at @s if score @s currency matches 4.. run clear @s gold_nugget 4
execute as @a at @s if score @s currency matches ..3 run playsound minecraft:entity.guardian.death_land master @s ~ ~ ~
