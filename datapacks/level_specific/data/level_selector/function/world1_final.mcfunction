# Beat The Game
# Light Block Fill Command: /fill 97 -4 -45 50 -60 -45 minecraft:light[level=0] replace air
datapack enable "file/2Dmode"
time set night
tp @p 51 -60 -45
execute if block 43 -58 82 dragon_egg run setblock 53 -38 -46 air