execute as @e[type=minecraft:player,limit=1] at @s run tp @s ~ ~ ~ facing ~ ~ -90
execute as @e[type=minecraft:player,limit=1] at @s run tp @e[type=armor_stand,limit=1] ~ ~ ~ facing entity @e[type=player,limit=1]
execute as @e[type=minecraft:armor_stand,limit=1] at @s run tp @s ~ ~ ~ facing ~ ~ 90
execute as @p at @s if block ~ ~ ~ light run tp @s ~ ~ ~-0.75

execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:gold_block run function devtest:finish_level
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:emerald_block run function devtest:finish_level
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:diamond_block run function devtest:finish_level_diamond

execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:slime_block run effect give @s slow_falling 1 0 true
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:slime_block run playsound minecraft:block.slime_block.break master @s
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:slime_block run tp @s ~ ~6 ~
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ minecraft:shulker_box run effect give @s levitation 3 1 true
execute as @e[type=minecraft:player] at @s if block ~ ~-1 ~ minecraft:purple_shulker_box run effect give @s levitation 1 0 true

execute as @e[type=minecraft:player] at @s if block ~ ~ ~ minecraft:lava run function devtest:level_fail_fire
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:barrier run function devtest:level_fail_generic
execute as @e[type=minecraft:player] at @s if block ~ ~-0.01 ~ minecraft:magma_block run function devtest:level_fail_fire

effect give @a invisibility 1 0 true
effect give @a fire_resistance 1 0 true