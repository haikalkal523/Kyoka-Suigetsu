--// 🌙 Kyōka Suigetsu by kall2009 🌙

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")

-- REMOVE OLD GUI
pcall(function()
    CoreGui.KyokaGUI:Destroy()
end)

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KyokaGUI"
ScreenGui.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 220, 0, 170)
Main.Position = UDim2.new(0.05, 0, 0.3, 0)
Main.BackgroundColor3 = Color3.fromRGB(15,15,15)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.Size = UDim2.new(1,0,0,35)
Title.BackgroundTransparency = 1
Title.Text = "🌙 Kyōka Suigetsu 🌙"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextScaled = true

-- FPS BUTTON
local FPS = Instance.new("TextButton")
FPS.Parent = Main
FPS.Size = UDim2.new(0.85,0,0,35)
FPS.Position = UDim2.new(0.075,0,0.3,0)
FPS.Text = "⚡ FPS BOOST"
FPS.BackgroundColor3 = Color3.fromRGB(35,35,35)
FPS.TextColor3 = Color3.new(1,1,1)

FPS.MouseButton1Click:Connect(function()

    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    Lighting.GlobalShadows = false
    Lighting.FogEnd = 1000000

    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v.Enabled = false
        end
    end

    FPS.Text = "✅ FPS ENABLED"
end)

-- POTATO BUTTON
local Potato = Instance.new("TextButton")
Potato.Parent = Main
Potato.Size = UDim2.new(0.85,0,0,35)
Potato.Position = UDim2.new(0.075,0,0.58,0)
Potato.Text = "🥔 POTATO MODE"
Potato.BackgroundColor3 = Color3.fromRGB(35,35,35)
Potato.TextColor3 = Color3.new(1,1,1)

Potato.MouseButton1Click:Connect(function()

    for _,v in pairs(game:GetDescendants()) do

        if v:IsA("Texture") then
            v:Destroy()

        elseif v:IsA("Decal") then
            v.Transparency = 0.5
        end
    end

    Potato.Text = "✅ POTATO ENABLED"
end)

-- CLOSE BUTTON
local Close = Instance.new("TextButton")
Close.Parent = Main
Close.Size = UDim2.new(0,30,0,30)
Close.Position = UDim2.new(1,-35,0,5)
Close.Text = "X"
Close.BackgroundColor3 = Color3.fromRGB(120,0,0)
Close.TextColor3 = Color3.new(1,1,1)

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

print("🌙 Kyōka Suigetsu GUI Loaded 🌙")