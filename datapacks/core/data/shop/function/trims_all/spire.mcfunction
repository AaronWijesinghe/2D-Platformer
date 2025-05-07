
# Item: Spire Armor Trim
# Price: 1 Gold Nugget(s)

execute as @a at @s store result score @s currency run clear @s gold_nugget 0
execute as @a at @s if score @s currency matches 1.. run give @s minecraft:spire_armor_trim_smithing_template
execute as @a at @s if score @s currency matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a at @s if score @s currency matches 1.. run clear @s gold_nugget 1
execute as @a at @s if score @s currency matches ..0 run playsound minecraft:entity.guardian.death_land master @s ~ ~ ~
