repeat task.wait() until game:IsLoaded()
local LocalPlayer = game:GetService('Players').LocalPlayer
repeat task.wait() until not LocalPlayer.PlayerGui:FindFirstChild('__INTRO')

-- ACCESSING GAME SERVICES
local RS = game:GetService("ReplicatedStorage")
local Save = require(RS.Library.Client.Save) -- Get the Save module
local playerSave = Save.Get(LocalPlayer) -- Properly get player's save data

if playerSave.Rebirths >= 4 then
--EVENT CONFIG
script_key = "onChiavGCRCIvnZMugrAiRltzoLQOhdr";
_G.GEVENT_FPS  = 5
_G.GDO_CARD_WORLD_EVENT = true
--_G.GCARD_PACK_TO_BUY = "Fantasy Pack"
_G.GMAX_POWER_FOR_PET_MASTERY_VIA_FUSING = "240t"
_G.GCARD_AUTO_INDEX = true
_G.GAUTO_MERCHANT = true
_G.GENCHANTS = {}
_G.GPOTIONS = {}
_G.GLOOTBOXES = {"Locked Hype Egg","Retro Pack","Nightmare Pack","Fantasy Pack","Pog Pack","Axolotl Pack"} -- to open/use the gifts.
_G.GGFX_MODE = 1 -- or 2 to still see something
_G.GZONE_TO = 99 -- to enter event from W3 intead put 999
_G.GWEBHOOK_USERID = ""
_G.GMASTERY_TO_MAX = "Economy"
_G.GWEBHOOK_LINK = ""
_G.GEVENT_UPGRADES = {
  "CheaperPacks",
  "CheaperPrestonPackMerchantPrices",
  "CheaperMysteryPackMerchantPrices",
  "EasierQuests"
}
_G.GMAIL_RECEIVERS = {""} -- for Mail items
_G.GMAIL_ITEMS = {
    ["All Huges"] = {Class = "Pet", Id = "All Huges", MinAmount = 1},
    ["Huge Arcade Dog Card"] = {Class = "Card", Id = "Huge Arcade Dog Card", MinAmount = 1, AllVariants = true},
    ["Huge Pog Cat Card"] = {Class = "Card", Id = "Huge Pog Cat Card", MinAmount = 1, AllVariants = true},
    ["Huge Storm Axolotl Card"] = {Class = "Card", Id = "Huge Storm Axolotl Card", MinAmount = 1, AllVariants = true},
    ["Huge Nightmare Dog Card"] = {Class = "Card", Id = "Huge Nightmare Dog Card", MinAmount = 1, AllVariants = true},
    ["Huge Blurred Axolotl Card"] = {Class = "Card", Id = "Huge Blurred Axolotl Card", MinAmount = 1, AllVariants = true},
    ["BIG PACKS"] = {Class = "Lootbox", Id = "BIG Pack", MinAmount = 10},
    ["Titanic Cupcake Pegasus Card"] = {Class = "Card", Id = "Titanic Cupcake Pegasus Card", MinAmount = 1, AllVariants = true},
    ["Daycare egg 5"] = {Class = "Egg", Id = "Huge Machine Egg 5", MinAmount = 1},
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
--END OF EVENT CONFIG         
        
else
--RANK CONFIG
script_key = "onChiavGCRCIvnZMugrAiRltzoLQOhdr";
_G.GPROGRESS_MODE = "Hybrid"
_G.GGFX_MODE = 1  
_G.GRANK_TO = 4
_G.GZONE_TO = 99 
_G.GWAIT_AT_GATES_TILL_RANK = 1
_G.GREBIRTH_TO = 4
_G.GHOLD_GIFTS = false
_G.GHOLD_BUNDLES = false
_G.GCOLLECT_VENDING_MACHINES = true
_G.GCOLLECT_FREE_ITEMS = true
_G.GPOTIONS = {"Coins","Lucky","Treasure Hunter","Walkspeed","Diamonds","Damage"}
_G.GPOTIONS_MAX_TIER = 19
_G.GENCHANTS = {"Diamonds", "Diamonds", "Strong Pets", "Treasure Hunter", "Mini Chest Fortune"}
_G.GLOOTBOXES = {"Locked Hype Egg"}
setfpscap(5)
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
end
--END OF RANK CONFIG
