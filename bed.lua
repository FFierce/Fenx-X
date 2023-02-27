local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
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
local DefaultButton = Tab:CreateButton({
    Name = "Bedwars",
    Callback = function(Value)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end,
 })

