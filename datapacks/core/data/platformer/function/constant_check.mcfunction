gamerule fallDamage false
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule keepInventory true

data modify entity @e[type=armor_stand,limit=1] Fire set value false
execute as @e[type=minecraft:player] at @s if entity @s[x=26,y=-60,z=36,distance=..1] run tp @e[type=armor_stand] 26 -56 36
execute as @e[type=minecraft:player] at @s if entity @s[x=26,y=-60,z=36,distance=..1] run datapack disable "file/2Dmode"