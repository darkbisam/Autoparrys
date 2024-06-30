while _G.Toggle do
    wait()
    for i, v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
        v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SensatioX Hub | update BETA V1.2")

local VersionTab = Window:NewTab("version")
local SettingsTab = Window:NewTab("settings")

local SettingsSection = SettingsTab:NewSection("open")
SettingsSection:NewButton("Auto Block", "Auto Block", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/AutoBlock"))()
    print("Clicked")
end)
