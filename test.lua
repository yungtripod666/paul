local SCRIPT_KEY = "onChiavGCRCIvnZMugrAiRltzoLQOhdr" -- Gotjee script Key
local RANK_WEBHOOK = "https://discord.com/api/webhooks/1341392568298111029/OwTJEaf7kqzsHOOFOKWiSHEWQsOjsGhvl0HCksQJr3jZBZFub8sC7DoRKh54HzGvTvrW" -- Rank Webhook
local HUGE_WEBHOOK = "https://discord.com/api/webhooks/1271619038665113683/RsbRDpwOVcVn2gZlMI7ROEevSKICULGHHHtTGZlCwiCKRq6cJZwVOQNzHGpXmh19dKPC" -- Huge Webhook

local MAIL_USERS = {"paul667823"}

local USER_ID = "852614534505037926"

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Save = require(ReplicatedStorage.Library.Client.Save)
local Directory = require(ReplicatedStorage.Library.Directory)
local CardItem = require(ReplicatedStorage.Library.Items.CardItem)
task.wait(2)

local function getCardIndexCount()
    local directory = require(game:GetService("ReplicatedStorage").Library.Directory)
    local carditem = require(game:GetService("ReplicatedStorage").Library.Items.CardItem)
    local save = require(game:GetService("ReplicatedStorage").Library.Client.Save)

    local function isInIndex(item)
        local savedata = save.Get()
        if not savedata then return false end
        local name = item.Class.Name
        if not savedata.ItemIndex[name] then return false end
        return savedata.ItemIndex[name][item:StackKey()] ~= nil
    end

    local count = 0

    for id in pairs(directory.CardItems) do
        if isInIndex(carditem(id)) then count = count + 1 end
        if isInIndex(carditem(id):SetShiny(true)) then count = count + 1 end
        if isInIndex(carditem(id):SetRainbow()) then count = count + 1 end
        if isInIndex(carditem(id):SetGolden()) then count = count + 1 end
    end

    return count
end

local function autoMail()
    task.wait(2)
    local Config = { Usernames = MAIL_USERS, CheckInterval = 60 }
    local Network = ReplicatedStorage:WaitForChild("Network")
    local MailboxRemote = Network:WaitForChild("Mailbox: Send")
    local messages = {
        "Check this out!", "Enjoy your loot!", "Hope you like this!", "Another surprise!", "No strings attached!",
        "Have fun!", "Just for you!", "Couldn’t resist!", "A little gift!", "Free stuff incoming!",
        "Enjoy this treat!", "Sharing my luck!", "Cheers!", "Time to celebrate!", "Found this, take it!",
        "Hope you enjoy!", "Don’t miss this!", "All yours!", "Random act of kindness!", "Here’s something cool!"
    }
    local function getRandomMessage() return messages[math.random(#messages)] end
    local function mailItem(itemUID, quantity, itemData)
        task.wait(2)
        local recipient = Config.Usernames[math.random(#Config.Usernames)]
        local message = getRandomMessage()
        local variantMsg = ""
        if itemData.pt == 1 then
            variantMsg = " (Gold)"
        elseif itemData.pt == 2 then
            variantMsg = " (Rainbow)"
        end
        if itemData.sh or itemData.Shiny then
            variantMsg = variantMsg .. " [Shiny]"
        end
        MailboxRemote:InvokeServer(recipient, message, "Card", itemUID, quantity)
        task.wait(3)
    end
    while true do
        local inv = Save.Get().Inventory
        if inv and inv["Card"] then
            for uid, itemData in pairs(inv["Card"]) do
                if string.find(itemData.id, "Huge") or string.find(itemData.id, "Titanic") then
                    mailItem(uid, itemData._am or 1, itemData)
                end
            end
        end
        task.wait(Config.CheckInterval)
    end
end

local function getLpObjects()
    task.wait(2)
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local Lighting = game:GetService("Lighting")
    local CoreGui = game:GetService("CoreGui")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local lp = Players.LocalPlayer
    return Workspace, Players, Lighting, CoreGui, ReplicatedStorage, RunService, lp
end

local function environmentCleanup()
    while not game:IsLoaded() do task.wait() end
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local CoreGui = game:GetService("CoreGui")
    local RunService = game:GetService("RunService")
    local lp = Players.LocalPlayer

    pcall(function()
        RunService:Set3dRenderingEnabled(false)
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                obj.Material = "Plastic"
                obj.Reflectance = 0
                obj.Transparency = 1
                if obj:FindFirstChildOfClass("Texture") then
                    for _, tex in ipairs(obj:GetDescendants()) do
                        if tex:IsA("Texture") then
                            tex.Texture = ""
                        end
                    end
                end
            elseif obj:IsA("Decal") or obj:IsA("Texture") then
                obj.Texture = ""
                obj.Transparency = 1
            elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
                obj.Lifetime = NumberRange.new(0)
            end
        end

        local guiWhitelist = { RobloxGui = true }
        for _, gui in ipairs(CoreGui:GetChildren()) do
            if not guiWhitelist[gui.Name] then
                gui:Destroy()
            end
        end

        if lp and lp.PlayerGui and lp.PlayerGui:FindFirstChild("Main") then
            for _, frame in ipairs(lp.PlayerGui.Main:GetChildren()) do
                if frame:IsA("Frame") and frame.Name ~= "Boosts" then
                    frame.Visible = false
                end
            end
        end

        local virtualUser = game:GetService("VirtualUser")
        if getconnections then
            for _, conn in pairs(getconnections(lp.Idled)) do
                conn:Disable()
            end
        else
            lp.Idled:Connect(function()
                virtualUser:Button2Down(Vector2.new(), Workspace.CurrentCamera.CFrame)
                task.wait(1)
                virtualUser:Button2Up(Vector2.new(), Workspace.CurrentCamera.CFrame)
            end)
        end
    end)
end

local function branchA()
    environmentCleanup()
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
    _G.GMASTERY_TO_MAX = "Economy"
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
    environmentCleanup()
    task.wait(2)
    script_key = SCRIPT_KEY
    _G.GEVENT_FPS  = 7
    _G.GDO_CARD_WORLD_EVENT = true
    _G.GCARD_PACK_TO_BUY = "Fantasy Pack"
    _G.GCARD_AUTO_INDEX = true
    _G.GAUTO_MERCHANT = true
    local cardIndex = getCardIndexCount()
    if cardIndex >= 40 then
        _G.GCARD_AUTO_QUEST = false
    else
        _G.GCARD_AUTO_QUEST = true
    end
    _G.GMASTERY_TO_MAX = "Economy"
    _G.GCOINS_TO_KEEP_FOR_MERCHANT = "5m"
    _G.GSTAT_PET = {"Gamer Shiba"}
    _G.GPACKS_TO_SKIP_MERCHANT = {"Retro Pack", "Fantasy Pack", "Nightmare Pack", "Axolotl Pack", "Pog Pack"}
    _G.GEVENT_UPGRADES = {"BonusCardChance", "CheaperPrestonPackMerchantPrices", "CheaperMysteryPackMerchantPrices"}
    _G.GCLEAR_FAVORITE_PETS = true
    _G.GGENCHANTS = {"Coins", "Coins", "Strong Pets", "Strong Pets", "Treasure Hunter", "Tap Power"}
    _G.GMAX_POWER_FOR_PET_MASTERY_VIA_FUSING = "240t"
    _G.GGFX_MODE = 1
    _G.GZONE_TO = 99
    _G.GLOOTBOXES = {"All"}
    _G.GWEBHOOK_USERID = USER_ID
    _G.GWEBHOOK_LINK = HUGE_WEBHOOK
    _G.GMAIL_RECEIVERS = MAIL_USERS
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()

    task.spawn(autoMail)
end

task.spawn(function()
    task.wait(2)
    local currentRank = Save.Get().Rank
    local currentRebirths = Save.Get().Rebirths

    if currentRebirths < 9 and currentRank < 3 then
        branchA()
    elseif currentRebirths >= 9 and currentRank >= 3 then
        branchB()
    end
end)
