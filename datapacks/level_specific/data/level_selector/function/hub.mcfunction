# Hub Easter Egg (Super Mario)
# Light Block Fill Command: /fill 19 -57 22 48 -49 22 minecraft:light[level=0] replace air
# Part 2: /fill 42 -59 22 35 -61 22 minecraft:light[level=0] replace air
datapack enable "file/2Dmode"
time set noon
tp @p 20 -57 21

# Any level close to the Hub requires this to bypass the teleport animation.
tp @e[type=armor_stand] ~ 1000 ~