
# Item: Wild Armor Trim
# Price: 2 Gold Nugget(s)

execute as @a at @s store result score @s currency run clear @s gold_nugget 0
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:wild_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 2.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches 2.. run clear @s gold_nugget 2
execute as @a at @s if score @s currency matches ..1 run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~
