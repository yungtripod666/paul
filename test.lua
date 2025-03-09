local SCRIPT_KEY = "onChiavGCRCIvnZMugrAiRltzoLQOhdr"
local RANK_WEBHOOK = "https://discord.com/api/webhooks/1341392568298111029/OwTJEaf7kqzsHOOFOKWiSHEWQsOjsGhvl0HCksQJr3jZBZFub8sC7DoRKh54HzGvTvrW" -- Rank Webhook
local HUGE_WEBHOOK = "https://discord.com/api/webhooks/1271619038665113683/RsbRDpwOVcVn2gZlMI7ROEevSKICULGHHHtTGZlCwiCKRq6cJZwVOQNzHGpXmh19dKPC" -- Huge Webhook
local MAIL_USERS = {"paul667823"}
local USER_ID = "852614534505037926"

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Save = require(ReplicatedStorage.Library.Client.Save)
local Directory = require(ReplicatedStorage.Library.Directory)
task.wait(2)

while not Save.Get() do
    task.wait(3)
end
while not Save.Get().Inventory do
    task.wait(3)
end

local function branchA()
    task.wait(2)
    script_key = SCRIPT_KEY
    _G.GPROGRESS_MODE = "Hybrid"
    _G.GWEBHOOK_USERID = USER_ID
    _G.GWEBHOOK_LINK = RANK_WEBHOOK
    _G.GMAIL_RECEIVERS = MAIL_USERS
    _G.GRANK_TO = 3
    _G.GZONE_TO = 999
    _G.GMAX_EGG_SLOTS = 35
    _G.GMAX_EQUIP_SLOTS = 35
    _G.GWAIT_AT_GATES_TILL_RANK = 3
    _G.GHOLD_GIFTS = false
    _G.GHOLD_BUNDLES = false
    _G.GLOOTBOXES = {"All"}
    _G.GMAX_ZONE_UPGRADE_COST = 100000
    _G.GMASTERY_TO_MAX = "Eggs"
    _G.GIGNORE_SLEDRACE = true
    _G.GIGNORE_ALL_INSTANCES = true
    _G.GCOLLECT_FREE_ITEMS = false
    _G.GFX_MODE = 1
    _G.GCOLLECT_VENDING_MACHINES = false
    _G.GPOTIONS = {"Lucky", "Damage", "Coins", "Treasure Hunter", "Diamonds", "The Cocktail"}
    _G.GENCHANTS = {"Tap Power", "Coins", "Strong Pets", "Criticals"}
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
    
    task.spawn(function()
        while true do
            task.wait(60)
            local currentRank = Save.Get().Rank
            local currentRebirths = Save.Get().Rebirths
            if currentRebirths >= 9 and currentRank >= 3 then
                TeleportService:Teleport(8737899170)
                break
            end
        end
    end)
end

local TeleportService = game:GetService("TeleportService")

local function branchB()
    task.wait(2)
    task.spawn(function()
        while game.PlaceId ~= 8737899170 do
            game.ReplicatedStorage.Network.World1Teleport:InvokeServer()
            task.wait(10)
        end
    end)
    task.wait(2)
        script_key = SCRIPT_KEY
        _G.GPROGRESS_MODE = "Hybrid"
        _G.GGFX_MODE = 1  
        _G.GWEBHOOK_USERID = USER_ID 
        _G.GWEBHOOK_LINK = HUGE_WEBHOOK 
        _G.GRANK_TO = 11
        _G.GZONE_TO = 99
        _G.GMAX_EGG_SLOTS = 99
        _G.GMAIL_RECEIVERS = MAIL_USERS
        _G.GMAX_EQUIP_SLOTS = 99
        _G.GUSE_SPRINKLERS = true
        _G.GCLEAR_FAVORITE_PETS = true
        _G.GLOOTBOXES = {"Locked Hype Egg"}
        _G.GUSE_ULTIMATES = {"Chest Spell","UFO", "Tsunami","Ground Pound"} -- for multiple
        _G.GEVENT_ITEMS_TO_USE = {"Mini Pinata"}
        _G.GDO_LUCKY_WORLD_EVENT = true
        _G.GHATCH_LOBBY = true
        _G.GMAKE_LUCKY_GIFTS = true
        _G.GEVENT_UPGRADES = {
           "LuckyRaidDamage",
           "LuckyRaidPets",
           "LuckyRaidEggCost",
           "LuckyRaidMoreCurrency",
           "LuckyRaidBetterLoot",
           "LuckyRaidTitanicChest",
           "LuckyRaidHugeChest",
           "LuckyRaidXP",
           --"LuckyRaidPetSpeed",
        }  -- can remove/comment the ones you don't want to upgrade
        --_G.GLOOTBOXES = {"Locked Hype Egg","Lucky Gift"}
        _G.GMAX_MAIL_COST = "1m"
        _G.GHOLD_GIFTS = false
        _G.GHOLD_BUNDLES = false
        _G.GMAX_ZONE_UPGRADE_COST = 500000
        _G.GIGNORE_SLEDRACE = true
        _G.GUSE_FLAGS = {"Fortune Flag","Coins Flag","Magnet Flag"}
        _G.GPOTIONS = {"Coins","Lucky","The Cocktail","Huge","Treasure Hunter","Walkspeed","Diamonds","Damage"}
        _G.GFRUITS = {"Watermelon","Candycane","Apple","Rainbow","Pineapple","Orange","Banana"}
        _G.GENCHANTS = {"Happy Pets", "Strong Pets", "Criticals","Strong Pets","Tap Power","Coins","Lucky Eggs"}
        _G.GIGNORE_ALL_INSTANCES = true 
        _G.GMASTERY_TO_MAX = "Eggs" 
        _G.GMAIL_ITEMS = {
          ["All Huges"] = {Class = "Pet", Id = "All Huges", Amount = 1},
          ["Secret pet1"] = {Class = "Pet", Id = "Rainbow Swirl", MinAmount = 1, AllVariants = true},
          ["Secret pet2"] = {Class = "Pet", Id = "Banana", MinAmount = 1, AllVariants = true},
          ["Secret pet3"] = {Class = "Pet", Id = "Coin", MinAmount = 1, AllVariants = true},
          ["Secret pet4"] = {Class = "Pet", Id = "Lucky Block", MinAmount = 1, AllVariants = true},
          ["Send all Diamonds"] = {Class = "Currency", Id = "Diamonds", MinAmount = "100m"},
          ["Daycare egg"] = {Class = "Egg", Id = "Huge Machine Egg 4", MinAmount = 1},
          ["Daycare egg2"] = {Class = "Egg", Id = "Huge Machine Egg 5", MinAmount = 1},
          ["Hype Egg 2 "] = {Class = "Lootbox", Id = "Hype Egg 2", MinAmount = 1},
          ["Lucky gift"] = {Class = "Lootbox", Id = "Lucky Gift", MinAmount = 30}, 
          ["Love Gift"] = {Class = "Lootbox", Id = "Love Gift", MinAmount = 1},
          ["Adoption Gift"] = {Class = "Lootbox", Id = "Adoption Gift", MinAmount = 1},
          ["Autumn Gift"] = {Class = "Lootbox", Id = "Autumn Gift", MinAmount = 1},
          ["Candy Corn Gift"] = {Class = "Lootbox", Id = "Candy Corn Gift", MinAmount = 1},
          ["Clan Gift"] = {Class = "Lootbox", Id = "Clan Gift", MinAmount = 1},
          ["Doodle Gift"] = {Class = "Lootbox", Id = "Doodle Gift", MinAmount = 1},
          ["Elemental Gift"] = {Class = "Lootbox", Id = "Elemental Gift", MinAmount = 1},
          ["Hellfire Gift"] = {Class = "Lootbox", Id = "Hellfire Gift", MinAmount = 1},
          ["Jolly Gift"] = {Class = "Lootbox", Id = "Jolly Gift", MinAmount = 1},
          ["Pumpkin Gift"] = {Class = "Lootbox", Id = "Pumpkin Gift", MinAmount = 1},
          ["Snowflake Gift"] = {Class = "Lootbox", Id = "Snowflake Gift", MinAmount = 1},
          ["Turkey Gift"] = {Class = "Lootbox", Id = "Turkey Gift", MinAmount = 1},
          ["Hype Egg"] = {Class = "Lootbox", Id = "Hype Egg", MinAmount = 1},
          ["2024 X-Large Christmas Present"] = {Class = "Lootbox", Id = "2024 X-Large Christmas Present", MinAmount = 1},
          ["2024 Large Christmas Present"] = {Class = "Lootbox", Id = "2024 Large Christmas Present", MinAmount = 1},
          ["Diamond"] = {Class = "Seed", Id = "Diamond", MinAmount = 1000},
          ["Overload Charm"] = {Class = "Charm", Id = "Overload", MinAmount = 1},
          ["Royalty Charm"] = {Class = "Charm", Id = "Royalty", MinAmount = 1},
          ["Charm Stone"] = {Class = "Misc", Id = "Charm Stone", MinAmount = 1000},
          ["Insta Plant Capsule"] = {Class = "Misc", Id = "Insta Plant Capsule", MinAmount = 1000},
          ["Seed Bag"] = {Class = "Misc", Id = "Seed Bag", MinAmount = 1000},
          ["Spinny Wheel Ticket"] = {Class = "Misc", Id = "Spinny Wheel Ticket", MinAmount = 2000},
          ["Tech Spinny Wheel Ticket"] = {Class = "Misc", Id = "Tech Spinny Wheel Ticket", MinAmount = 2000},
          ["Void Spinny Wheel Ticket"] = {Class = "Misc", Id = "Void Spinny Wheel Ticket", MinAmount = 1000},
          ["Secret Key"] = {Class = "Misc", Id = "Secret Key", Amount = 50},
          ["Secret Key Upper Half"] = {Class = "Misc", Id = "Secret Key Upper Half", MinAmount = 1000},
          ["Secret Key Lower Half"] = {Class = "Misc", Id = "Secret Key Lower Half", MinAmount = 1000},
          ["Void Key"] = {Class = "Misc", Id = "Void Key", MinAmount = 50},
          ["Void Key Upper Half"] = {Class = "Misc", Id = "Void Key Upper Half", MinAmount = 1000},
          ["Void Key Lower Half"] = {Class = "Misc", Id = "Void Key Lower Half", MinAmount = 1000},
          ["Tech Key"] = {Class = "Misc", Id = "Tech Key", MinAmount = 50},
          ["Tech Key Upper Half"] = {Class = "Misc", Id = "Tech Key Upper Half", MinAmount = 1000},
          ["Tech Key Lower Half"] = {Class = "Misc", Id = "Tech Key Lower Half", MinAmount = 1000},
          ["Crystal Key"] = {Class = "Misc", Id = "Crystal Key", MinAmount = 100},
          ["Crystal Key Upper Half"] = {Class = "Misc", Id = "Crystal Key Upper Half", MinAmount = 1000},
          ["Crystal Key Lower Half"] = {Class = "Misc", Id = "Crystal Key Lower Half", MinAmount = 1000}, 
          ["Tsunami"] = {Class = "Ultimate", Id = "Tsunami", MinAmount = 1}, 
          ["Chest Spell"] = {Class = "Ultimate", Id = "Chest Spell", MinAmount = 1}, 
        }
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
end

task.spawn(function()
    task.wait(5)
    local currentRank = Save.Get().Rank
    local currentRebirths = Save.Get().Rebirths

    if currentRebirths < 9 then
        branchA()
    elseif currentRebirths >= 9 and currentRank >= 3 then
        branchB()
    end
end)
