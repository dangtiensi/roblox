-- https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dangtiensi/roblox/main/ui.lua"))()
local Window = Library.CreateLib("Menu Cheat - siben.vn", "Synapse")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

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
Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.Position = UDim2.new(0.027, 0, 0.063, 0)
Button.Image = "rbxassetid://11877618750"
Button.Size = UDim2.new(0, 36, 0, 36)
Button.InputBegan:Connect(function(InputObject)
    if InputObject.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
        Library:ToggleUI()
    end
end)