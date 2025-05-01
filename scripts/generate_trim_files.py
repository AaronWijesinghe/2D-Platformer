import os
import random
import platform

def clear():
    os.system("cls" if platform.system() == "Windows" else "clear")

trims = ["bolt", "coast", "dune", "eye", "flow", "host", "raiser", "rib", "sentry", "shaper", "silence", "snout", "spire", "tide", "vex", "ward", "wayfinder", "wild"]
items = {
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "gold_nugget": (1, 4),
    "emerald": (1, 3),
    "diamond": (1, 1)
}
currencies = {
    "gold_nugget": "Gold Nugget(s)",
    "gold_ingot": "Gold Ingot(s)",
    "emerald": "Emerald(s)",
    "diamond": "Diamond(s)"
}

text = f'''
# Item: <TRIM_> Armor Trim
# Price: <PRICE> <CURRENCY_>

execute as @a at @s store result score @s currency run clear @s <CURRENCY> 0
execute as @a at @s if score @s currency matches <PRICE>.. run give @s minecraft:<TRIM>_armor_trim_smithing_template
execute as @a at @s if score @s currency matches <PRICE>.. run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute as @a at @s if score @s currency matches <PRICE>.. run clear @s <CURRENCY> <PRICE>
execute as @a at @s if score @s currency matches ..<PRICE-> run playsound minecraft:entity.guardian.death_land block @s ~ ~ ~
'''

clear()
print("[Armor Trim Listing Generator]")

os.chdir(os.path.dirname(__file__))
if os.path.exists("../datapacks/core/data/shop/function/"):
    os.chdir("../datapacks/core/data/shop/function/")
else:
    input("Couldn't find '/datapacks/core/data/shop/function/': Reinstall the core datapack! ")
    exit()

if not os.path.exists("./trims_all/"): os.mkdir("./trims_all/")
os.chdir("./trims_all/")

for trim in trims:
    currency = list(items.keys())[random.randint(0, len(items) - 1)]
    price = random.randint(items[currency][0], items[currency][1])
    open(f"{trim}.mcfunction", "w").write(text.replace("<TRIM>", trim).replace("<TRIM_>", trim.title()).replace("<CURRENCY>", currency).replace("<CURRENCY_>", currencies[currency]).replace("<PRICE>", str(price)).replace("<PRICE->", str(price - 1)))
    print(f"[{price} {currencies[currency]}] {trim.title()}")
input("\nFinished creating shop entries. ")