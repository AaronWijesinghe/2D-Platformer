# Item: Chainmail Armor
# Cost: 2 Gold Ingots

execute as @a at @s store result score @s currency run clear @s gold_ingot 0
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:chainmail_helmet
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:chainmail_chestplate
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:chainmail_leggings
execute as @a at @s if score @s currency matches 2.. run give @s minecraft:chainmail_boots
execute as @a at @s if score @s currency matches 2.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches 2.. run clear @s gold_ingot 2
execute as @a at @s if score @s currency matches ..1 run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~