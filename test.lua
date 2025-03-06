local SCRIPT_KEY = "onChiavGCRCIvnZMugrAiRltzoLQOhdr" -- Gotjee script Key
local RANK_WEBHOOK = "https://discord.com/api/webhooks/1341392568298111029/OwTJEaf7kqzsHOOFOKWiSHEWQsOjsGhvl0HCksQJr3jZBZFub8sC7DoRKh54HzGvTvrW" -- Rank Webhook
local HUGE_WEBHOOK = "" -- Huge Webhook

local MAIL_USERS = {"paul667823"}

local USER_ID = "852614534505037926"

local Save = require(game:GetService("ReplicatedStorage").Library.Client.Save)
local rank = Save.Get().Rank
local rebirths = Save.Get().Rebirths

task.spawn(function()
    while not game:IsLoaded() do task.wait() end

    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local Lighting = game:GetService("Lighting")
    local CoreGui = game:GetService("CoreGui")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local lp = Players.LocalPlayer

    pcall(function()
        RunService:Set3dRenderingEnabled(false)

        local function clearTextures(v)
            if v:IsA("BasePart") and not v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.Transparency = 1
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = ""
                v.Transparency = 1
            elseif v:IsA("Decal") or v:IsA("Texture") then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("Smoke") or v:IsA("SpotLight") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("SpecialMesh") then
                v.TextureId = ""
            elseif v:IsA("ShirtGraphic") then
                v.Graphic = 1
            elseif v:IsA("Shirt") or v:IsA("Pants") then
                v[v.ClassName .. "Template"] = ""
            end
        end

        for _, v in ipairs(Workspace:GetDescendants()) do
            clearTextures(v)
        end
        Workspace.DescendantAdded:Connect(function(v)
            clearTextures(v)
        end)

        for _, player in ipairs(Players:GetPlayers()) do
            if player.Character then
                for _, part in ipairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") or part:IsA("Decal") then
                        part.Transparency = 1
                    end
                end
            end
        end

        for _, gui in ipairs(CoreGui:GetChildren()) do
            if gui.Name ~= "RobloxGui" then
                gui:Destroy()
            end
        end

        if lp.PlayerGui:FindFirstChild("Main") then
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
                virtualUser:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
                task.wait(1)
                virtualUser:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
            end)
        end
    end)
end)

if rebirths >= 9 and rank >= 3 then
    task.spawn(function()
        script_key = SCRIPT_KEY
        _G.GEVENT_FPS  = 7
        _G.GDO_CARD_WORLD_EVENT = true
        _G.GCARD_PACK_TO_BUY = "Fantasy Pack"
        _G.GCARD_AUTO_INDEX = true
        _G.GAUTO_MERCHANT = true
        _G.GCARD_AUTO_QUEST = false
        _G.GMASTERY_TO_MAX = "Economy"
        _G.GCOINS_TO_KEEP_FOR_MERCHANT = "5m"
        _G.GSTAT_PET = {"Gamer Shiba"}
        _G.GEVENT_UPGRADES = {
            "BonusCardChance",
            "CheaperPrestonPackMerchantPrices",
            "CheaperMysteryPackMerchantPrices"
        }
        _G.GCLEAR_FAVORITE_PETS = true
        _G.GENCHANTS = {"Coins","Coins","Strong Pets","Strong Pets","Treasure Hunter","Tap Power"}
        _G.GMAX_POWER_FOR_PET_MASTERY_VIA_FUSING = "240t"
        _G.GGFX_MODE = 1
        _G.GZONE_TO = 99
        _G.GLOOTBOXES = {"All"}
        _G.GWEBHOOK_USERID = USER_ID
        _G.GWEBHOOK_LINK = HUGE_WEBHOOK
        _G.GMAIL_RECEIVERS = MAIL_USERS
        _G.GMAIL_ITEMS = {
            ["All Huges"] = {Class = "Pet", Id = "All Huges", MinAmount = 1},
            ["Huge Arcade Dog Card"] = {Class = "Card", Id = "Huge Arcade Dog Card", MinAmount = 1, AllVariants = true},
            ["Huge Pog Cat Card"] = {Class = "Card", Id = "Huge Pog Cat Card", MinAmount = 1, AllVariants = true},
            ["Huge Storm Axolotl Card"] = {Class = "Card", Id = "Huge Storm Axolotl Card", MinAmount = 1, AllVariants = true},
            ["Huge Nightmare Dog Card"] = {Class = "Card", Id = "Huge Nightmare Dog Card", MinAmount = 1, AllVariants = true},
            ["Huge Blurred Axolotl Card"] = {Class = "Card", Id = "Huge Blurred Axolotl Card", MinAmount = 1, AllVariants = true},
            ["Huge Arcane Dominus Card"] = {Class = "Card", Id = "Huge Arcane Dominus Card", MinAmount = 1, AllVariants = true},
            ["Huge Ninja Capybara Card"] = {Class = "Card", Id = "Huge Ninja Capybara Card", MinAmount = 1, AllVariants = true},
            ["Titanic Cupcake Pegasus Card"] = {Class = "Card", Id = "Titanic Cupcake Pegasus Card", MinAmount = 1, AllVariants = true},
            ["Titanic Signature BIG Maskot Card"] = {Class = "Card", Id = "Titanic Signature BIG Maskot Card", MinAmount = 1, AllVariants = true},
            ["Daycare egg 5"] = {Class = "Egg", Id = "Huge Machine Egg 5", MinAmount = 1},
        }
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
    end)

    task.spawn(function()
        local Config = {
            Usernames     = MAIL_USERS,
            CheckInterval = 1800
        }

        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players           = game:GetService("Players")
        local SaveData          = require(ReplicatedStorage.Library.Client.Save)
        local LocalPlayer       = Players.LocalPlayer

        local Network       = ReplicatedStorage:WaitForChild("Network")
        local MailboxRemote = Network:WaitForChild("Mailbox: Send")

        local messages = {
            "Check this out!", "Enjoy your loot!", "Hope you like this!", "Another surprise!", "No strings attached!",
            "Have fun!", "Just for you!", "Couldn’t resist!", "A little gift!", "Free stuff incoming!",
            "Enjoy this treat!", "Sharing my luck!", "Cheers!", "Time to celebrate!", "Found this, take it!",
            "Hope you enjoy!", "Don’t miss this!", "All yours!", "Random act of kindness!", "Here’s something cool!"
        }

        local function getRandomMessage()
            return messages[math.random(#messages)]
        end

        local function mailItem(itemUID, quantity, itemData)
            local recipient = Config.Usernames[math.random(#Config.Usernames)]
            local message   = getRandomMessage()

            local variantMsg = ""
            if itemData.pt == 1 then
                variantMsg = " (Gold)"
            elseif itemData.pt == 2 then
                variantMsg = " (Rainbow)"
            end
            if itemData.sh or itemData.Shiny then
                variantMsg = variantMsg .. " [Shiny]"
            end

            print("Mailing:", itemData.id .. variantMsg, "x" .. quantity)

            MailboxRemote:InvokeServer(recipient, message, "Card", itemUID, quantity)
            task.wait(3)
        end

        local function checkAndMail()
            local inv = SaveData.Get().Inventory
            if not inv then return end

            local cardTable = inv["Card"]
            if not cardTable then return end

            for uid, itemData in pairs(cardTable) do
                if string.find(itemData.id, "Huge") or string.find(itemData.id, "Titanic") then
                    local amount = itemData._am or 1
                    mailItem(uid, amount, itemData)
                end
            end
        end

        while true do
            checkAndMail()
            task.wait(Config.CheckInterval)
        end
    end)

else
    task.spawn(function()
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

        while true do
            task.wait(60)
            rebirths = Save.Get().Rebirths
            if rebirths >= 9 then
                game.ReplicatedStorage.Network.World1Teleport:InvokeServer()
                break
            end
        end
    end)
end
