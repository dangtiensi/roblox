-- https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua
local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/dangtiensi/roblox/main/ui.lua"), true))()
local NoClip = loadstring(game:HttpGet(("https://raw.githubusercontent.com/dangtiensi/roblox/main/noclip.lua"), true))()
local Window = Library.CreateLib("Menu Cheat - siben.vn", "Ocean")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewToggle("Noclip", "go fast and jump high", function(state)
    if state then
        NoClip.On()
    else
        NoClip.Off()
    end
end)

--Jumppower
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
local JumppowerValue = 50

PlayerSection:NewSlider("Jumppower", "JUMP HIGH!!", 350, 50, function(s)
    JumppowerValue = s
end)

PlayerSection:NewButton("Reset Jumppower", "Resets to all defaults", function()
    JumppowerValue = 50
end)

-- PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
--     game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
--     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
-- end)
-- PlayerSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
--     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
-- end)

--Set Value Player
-- while wait() do
--     game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumppowerValue
-- end

-- Button Toggle
local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("ImageLabel")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ButtonToggle"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Button.Name = "Button"
Button.Parent = ScreenGui
Button.BackgroundColor3 = Color3.fromRGB(74, 99, 135)
Button.ClipsDescendants = true
-- Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.Position = UDim2.new(0.090, 0, 0.028, 0)
Button.Image = "http://www.roblox.com/asset/?id=10890838575"
Button.Size = UDim2.new(0, 36, 0, 36)
Button.InputBegan:Connect(function(InputObject)
    if InputObject.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
        Library:ToggleUI()
    end
end)