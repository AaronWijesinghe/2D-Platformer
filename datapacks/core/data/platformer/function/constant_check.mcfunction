gamerule fallDamage false
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule keepInventory true

data modify entity @e[type=armor_stand,limit=1] Fire set value false
data modify entity @e[type=armor_stand,limit=1] Invulnerable set value 1

# 35 -58 40 - player spawn
# 21 -58.5 41 - armor stand spawn
execute as @e[type=minecraft:player] at @s if entity @s[x=35,y=-58,z=40,distance=..3] run tp @e[type=armor_stand] 21 -58.5 41 270 0
execute as @e[type=minecraft:player] at @s if entity @s[x=35,y=-58,z=40,distance=..3] run datapack disable "file/2Dmode"
execute as @e[type=minecraft:player] at @s if entity @s[x=35,y=-58,z=40,distance=..3] run datapack disable "file/dev2Dmode"
execute as @e[type=minecraft:player] at @s if entity @s[x=35,y=-58,z=40,distance=..3] run time set noon