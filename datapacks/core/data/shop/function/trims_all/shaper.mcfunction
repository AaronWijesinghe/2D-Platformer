
# Item: Shaper Armor Trim
# Price: 3 Emerald(s)

execute as @a at @s store result score @s currency run clear @s emerald 0
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:shaper_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 3.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches 3.. run clear @s emerald 3
execute as @a at @s if score @s currency matches ..2 run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~
