datapack disable "file/2Dmode"
kill @e[type=armor_stand]
tp @p 26 -60 36
summon armor_stand 26 -50 36 {Invulnerable:1b}
playsound minecraft:entity.player.death block @p 26 -60 36
effect clear @p