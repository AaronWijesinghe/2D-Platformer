gamerule fallDamage false
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule keepInventory true

data modify entity @e[type=armor_stand,limit=1] Fire set value false
data modify entity @e[type=armor_stand,limit=1] Invulnerable set value 1
execute as @e[type=minecraft:player] at @s if entity @s[x=26,y=-60,z=36,distance=..1] run tp @e[type=armor_stand] 26 -56 36
execute as @e[type=minecraft:player] at @s if entity @s[x=26,y=-60,z=36,distance=..1] run datapack disable "file/2Dmode"
execute as @e[type=minecraft:player] at @s if entity @s[x=26,y=-60,z=36,distance=..1] run time set noon

execute as @e[type=minecraft:player] at @s if entity @s[x=29,y=-60,z=35,distance=..1] run tp @e[type=minecraft:armor_stand] 37 -59 36 facing ~-90 ~ ~

execute as @e[type=minecraft:player] at @s unless entity @s[x=28,y=-60,z=35,distance=..2] run setblock 28 -60 35 minecraft:dark_oak_door[open=true,half=lower]
execute as @e[type=minecraft:player] at @s unless entity @s[x=28,y=-60,z=35,distance=..2] run setblock 28 -59 35 minecraft:dark_oak_door[open=true,half=upper]
execute as @e[type=minecraft:player] at @s if entity @s[x=28,y=-60,z=35,distance=..2] run setblock 28 -60 35 minecraft:dark_oak_door[open=false,half=lower]
execute as @e[type=minecraft:player] at @s if entity @s[x=28,y=-60,z=35,distance=..2] run setblock 28 -59 35 minecraft:dark_oak_door[open=false,half=upper]