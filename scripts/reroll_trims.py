import os
import shutil
import random
import platform

def clear():
    os.system("cls" if platform.system() == "Windows" else "clear")

clear()
print("[Armor Trim Picker]")

os.chdir(os.path.dirname(__file__))
if os.path.exists("../datapacks/core/data/shop/function/"):
    os.chdir("../datapacks/core/data/shop/function/")
else:
    input("Couldn't find '/datapacks/core/data/shop/function/': Reinstall the core datapack! ")
    exit()

if not os.path.exists("./trims_all/"):
    input("Couldn't find '/datapacks/core/data/shop/function/trims_all/': Generate trim files first! ")
    exit()

if os.path.exists("./trims/"):
    shutil.rmtree("./trims/")
os.mkdir("./trims/")

chosen = []
trims = os.listdir("./trims_all/")
for t in range(0, 3):
    chosen += [trims[random.randint(0, len(trims) - 1)]]
    shutil.copy(f"./trims_all/{chosen[t]}", f"./trims/{chosen[t]}")
    trims.remove(chosen[t])
input("Finished moving shop entries. ")