local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "Fenx X",
    LoadingTitle = "Fenx X",
    LoadingSubtitle = "by FierceDev",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "FenxDrive"
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
        Key = ""
    }
})

local plr = game.Players.LocalPlayer

local Tab = Window:CreateTab("Drive World", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Drive World")
local DefaultButton = Tab:CreateButton({
    Name = "Default Speed",
    Callback = function(Value)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ufouzzed/m/main/CarShitterHub.lua"))()
    end,
 })

