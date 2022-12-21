-- https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dangtiensi/roblox/main/ui.lua"))()
local Window = Library.CreateLib("Menu Cheat - siben.vn", "Ocean")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        end
        wait(0.21) -- basic optimization
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then Noclip:Disconnect() end
    Clip = true
end

MainSection:NewButton("Back/Front Flip", "Makes you do gymnastics", function()
    local Noclip = nil
    local Clip = nil
    noclip()
end)

MainSection:NewToggle("Super-Human", "go fast and jump high", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- MainSection:NewButton("Infinite Yield", "FE Admin Commands", function()
--     loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
-- end)

--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumppower", "JUMP HIGH!!", 350, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

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
Button.Position = UDim2.new(0.092, 0, 0.03, 0)
Button.Image = "rbxassetid://11877618750"
Button.Size = UDim2.new(0, 36, 0, 36)
Button.InputBegan:Connect(function(InputObject)
    if InputObject.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
        Library:ToggleUI()
    end
end)