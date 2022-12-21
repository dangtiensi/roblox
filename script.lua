-- https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dangtiensi/roblox/main/ui.lua"))()
local Window = Library.CreateLib("Menu Cheat - siben.vn", "Synapse")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

-- Button Toggle
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ButtonToggle"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Name = "Button"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(74, 99, 135)
Frame.ClipsDescendants = true
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.75, 0)
Frame.Size = UDim2.new(0, 36, 0, 36)
Frame.InputBegan:Connect(function(InputObject)
    if InputObject.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
        Library:ToggleUI()
    end
end)