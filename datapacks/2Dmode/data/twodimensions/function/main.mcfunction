gamemode adventure @p

execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:gold_block run give @p gold_nugget 2
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:gold_block run function platformer:finish_level

execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:emerald_block run give @p emerald
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:emerald_block run function platformer:finish_level

execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:diamond_block run give @p diamond
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:diamond_block run function platformer:finish_level

execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ minecraft:slime_block run tp @s ~ ~7 ~
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ minecraft:shulker_box run effect give @s levitation 3 1 true
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ minecraft:purple_shulker_box run effect give @s levitation 1 0 true

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ minecraft:lava run function platformer:level_fail
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:barrier run function platformer:level_fail
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:magma_block run function platformer:level_fail

execute as @e[type=minecraft:player,limit=1] at @s run tp @e[type=armor_stand] ~ ~ ~ facing ~ ~ ~90
execute as @e[type=minecraft:player,limit=1] at @s run tp @s ~ ~ ~ facing ~ ~ ~-90
execute as @a at @s if block ~ ~ ~ light run tp @s ~ ~ ~-0.75

effect give @a invisibility 1 0 true
effect give @a fire_resistance 1 0 true