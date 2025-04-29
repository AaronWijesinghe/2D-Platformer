# Item: Netherite Armor
# Cost: 5 Gold Ingots

execute as @a at @s store result score @s currency run clear @s gold_ingot 0
execute as @a at @s if score @s currency matches 5.. run give @s minecraft:netherite_helmet
execute as @a at @s if score @s currency matches 5.. run give @s minecraft:netherite_chestplate
execute as @a at @s if score @s currency matches 5.. run give @s minecraft:netherite_leggings
execute as @a at @s if score @s currency matches 5.. run give @s minecraft:netherite_boots
execute as @a at @s if score @s currency matches 5.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches 5.. run clear @s gold_ingot 5
execute as @a at @s if score @s currency matches ..4 run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~