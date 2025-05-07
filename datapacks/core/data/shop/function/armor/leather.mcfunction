# Item: Leather Armor
# Cost: 3 Gold Nuggets

execute as @a at @s store result score @s currency run clear @s gold_nugget 0
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:leather_helmet
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:leather_chestplate
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:leather_leggings
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:leather_boots
execute as @a at @s if score @s currency matches 3.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a at @s if score @s currency matches 3.. run clear @s gold_nugget 2
execute as @a at @s if score @s currency matches ..2 run playsound minecraft:entity.guardian.death_land master @s ~ ~ ~