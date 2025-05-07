
# Item: Silence Armor Trim
# Price: 1 Emerald(s)

execute as @a at @s store result score @s currency run clear @s emerald 0
execute as @a at @s if score @s currency matches 1.. run give @s minecraft:silence_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a at @s if score @s currency matches 1.. run clear @s emerald 1
execute as @a at @s if score @s currency matches ..0 run playsound minecraft:entity.guardian.death_land master @s ~ ~ ~
