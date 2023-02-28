local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/FFierce/Fenx-X/main/r.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Fenx X",
    LoadingTitle = "Fenx X",
    LoadingSubtitle = "by FierceDev",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "BedX"
    },
    Discord = {
        Enabled = false,
        Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Fenx X",
        Subtitle = "Key System",
        Note = "fiercecastle.com",
        FileName = "fenxUIv2",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "dad"
    }
})

local plr = game.Players.LocalPlayer

local Tab = Window:CreateTab("Bedwars", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Bedwars")
local TabMenu = Window:CreateTab("Menus", 4483362458) -- Title, Image
local Section = TabMenu:CreateSection("Menus")
local DefaultButton = Tab:CreateButton({
    Name = "Bedwars",
    Callback = function(Value)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end,
 })

 local DefaultButton = TabMenu:CreateButton({
    Name = "Infinite Yield",
    Callback = function(Value)
        loadstring(game:HttpGet('https://scripts.fiercecastle.com/infyield'))()
    end,
 })

 local Keybind = TabMenu:CreateKeybind({
    Name = "Inventory",
    CurrentKeybind = "E",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        Rayfield:Notify({
            Title = "HAHAHAAAHA",
            Content = "You pressed E, I put this here just to annoy you.",
            Duration = 1,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "You bitch.",
                  Callback = function()
                  print("The user tapped Okay!")
               end
            },
         },
         })
    -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
    end,
 })

