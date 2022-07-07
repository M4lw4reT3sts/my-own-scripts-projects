--[[

    SOCIAL BLACKLISTER V4/LOCK API

    Replace "Username" with the username of said player that you want blacklisted (Case sensitive)
    Lock API created by Tech/T3chn0
    Part of Shortcut v2, but feel free to use it for your custom scripts.
    Obfuscated to prevent skids

    Commands:
    -lock  Regular lock basically (pm + blind)
    -sillock  Silent lock (just punish)
    -gravlock  Uses gravity to lock the player out instead (for me_ or friends_ users)
    -unlock (plr) Unlocks the user from any of the locks stated above
]]

shared.banana = {"Username","Username2","Username3","Username4","Username5","Username6"} 
-- Regular lock (RECOMMENDED) ^^^

-- // Alternatives \\ --

shared.sillock = {} -- Sil lock
shared.gravlock = {} -- Gravlock

-- // API \\ --

loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/my-own-scripts-projects/main/APIPART2.lua'),true))()