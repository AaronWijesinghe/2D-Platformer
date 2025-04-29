# Item: Tide Armor Trim
# Cost: 2 Emeralds

execute as @a at @s store result score @s currency run clear @s emerald 0
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:tide_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 2.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches 2.. run clear @s emerald 2
execute as @a at @s if score @s currency matches ..1 run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~