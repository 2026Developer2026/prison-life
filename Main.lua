local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Prison Life", "Midnight")

-- Main Tab
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Player Modding")

MainSection:NewSlider("Walkspeed", "Changes your walkspeed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpPower", "Changes your jumppower", 250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Guns Section
local GunSection = Main:NewSection("Guns")

GunSection:NewButton("Guns Gamepass / Give All Guns", "Gives you all weapons in the game", function()
    for i, v in pairs(game.Workspace.Prison_FOLDER.Guns:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end)

GunSection:NewButton("Infinite Ammo", "Gives your guns infinite ammo", function()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            setupvalue(v.GunScript.Gun, 1, math.huge)
        end
    end
end)
