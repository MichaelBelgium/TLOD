# TLOD
The Land Of Death - A SA:MP Zombie gamemode (rescript)

<h1>The Land Of Death</h1>

I never got in touch of a zombie gamemode but i grabbed one from the San Andreas Multiplayer Forums and made an own zombie script based of the script from the forums. Now it's an open source zombie gamemode with several features. Upcoming edits are planned and ofcourse more stuff.

<h2>Features</h2>
* SQL Register/login
* Inventory system
* Loot system
* Needs system (hunger, sleep, thirst)
* Crafting (chop trees, mine iron, and more stuff)
* Fishing
* Deers (for meat !!)
* Experience/level system
* and ofcourse ZOMBIES (npc's

<h2>Requirements</h2>
So in case you wonder .. what do i need to run this mode ?

Plugins:
* <a href="https://github.com/pBlueG/SA-MP-MySQL/releases/tag/R39-2">MySQL Plugin R39-2</a> (or older - without a database you can't run this.)
* <a href="https://github.com/zeelorenc/fcnpc">FCNPC</a> (for the zombies)
* <a href="http://forum.sa-mp.com/showthread.php?t=120013">MapAndreas</a> (mostly for dropping items)
* <a href="http://forum.sa-mp.com/showthread.php?t=120356">Sscanf</a> 

Includes:
* <a href="https://github.com/Southclaw/progress2">Progress2</a> (for the needs system)
* <a href="http://forum.sa-mp.com/showthread.php?t=91354">ZCMD</a> (command processor)


<h2>Settings</h2>
Basic defines/settings:

```PAWN
#define GNAME 		"TLOD 1.0"
#define MNAME 		"|-[LandDeath]-|"
#define HNAME 		"The Land Of Death"

#define MAX_ZOMBIES     100
#define MAX_PLAYERS     30
#define MAX_VEHICLES    50
#define MAX_ITEMS       350
#define MAX_INV_ITEMS   50
#define MAX_DEERS       50
#define MAX_TREES       450

#define SQL_PASSWORD    ""
#define SQL_USER        "TLOD"
#define SQL_DB          "TLOD"
#define SQL_SERVER      "127.0.0.1"
```

<h2>Custom functions</h2>
Most of the custom functions are for the inventory system. but ofcourse you can add more trees, cars and items !
These are the most important:

```PAWN
stock CreateTree(model,Float:x,Float:y,Float:z);
stock CreateCar(model,Float:x,Float:y,Float:z,Float:rot);
stock CreateRandomItemInArea(Float: minX, Float: minY, Float: maxX, Float: maxY);
stock CreateItem(model,amount,Float:x,Float:y,Float:z,Float:rx,Float:ry,Float:rz);

stock CountInventoryItems(playerid);
stock DropAllItemsFromInventory(playerid);
stock RemoveItemFromInventory(playerid,slot,amount = 1);
stock DropItemFromInventory(playerid,slot);
stock MoveItemsInInventory(playerid,startslot);
stock AddItemToInventory(playerid,modelid,amount = 1);
stock IsItemInInventory(playerid,modelid,amount = 1);
stock GetItemInInventory(playerid,modelid);
stock SavePlayerInventory(playerid);

public OnPlayerInventoryLoad(playerid)
```

<h2>Credits</h2>
* <a href="http://forum.sa-mp.com/showthread.php?t=528864">VinPure</a>, without him i couldn't <a href="http://forum.sa-mp.com/showthread.php?t=528864">get started</a>
* Y_Less, Sscanf
* BlueG/maddinat0r, MySQL plugin
* Kalcor, MapAndreas
* SouthClaw, progress2
* Me, re-scripting from scratch
