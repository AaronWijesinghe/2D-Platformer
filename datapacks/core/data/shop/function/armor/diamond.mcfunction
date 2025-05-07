# Item: Diamond Armor
# Cost: 3 Diamonds

execute as @a at @s store result score @s currency run clear @s diamond 0
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:diamond_helmet
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:diamond_chestplate
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:diamond_leggings
execute as @a at @s if score @s currency matches 3.. run give @s minecraft:diamond_boots
execute as @a at @s if score @s currency matches 3.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a at @s if score @s currency matches 3.. run clear @s diamond 3
execute as @a at @s if score @s currency matches ..2 run playsound minecraft:entity.guardian.death_land master @s ~ ~ ~